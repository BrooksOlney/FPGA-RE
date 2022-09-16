import numpy as np
import re 

class FrameInfo:
    def __init__(self,jsonData):
        self.baseAddr = int(jsonData['baseaddr'],16)
        self.frames   = jsonData['frames']
        self.offset   = jsonData['offset']
        self.words    = jsonData['words']
        

class BRAM18:
    def __init__(self,jsonData):
        self.x = jsonData['grid_x']
        self.y = jsonData['grid_y']

        bitsData = jsonData['bits']
        self.bramFrameData = FrameInfo(bitsData['BLOCK_RAM'])
        self.clbioFramData = FrameInfo(bitsData['CLB_IO_CLK'])

        self.INIT = np.zeros(dtype=np.uint8, shape=(0x3F,256))
        self.INITLocs = np.zeros(dtype=np.uint16, shape=(0x3F,256,2))

        self.INITP = np.zeros(dtype=np.uint8, shape=(0x8,256))
        self.INITPLocs = np.zeros(dtype=np.uint16, shape=(0x8,256))

        self.parse_segbits()

    def parse_segbits(self):
        loc = 'FPGA-RE/prjxray-db/artix7/'
        bram_file = 'segbits_bram_r.block_ram.db'
        clbio_file = 'segbits_bram_r.db'
        
        with open(loc+bram_file,'r') as bfile:
            bramConfig = bfile.read().splitlines()
        
        with open(loc+clbio_file,'r') as clbfile:
            bramCLB = clbfile.read().splitlines()

        bramConfigSplt = [re.split(r'\s*[\[\]]\s*|[_]|[.]', line) for line in bramConfig]
        bramCLBSplt    = [re.split(r'\s*[\[\]]\s*|[_]|[.]', line) for line in bramCLB]

        for line in bramConfigSplt:
            if 'INIT_' in line:
                self.INITLocs[line[-4],line[-3],0] = line[-2]
                self.INITLocs[line[-4],line[-3],1] = line[-1]
            elif 'INITP_' in line:
                self.INITPLocs[line[-4],line[-3],0] = line[-2]
                self.INITPLocs[line[-4],line[-3],1] = line[-1]