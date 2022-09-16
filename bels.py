import numpy as np
import re 

class FrameInfo:
    def __init__(self,jsonData):
        self.baseAddr = int(jsonData['baseaddr'],16)
        self.frames   = jsonData['frames']
        self.offset   = jsonData['offset']
        self.words    = jsonData['words']
    
    def decipher_frameaddr(addr):
        bus = (addr >> 23) & 0x7
        top = (addr >> 22) & 0x1
        row = (addr >> 17) & 0x1f
        col = (addr >> 7)  & 0x3ff
        mnr = (addr >> 0)  & 0x3f
    
        return (bus,top,row,col,mnr)

class BRAM18:
    INIT = None

    def __init__(self,jsonData):
        self.x = jsonData['grid_x']
        self.y = jsonData['grid_y']

        bitsData = jsonData['bits']
        self.bramFrameData = FrameInfo(bitsData['BLOCK_RAM'])
        self.clbioFramData = FrameInfo(bitsData['CLB_IO_CLK'])

        if self.INIT is None:
            # self.INIT = np.zeros(dtype=np.uint8, shape=(0x3F,256))
            # self.INITLocs = np.zeros(dtype=np.uint16, shape=(0x3F,256,2))

            # self.INITP = np.zeros(dtype=np.uint8, shape=(0x8,256))
            # self.INITPLocs = np.zeros(dtype=np.uint16, shape=(0x8,256))

            self.parse_segbits()

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

        cls.INIT = np.zeros(dtype=np.uint8, shape=(0x3F,256))
        cls.INITLocs = np.zeros(dtype=np.uint16, shape=(0x3F,256,2))

        cls.INITP = np.zeros(dtype=np.uint8, shape=(0x8,256))
        cls.INITPLocs = np.zeros(dtype=np.uint16, shape=(0x8,256))

        for line in bramConfigSplt:
            if 'INIT_' in line:
                cls.INITLocs[line[-4],line[-3],0] = line[-2]
                cls.INITLocs[line[-4],line[-3],1] = line[-1]
            elif 'INITP_' in line:
                cls.INITPLocs[line[-4],line[-3],0] = line[-2]
                cls.INITPLocs[line[-4],line[-3],1] = line[-1]