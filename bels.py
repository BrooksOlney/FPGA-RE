import numpy as np
import re 

class FrameInfo:
    def __init__(self,jsonData):
        self.baseAddr = int(jsonData['baseaddr'],16)
        self.frames   = jsonData['frames']
        self.offset   = jsonData['offset']
        self.words    = jsonData['words']
    
    def decipher_frameaddr(self):
        bus = (self.baseAddr >> 23) & 0x7
        top = (self.baseAddr >> 22) & 0x1
        row = (self.baseAddr >> 17) & 0x1f
        col = (self.baseAddr >> 7)  & 0x3ff
        mnr = (self.baseAddr >> 0)  & 0x3f
    
        return (bus,top,row,col,mnr)

class BRAM18:
    INITLocs = None

    def __init__(self,jsonData):
        self.x = jsonData['grid_x']
        self.y = jsonData['grid_y']

        bitsData = jsonData['bits']
        self.bramFrameData = FrameInfo(bitsData['BLOCK_RAM'])
        self.clbioFramData = FrameInfo(bitsData['CLB_IO_CLK'])

        self.INIT = np.zeros(dtype=np.uint8, shape=(64,256))
        self.INITP = np.zeros(dtype=np.uint8, shape=(0x8,256))

        if self.INITLocs is None:
            self.parse_segbits()

    def __repr__(self):
        return f'BRAM({hex(self.bramFrameData.baseAddr)} - {self.bramFrameData.decipher_frameaddr()})'

    @classmethod
    def parse_segbits(cls):
        loc = 'FPGA-RE/prjxray-db/artix7/'
        bram_file = 'segbits_bram_r.block_ram.db'
        clbio_file = 'segbits_bram_r.db'
        
        with open(loc+bram_file,'r') as bfile:
            bramConfig = bfile.read().splitlines()
        
        with open(loc+clbio_file,'r') as clbfile:
            bramCLB = clbfile.read().splitlines()

        bramConfigSplt = [re.split(r'\s*[\[\]]\s*|[_]|[.]', line) for line in bramConfig]
        bramCLBSplt    = [re.split(r'\s*[\[\]]\s*|[_]|[.]', line) for line in bramCLB]

        cls.INITLocs = np.zeros(dtype=np.uint16, shape=(64,256,2))

        cls.INITPLocs = np.zeros(dtype=np.uint16, shape=(0x8,256,2))

        for line in bramConfigSplt:
            blk = int(line[-4],16)
            initBit,frame,bit = [int(i) for i in line[-3:]]

            if 'INIT' in line:
                cls.INITLocs[blk,initBit,0] = frame
                cls.INITLocs[blk,initBit,1] = bit
            elif 'INITP' in line:
                cls.INITPLocs[blk,initBit,0] = frame
                cls.INITPLocs[blk,initBit,1] = bit

    def extract_from_tiles(self,tiles):
        _,top,row,col,mnr = self.bramFrameData.decipher_frameaddr()
        offset, words = self.bramFrameData.offset, self.bramFrameData.words

        toUnpack = tiles[top][row][col][:,offset:offset+words]

        unpacked = np.unpackbits(toUnpack.view(np.uint8),axis=1)

        for i in range(64):
            self.INIT[i] = unpacked[self.INITLocs[i,:,0],self.INITLocs[i,:,1]]

        for i in range(8):
            self.INITP[i] = unpacked[self.INITPLocs[i,:,0],self.INITPLocs[i,:,1]]