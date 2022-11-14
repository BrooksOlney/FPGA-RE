
import json
import struct
import numpy as np
from zlib import crc32
import enum
from time import time
from bels import BRAM36
from models import *

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

        # alutBits = self.load_segbits('prjxray-db/artix7/segbits_clblm_r.db')
        # blk,top,row,col,off = decipher_frameaddr(0x00001b80)
        # offset = 28

        # contents = 0
        # contents = [0] * 64
        # for i, (frame, bit) in enumerate(alutBits):
        #     vals = gridView[top][row][col][frame][offset:offset+2]
        #     rawBits = np.unpackbits(vals.view(np.uint8),bitorder='little')
        #     # contents |= ((test & (2**bit)) >> bit) << i
        #     # contents |= (int(test3[bit]) << i)
        #     # x = int.from_bytes(vals.tobytes(),'little')
        #     # contents |= ((x & 2**bit) >> bit) << i
        #     contents[i] = rawBits[bit]

        # contents= np.packbits(contents,bitorder='little').view(np.uint64)[0]
        # print('')

    def load_bram_tiles(self,filename):
        
        BRAMs = []
    
        with open(filename,'r') as tfile:
            tilegrid = json.load(tfile)
            for bram in [i for i in tilegrid.keys() if 'BRAM_L' in i or "BRAM_R" in i]:
                BRAMs.append(BRAM36(tilegrid[bram]))

        self.BRAMs = BRAMs

        for BRAM in self.BRAMs:
            BRAM.extract_from_tiles(self.BRAMgrid,self.CLBgrid)


    def load_segbits(self,filename):
        cont = open(filename, 'r').read().splitlines()

        splt = [c.split(' ') for c in cont] 

        slicemALUT = [list(map(int, s[-1].split('_'))) for s in splt if 'SLICEM_X0.ALUT.INIT' in s[0]]
        return slicemALUT

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

def decipher_frameaddr(baseAddr):
    bus = (baseAddr >> 23) & 0x7
    top = (baseAddr >> 22) & 0x1
    row = (baseAddr >> 17) & 0x1f
    col = (baseAddr >> 7)  & 0x3ff
    mnr = (baseAddr >> 0)  & 0x3f

    return (bus,top,row,col,mnr)

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
    
    enabledBrams = [bram for bram in multBits.BRAMs if (bram.ramb16_configs[0]['IN_USE'] or bram.ramb16_configs[1]['IN_USE']) and not bram.IS_FIFO]
    rws = [f'READ_WIDTH_A_{i}' for i in [1,2,4,9,18]]
    bramBins = [[] for _ in range(5)]
    
    for bram in enabledBrams:
        for i,rw in enumerate(rws):
            if bram.ramb16_configs[0][rw] and bram.ramb16_configs[0]['IN_USE']:
                bramBins[i].append(bram)
                break
            elif bram.ramb16_configs[1][rw] and bram.ramb16_configs[1]['IN_USE']:
                bramBins[i].append(bram)
                break
    
    contentShapes = set([b.content.shape for b in enabledBrams])
    contentShapes = {shape: [] for shape in contentShapes}
    for bram in enabledBrams:
        contentShapes[bram.content.shape].append(bram)

    fifos = [bram for bram in enabledBrams if np.max(bram.INIT) == 0 and np.max(bram.INITP) == 0]
    # stackedBrams = [[bram for bram in bramBin if bram.ramb36_configs['EN_SYN'] ] for bramBin in bramBins]
    

    slices = [12,7,11,6,10,1,8,13,9,4,3,2,5,0]
    l4_brams_ordered = [contentShapes[(2304,9)][i] for i in slices] + [contentShapes[(2304,2)][0]] 

    l0_brams = enabledBrams[5]
    conts = l0_brams.content
    # contsTmp = conts[:,:np.where(~conts.any(axis=0))[0][0]]


    e = time() - s
    print('')