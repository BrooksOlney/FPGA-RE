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

class RAMB18:
    def __init__(self):
        self.DOA_REG = 0
        self.DOB_REG = 0
        self.FIFO_MODE = 0
        self.IN_USE = 0
        self.DELAYED_WRITE_PERF = 0
        self.READ_WIDTH_A = 0
        self.READ_WIDTH_B = 0
        self.RSTREG_PRIORITY_A = 0
        self.RSTREG_PRIORITY_B = 0
        self.SDP_READ_WIDTH = 0
        self.SDP_WRITE_WIDTH = 0
        self.WRITE_MODE_A_NO_CHANGE = 0
        self.WRITE_MODE_A_READ_FIRST = 0
        self.WRITE_MODE_B_NO_CHANGE = 0
        self.WRITE_MODE_B_READ_FIRST = 0
        self.WRITE_WIDTH_A = 0
        self.WRITE_WIDTH_B = 0
        self.ZINIT_A = np.zeros(18,np.uint8)
        self.ZINIT_B = np.zeros(18,np.uint8)
        self.ZINV_CLKARDCLK = 0
        self.ZINV_CLKBWRCLK = 0
        self.ZINV_ENARDEN = 0
        self.ZINV_ENBWREN = 0
        self.ZINV_REGCLKARDRCLK = 0
        self.ZINV_REGCLKB = 0
        self.ZINV_RSTRAMARSTRAM = 0
        self.ZINV_RSTRAMB = 0
        self.ZINV_RSTREGARSTREG = 0
        self.ZINV_RSTREGB = 0
        self.ZSRVAL_A = np.zeros(18,np.uint8)
        self.ZSRVAL_B = np.zeros(18,np.uint8)

class BRAM36:
    INITLocs = None

    def __init__(self,jsonData):
        self.x = jsonData['grid_x']
        self.y = jsonData['grid_y']

        bitsData = jsonData['bits']
        self.bramFrameData  = FrameInfo(bitsData['BLOCK_RAM'])
        self.clbioFrameData = FrameInfo(bitsData['CLB_IO_CLK'])

        self.INIT = np.zeros(dtype=np.uint8, shape=(2,64,256))
        self.INITP = np.zeros(dtype=np.uint8, shape=(2,0x8,256))

        self.RAMB18s = [RAMB18(),RAMB18()]

        if self.INITLocs is None:
            self.parse_segbits()

    def __repr__(self):
        return f'BRAM({hex(self.bramFrameData.baseAddr)} - {(self.x,self.y)})'

    @classmethod
    def parse_segbits(cls):
        loc = 'FPGA-RE/prjxray-db/artix7/'
        bram_file = 'segbits_bram_r.block_ram.db'
        clbio_file = 'segbits_bram_r.db'
        
        with open(loc+bram_file,'r') as bfile:
            bramConfig = bfile.read().splitlines()
        
        with open(loc+clbio_file,'r') as clbfile:
            bramCLB = clbfile.read().splitlines()

        bramConfigSplt = [re.split(r'\s*[\[\]]\s*|[_]|[.]|[ ]', line) for line in bramConfig]
        # bramCLBSplt    = [re.split(r'\s*[\[\]]\s*|[_]|[.]|[ ]', line) for line in bramCLB]
        bramCLBSplt    = [re.split(r'[ ]', line) for line in bramCLB]

        cls.INITLocs = np.zeros(dtype=np.uint16, shape=(2,64,256,2))
        cls.INITPLocs = np.zeros(dtype=np.uint16, shape=(2,0x8,256,2))

        for line in bramConfigSplt:
            blk = int(line[-4],16)
            initBit,frame,bit = [int(i) for i in line[-3:]]
            y = int(line[3][1])

            if 'INIT' in line:
                cls.INITLocs[y,blk,initBit,0] = frame
                cls.INITLocs[y,blk,initBit,1] = bit
            elif 'INITP' in line:
                cls.INITPLocs[y,blk,initBit,0] = frame
                cls.INITPLocs[y,blk,initBit,1] = bit

        bramConfigs = {}
        ramb18configs = [{},{}]
        configs = []
        for line in bramCLBSplt:
            # if "RAMB18" in line[2]:
                # idx = int(line[3][1])
                # ramb18configs[idx][''.join(line[5:6])] = line[7:]
            nets = line[1:]
            numeric = []
            truth = []
            
            for net in nets:
                if "!" in net:
                    truth.append(False)
                else:
                    truth.append(True)
                    
                numeric.append(tuple(map(int,net.replace('!','').split('_'))))
                    
            configs.append((line[0], numeric, truth))            
        
        cls.configs = configs

    def extract_from_tiles(self,BRAMtiles,CLBtiles):
        _,top,row,col,mnr = self.bramFrameData.decipher_frameaddr()
        offset, words = self.bramFrameData.offset, self.bramFrameData.words
        toUnpack = np.ascontiguousarray(BRAMtiles[top][row][col][:,offset:offset+words])

        unpacked = np.unpackbits(toUnpack.view(np.uint8),axis=1,bitorder='little')

        for i in range(64):
            self.INIT[:,i] = unpacked[self.INITLocs[:,i,:,0],self.INITLocs[:,i,:,1]]

        for i in range(8):
            self.INITP[:,i] = unpacked[self.INITPLocs[:,i,:,0],self.INITPLocs[:,i,:,1]]

        clbDims = self.clbioFrameData.decipher_frameaddr()
        offset, words = self.bramFrameData.offset, self.bramFrameData.words
        clbUnpack = np.ascontiguousarray(np.array(CLBtiles)[clbDims[1]][clbDims[2]][clbDims[3]][:,offset:offset+words])
        clbUnpacked = np.unpackbits(clbUnpack.view(np.uint8),axis=1,bitorder='little')

        vals = []
        for c in self.configs:
            vals.append(clbUnpacked[np.array(c[1])[:,0],np.array(c[1])[:,1]])

        if np.max(self.INIT) > 0:
            print('')