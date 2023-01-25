
import json
import struct
import numpy as np
from zlib import crc32
import enum
from time import time
from brams import BRAM36
from bels import bel_generator, set_bel_configs
from clbs import CLBLM,CLBLL
from models import *
from bram_clustering import kmeans_clustering
from db_loader import prjXrayDB
import multiprocessing as mp
from multiprocessing.dummy import Pool as Threadpool
from functools import partial

class configPacket:
    # just a container for the packets
    def __init__(self,pktType,opcode,addr,data):
        self.pktType    = pktType
        self.opcode     = self.Opcodes(opcode)
        self.addr       = self.Address(addr)
        self.data       = data
        
    def __repr__(self):
        if self.opcode == 'NOP':
            return 'NOP'
        else:
            return f'packet({self.pktType},{self.opcode},{self.addr},{self.data})'
    
    # documented configuration registers 
    class Address(enum.Enum):
        CRC = 0
        FAR = 1
        FDR = 2
        FDR0 = 3
        CMD = 4
        CTL0 = 5
        MASK = 6
        STAT = 7
        LOUT = 8
        COR0 = 9
        MFWR = 10
        CBC = 11
        IDCODE = 12
        AXSS = 13
        COR1 = 14
        WBSTAR = 16
        TIMER = 17
        RBCRC_SW = 19
        BOOTSTS = 22
        CTL1 = 24
        BSPI = 31
        
    # documented opcodes
    class Opcodes(enum.Enum):
        NOP = 0
        read = 1
        write = 2
    
