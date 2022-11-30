
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


def decipher_frameaddr(baseAddr):
    bus = (baseAddr >> 23) & 0x7
    top = (baseAddr >> 22) & 0x1
    row = (baseAddr >> 17) & 0x1f
    col = (baseAddr >> 7)  & 0x3ff
    mnr = (baseAddr >> 0)  & 0x3f

    return (bus,top,row,col,mnr)

# def convert_content_to_matrix(content,PE,SIMD,N):

if __name__ == "__main__":
    s = time()
    multBits = Bitstream("Bitstreams/cnv_w1a1_fifo.bit")
    multBits.parse_bits()

    multBits.load_tile_grid("prjxray-db/artix7/xc7a100tftg256-2/part.json")
    # multBits.load_tile_grid("prjxray-db/artix7/xc7a100t/tilegrid.json")
 
    multBits.analyze_configuration()
    multBits.load_bram_tiles('prjxray-db/artix7/xc7a100t/tilegrid.json')

    modelWeights = load_onnx_model('../finn-examples/build/bnn-pynq/models/cnv-w1a1.onnx')
    tfc_w1a1 = load_onnx_model('../finn-examples/build/bnn-pynq/models/tfc-w1a1.onnx')
    
    enabledBrams = [bram for bram in multBits.BRAMs if (bram.ramb18_configs[0]['IN_USE'] or bram.ramb18_configs[1]['IN_USE']) and not bram.IS_FIFO]
    
    enabledBrams[4].content = enabledBrams[4].content[:36]
    
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

    # slices = [12,7,11,6,10,1,8,13,9,4,3,2,5,0]
    # # l4_brams_ordered = [contentShapes[(2304,9)][i] for i in slices] + [contentShapes[(2304,2)][0]] 

    # l2slices = [37,36,38,67,66,64,65,68]
    # l2_brams_ordered = [enabledBrams[l2] for l2 in l2slices]

    # l6_slices = [86,88,74,87]
    # l6_brams_ordered = [enabledBrams[l6] for l6 in l6_slices]

    # l7_slices = [20,50,17,21,48,18,16,49]
    # l7_brams_ordered = [enabledBrams[l7] for l7 in l7_slices]

    # l0_brams = enabledBrams[5]
    # conts = l0_brams.content
    # # contsTmp = conts[:,:np.where(~conts.any(axis=0))[0][0]]

    # bramDict = {f'{(bram.x,bram.y)}':bram for bram in enabledBrams}
    # x_dict = {19: 0, 94: 1, 108: 2, 128: 3}
    # cols = np.arange(5,205,5)
    # breaks = np.arange(5,5*8,5)
    # for i in breaks:
    #     cols[i:] += 1
    # y_dict = {col: i for i,col in enumerate(cols)}

    # xdata = np.array([[bram.x,bram.y,*bram.content.shape,bram.content.size/36864] for bram in enabledBrams])
    # xdata = np.empty((len(enabledBrams),4))
    # for i,bram in enumerate(enabledBrams):
    #     ard = int(bram.ramb36_configs['CASCOUT_ARD_ACTIVE'] or sum(bram.ADDRARDADDRU) != 0 or sum(bram.ADDRARDADDRL) != 0)
    #     bwr = int(bram.ramb36_configs['CASCOUT_BWR_ACTIVE'] or sum(bram.ADDRBWRADDRU) != 0 or sum(bram.ADDRBWRADDRL) != 0)
        
    #     xdata[i] = (x_dict[bram.x],y_dict[bram.y],
    #                 bram.content.shape[0], 
    #                 1 - (np.count_nonzero(bram.content) / (36864 if bram.SYN and np.max(bram.INITP) else 32768 if bram.SYN else 18432 if np.max(bram.INITP) else 16384)))
    #                 # bram.SYN,
    #                 # sum([*bram.ADDRARDADDRL,*bram.ADDRARDADDRU]),
    #                 # sum([*bram.ADDRBWRADDRL,*bram.ADDRBWRADDRU]))
    
    # # kmeans_clustering(xdata, enabledBrams)

    # bins = []
    # groups = [1024,2304,256,18432,144,36,288,512]
            
    # for group in groups:
    #     brambin = []
    #     for key,val in contentShapes.items():
    #         if key[0] == group:
    #             brambin.extend(val)

    #     bins.append(brambin)

    # plt.show()


    e = time() - s
    print('')