class Bitstream:

    def __init__(self, filename):

        if filename.endswith('.bit'):
            self._raw_bytes = np.fromfile(filename, dtype=np.uint8)
        elif filename.endswith('.bin'):
            self._raw_bytes = None

        self.configBitstream = None
        self.decodedPackets = None

    def parse_bits(self):
        
        decodedPackets = []
        
        # word occurs after the main file header
        sync = 0xFFFFFFFFFFFFFFFFAA995566
        syncWord = sync.to_bytes(12, 'big')
        rawBytes = self._raw_bytes.tobytes()
        syncIdx = rawBytes.find(syncWord)
        
        busDesc = rawBytes[syncIdx-8:syncIdx]
        busWidthSync = int.from_bytes(busDesc[:4],'big')
        busWidthDetect = int.from_bytes(busDesc[4:], 'big')
        
        self.header = self._raw_bytes[:rawBytes.find(syncWord)]
        rem = self._raw_bytes[rawBytes.find(syncWord) + 12:]
        configPackets = rem.reshape(-1,4).view(np.uint32).byteswap().flatten()
        # hexPackets = [hex(pkt)[2:].zfill(8) for pkt in configPackets]
        
        _configPackets = configPackets.tolist()
        self.crcBytes = bytes()

        while _configPackets:
            pkt = _configPackets.pop(0)
            pktType = pkt >> 29
            
            if pktType == 1:
                opcode = (pkt >> 27) & 0x3
                addr   = (pkt >> 13) & 0x1F
                pld    = pkt & 0x3FF
                
                if opcode == configPacket.Opcodes.NOP.value:
                    decodedPackets.append(configPacket(pktType,opcode,addr,[pld]))
                    
                elif opcode == 1 or opcode == 2:

                    if pld > 0:
                        payload, _configPackets = np.array(_configPackets[0:pld],dtype=np.uint32), _configPackets[pld:]
                    
                    else:
                        t2Pkt = _configPackets.pop(0)

                        if t2Pkt >> 29 != 2:
                            print("type 2 packet required")
                            break
                        else:
                            pld = t2Pkt & 0x7FFFFFF
                            opcode = (t2Pkt >> 27) & 0x3

                        payload, _configPackets = np.array(_configPackets[0:pld],dtype=np.uint32), _configPackets[pld:]

                    if pld > 1000:
                        self.configBitstream = payload
                    
                    decodedPackets.append(configPacket(pktType,opcode,addr,payload))
                    
            else:
                test = struct.unpack("<I", struct.pack(">I", pkt))[0]
            
        self.decodedPackets = decodedPackets


    def analyze_configuration(self):

        bits = np.array(self.configBitstream)
        frames = bits.reshape(-1,101)

        gcr = 'global_clock_regions'
        cbs = 'configuration_buses'
        cols = 'configuration_columns'
        clb = 'CLB_IO_CLK'
        bram = 'BLOCK_RAM'
        numFrames = 0
        rowCols = []
        clbrows = []
        bramrows = []
        btCLBs = []
        btBRAMs = []

        for key in self.tileDef[gcr]:
            for row in self.tileDef[gcr][key]['rows']:
                for col in self.tileDef[gcr][key]['rows'][row][cbs][clb][cols]:
                    numFrames += self.tileDef[gcr][key]['rows'][row][cbs][clb][cols][col]['frame_count']
                    rowCols.append(self.tileDef[gcr][key]['rows'][row][cbs][clb][cols][col]['frame_count'])
                
                clbrows.append(rowCols)
                rowCols = []
                
                for col in self.tileDef[gcr][key]['rows'][row][cbs][bram][cols]:
                    numFrames += self.tileDef[gcr][key]['rows'][row][cbs][bram][cols][col]['frame_count']
                    rowCols.append(self.tileDef[gcr][key]['rows'][row][cbs][bram][cols][col]['frame_count'])
                        
                bramrows.append(rowCols)
                rowCols = []

            
            btCLBs.append(clbrows)
            btBRAMs.append(bramrows)
            clbrows = []
            bramrows = []

        rng = 0
        gridView = []
        gridrows = []
        
        for _bt in btCLBs:
            for row in _bt:
                for col in row:
                    rowCols.append(frames[rng:rng+col])
                    rng += col
                
                gridrows.append(rowCols)
                rng += 2
                rowCols = []

            gridView.append(gridrows)
            gridrows = []
        

        bramgridView = []
        for _bt in btBRAMs:
            for row in _bt:
                for col in row:
                    rowCols.append(frames[rng:rng+col])
                    rng += col
                
                gridrows.append(rowCols)
                rng += 2
                rowCols = []

            bramgridView.append(gridrows)
            gridrows = []

        self.CLBgrid = gridView
        self.BRAMgrid = bramgridView

        self.grid = [gridView,bramgridView]
        
        self.db = prjXrayDB(dbPath='prjxray-db/',device='artix7',part='xc7a100t')
        set_bel_configs(self.db.belSegbits,self.db.bel_ppips)

    def load_bram_tiles(self,filename):
        
        def thread_func(item):
            belType = tilegrid[item]['type']
            return bel_generator(item,belType,tilegrid[item],self.db.belSegbits[belType],self.db.bel_ppips[belType],self.grid)

        BRAMs = []
        INTs = []
        CLBLMs = []
        CLBLLs = []
    
        elems = ['BRAM', 'INT']
        allTypes = [el+'_L' for el in elems] + [el+"_R" for el in elems]

        with open(filename,'r') as tfile:
            tilegrid = json.load(tfile)
            # for bram in [i for i in tilegrid.keys() if 'BRAM_L' in i or "BRAM_R" in i]:
            #     BRAMs.append(BRAM36(tilegrid[bram]))

            
        filt = [key for key in tilegrid.keys() if tilegrid[key]['type'] in allTypes]
        with mp.Pool(mp.cpu_count()//2) as p:
            procFunc = partial(proc_func,tilegrid=tilegrid,config=self.db.belSegbits,ppips=self.db.bel_ppips,grid=self.grid)
            test = list(p.map(procFunc,filt))
        
        # test = list(map(thread_func,filt))

        # for item in filt:
            # if "BRAM_L" in item or "BRAM_R" in item:
            #     # BRAMs.append(BRAM36(tilegrid[item]))
            #     belType = tilegrid[item]['type']
            #     BRAMs.append(bel_generator(item,belType,tilegrid[item],self.db.belSegbits[belType],self.db.bel_ppips[belType],self.grid))

            # elif "INT" in item:
            #     belType = tilegrid[item]['type']
            #     INTs.append(bel_generator(item,belType,tilegrid[item],self.db.belSegbits[belType],self.db.bel_ppips[belType],self.grid))
            # elif "CLBLM" in item:
                #     CLBLMs.append(CLBLM(tilegrid[item]))

                # elif "CLBLL" in item:
                #     CLBLLs.append(CLBLL(tilegrid[item]))

                # elif ""
        self.INTs = [t for t in test if "INT" in t.name]
        self.BRAMs = [t for t in test if "BRAM" in t.name]

        # for BRAM in self.BRAMs:
        #     BRAM.extract_from_tiles(self.BRAMgrid,self.CLBgrid)

        # for CLB in CLBLMs:
        #     CLB.extract_from_tiles(self.CLBgrid)

        # for CLB in CLBLLs:
        #     CLB.extract_from_tiles(self.CLBgrid)

    def load_tile_grid(self, filename):
        self.tileDef = json.load(open(filename,'r'))

    def compute_crc(self):
        crc = 0    
        crc32poly = 0x82F63B78 << 1

        for pkt in self.decodedPackets[8:30]:
            if pkt.opcode != configPacket.Opcodes.write:
                continue

            for val in ((pkt.addr.value << 32) | pkt.data):
                for i in range(0,37):
                    if ((val ^ crc) & 1):
                        crc ^= crc32poly
                    
                    val >>= 1
                    crc >>= 1

        return crc

def proc_func(item,tilegrid,config,ppips,grid):
    belType = tilegrid[item]['type']
    return bel_generator(item,belType,tilegrid[item],config[belType],ppips[belType],grid)

def traverse_from_bram(bram,brams,ints,int_conn_map):
    intMap = {i.name: i for i in ints if len(i.conns)}
    bramMap = {(b.x,b.y): b for b in brams}
    
    # directionMap = {'NN': }
    allSrcs = list(set([net[0].split('.')[1] for net in ints[0].configs[0]]))
    allDsts = list(set([net[0].split('.')[0] for net in ints[0].configs[0]]))
    allSrcs.sort()
    allDsts.sort()

    allSrcs2 = list(set([net[0].split('.')[1] for net in ints[0].configs[1]]))
    allDsts2 = list(set([net[0].split('.')[0] for net in ints[0].configs[1]]))
    allSrcs2.sort()
    allDsts2.sort()


def bin_brams(brams,ints):

    def get_neighbors(i,net):
        neighbors = []
        
        # src = i.dsts[net]
        if net not in i.connDirs.keys():
            return neighbors
        src = i.connDirs[net]

        for s in src:
            outsideInt = i.connMap[s]
            internalDst = i.connDirs[s]
        
            for dst in internalDst:
                if dst == net:
                    continue
                externalDsts = i.connMap[dst]

                if isinstance(externalDsts,list):
                    neighbors.extend(externalDsts)
                else:
                    neighbors.append(externalDsts)

            # for dst in outsideInt:
            if isinstance(outsideInt,list):
                neighbors.extend(outsideInt)
            else:
                neighbors.append(outsideInt)
        
        fromConn = i.connMap[net]
        if isinstance(fromConn,str):
            fromConn = [fromConn]

        neighbors += fromConn
        return neighbors

    intMap = {i.name: i for i in ints if len(i.conns)}
    bramMap = {b.name: b for b in brams}
    bramSet = set(brams)

    clkEnableSDP = ['IMUX_L19', 'IMUX19']
    clkEnableTDP = ['IMUX_L35','IMUX35']

    intIdx = 2
    bramBins = []

    while bramSet:
        # get new BRAM, remove from set
        bram = list(bramSet)[0]
        bramSet -= {bram}
        bramBin = set()
        
        # get key for BRAM->INT tile
        linkKey = f'INT_{"R" if bram.LR else "L"}_X{bram.x}Y{bram.y+intIdx}'
        bramEnINT = intMap[linkKey]
        
        # clk enable comes from different net for SDP/TDP, and L/R BRAMs
        ceKey = clkEnableSDP[bram.LR] if bram.SDP or not bram.ramb18_configs[0]['DOB_REG'] else clkEnableTDP[bram.LR]
        path = get_neighbors(bramEnINT,ceKey)
        visited = set()
        exclude = False
        if bram.name == "BRAM_L_X6Y60":
            print('')
        while path:
            el = path.pop(0)
            if el in list(visited):
                continue
            else:
                visited.add(el)
            if el == '':
                continue
            tile,node = el.split('/')
            if "CLBLL_IMUX" in node or "CLBLM_IMUX" in node:
                exclude = True
                break
            if "BRAM_L" in tile or "BRAM_R" in tile:
                if tile in bramMap.keys():
                    b = bramMap[tile]
                    bramBin.add(b)
                    bramSet -= {b}
            elif "INT_L" in tile or "INT_R" in tile:
                if tile in intMap.keys():
                    path += get_neighbors(intMap[tile],node)
        
        if not exclude:
            bramBins.append(list(bramBin))

    return bramBins

if __name__ == "__main__":
    s = time()
    multBits = Bitstream("Bitstreams/tfc-w1a1.bit")
    multBits.parse_bits()

    multBits.load_tile_grid("prjxray-db/artix7/xc7a100tftg256-2/part.json")
    # multBits.load_tile_grid("prjxray-db/artix7/xc7a100t/tilegrid.json")
 
    multBits.analyze_configuration()
    multBits.load_bram_tiles('prjxray-db/artix7/xc7a100t/tilegrid.json')

    modelWeights = load_onnx_model('Models/cnv-w1a1.onnx')
    tfc_w1a1_onnx = load_onnx_model('../finn-examples/build/bnn-pynq/models/tfc-w1a1.onnx')
    
    enabledBrams = [bram for bram in multBits.BRAMs if (bram.ramb18_configs[0]['IN_USE'] or bram.ramb18_configs[1]['IN_USE']) and not bram.IS_FIFO]
    
    contentShapes = set([b.content.shape for b in enabledBrams])
    contentShapes = {shape: [] for shape in contentShapes}
    for bram in enabledBrams:
        contentShapes[bram.content.shape].append(bram)
        

    fifos = [bram for bram in enabledBrams if np.max(bram.INIT) == 0 and np.max(bram.INITP) == 0]
    # stackedBrams = [[bram for bram in bramBin if bram.ramb36_configs['EN_SYN'] ] for bramBin in bramBins]
    
    """
        L0: (36,48)
        L1: (36,72) + (36,16)
        L2: (144,72) + (144,8)
        L3: (288,72) + (288,8)
        L4: (2304,9) + (2304,2)
        L5: (18432,1) + (256,9)
        L6: (32768,1) x 4
        L7: (32768,1) x 8
        L8: (1024,5)
    """
    s2 = time()
    with open('int_conn_map5.json','r') as jsonFile:
        jsonData = json.load(jsonFile)
        for i in multBits.INTs:
            i.connMap = jsonData[i.name]

    del jsonData
    e = time() - s
    e2 = time() - s2
    enabledInts = [i for i in multBits.INTs if len(i.conns)]
    s = time()
    bramBins = bin_brams(enabledBrams,enabledInts)
    e3 = time() - s
    sizes = []
    # for bramBin in bramBins:
    #     totalSize = sum([b.content.size for b in bramBin])
    #     sizes.append(totalSize)

    # bramMap = {(bram.x,bram.y):bram for bram in enabledBrams}
    # mva1 = [(38,0) ,(38,10),(44,0) ,(44,5) ,(38,5) ,(6,5)  ,(6,15) ,(44,15),(44,10),(44,20),(38,15),(38,20),(6,0)  ,(6,10) ,(6,20) ]
    # mva2 = [(38,40),(38,35),(38,45),(44,40),(44,35),(44,25),(44,30),(44,45)]
    # mva3 = [(38,85),(44,80),(38,75),(44,70),(51,80),(51,85),(44,90),(51,90)]
    # mva4 = [(44,65),(6,90) ,(38,80),(6,85) ,(38,70),(6,65) ,(38,60),(44,75),(38,65),(6,75) ,(6,70) ,(6,65) ,(6,80) ,(6,55) ,(38,55)]
    # mva5 = [(44,125),(38,130),(6,160) ,(44,110),(38,140),(51,115) ,(6,135) ,(44,145),(38,155),(6,170) ,(6,150) ,(51,135),(6,165) ,(44,115),(6,145) ,(44,135),(38,155),(38,145),(38,165),(38,95) ,(38,160),(44,140),(51,125),(44,120),(38,150),(44,130),(51,110),(6,140) ,(51,130),(51,120),(6,155) ,(6,130) ]
    # mva6 = [(51,95) ,(51,105),(44,100),(51,100)]
    # mva7 = [(6,120) ,(38,125),(6,105) ,(6,125) ,(38,115),(6,110) ,(6,100) ,(38,120)]
    # mva0 = [bramMap[(6,45)]]
    # mva1 = [bramMap[mva] for mva in mva1]
    # mva2 = [bramMap[mva] for mva in mva2]
    # mva3 = [bramMap[mva] for mva in mva3]
    # mva4 = [bramMap[mva] for mva in mva4]
    # mva5 = [bramMap[mva] for mva in mva5]
    # mva6 = [bramMap[mva] for mva in mva6]
    # mva7 = [bramMap[mva] for mva in mva7]
    # mva8 = [bramMap[(6,30)]]

    bramMap = {b.name : b for b in enabledBrams}
    tfc_w1a1_brams = [["BRAM_L_X38Y65","BRAM_L_X38Y75","BRAM_L_X38Y50","BRAM_L_X38Y60","BRAM_L_X6Y60","BRAM_L_X6Y65","BRAM_L_X38Y55","BRAM_L_X38Y70","BRAM_L_X38Y80","BRAM_L_X6Y75","BRAM_L_X6Y70"],
                        ['BRAM_L_X6Y80'],
                        ['BRAM_L_X6Y95'],
                        ['BRAM_L_X38Y90','BRAM_L_X38Y85']]

    # cnvw1a1_layers = [mva0,mva1,mva2,mva3,mva4,mva5,mva6,mva7,mva8]
    tfc_w1a1 = [[bramMap[n] for n in l] for l in tfc_w1a1_brams]
    bramsOrdered = [[bramMap[b].content for b in layer] for layer in tfc_w1a1_brams]
    np.save('tfc-w1a1-brams.npy',bramsOrdered)
    # test = np.load('tfc-w1a1-brams.npy',allow_pickle=True)

    deets = []
    for layer in tfc_w1a1:
        depth = layer[0].content.shape[0]
        readwidth = sum([b.content.shape[1] for b in layer])
        totSize = depth*readwidth
        deets.append((depth,readwidth,totSize,len(layer)))

    l1 = tfc_w1a1_onnx['MatMul_0_param0']
    l1 = (l1.astype(np.uint8) + 1) // 2

    l2 = tfc_w1a1_onnx['MatMul_1_param0']
    l2 = (l2.astype(np.uint8) + 1) // 2

    test = l1[:49,:16]
    test2 = l1[49:49+49,:16]
    row1 = np.hstack([b.content[0] for b in tfc_w1a1[0]])
    row2 = np.hstack([b.content[1] for b in tfc_w1a1[0]])

    bram0N0 = tfc_w1a1[0][0].content[:16,:49].flatten()
    n0Weights = l1[:,0]

    print('')