import numpy as np
import re
from db_loader import FrameInfo

class LUT:
    def __init__(self):
        self.X5FF = None
        self.X5FFMUX = None
        self.XFF = None
        self.XFFMUX = None
        self.INIT = np.zeros(64,np.uint8)
        self.XOUTMUX = None

        # SLICEM stuffs
        self.RAM = None
        self.SMALL = None
        self.SRL = None
        self.DI1MUX = None

class SLICEL:
    def __init__(self):
        # self.XLUT = np.zeros((4,64),np.uint8)
        self.ALUT = LUT()
        self.BLUT = LUT()
        self.CLUT = LUT()
        self.DLUT = LUT()
        self.CARRY4 = np.zeros((4,1),np.uint8)
        self.FFSYNC = None
        self.LATCH = None
        self.NOCLKINV = None
        self.PRECYINIT = None
        self.SRUSEDMUX = None

class SLICEM(SLICEL):
    def __init__(self):
        super().__init__()

        self.WA7USED = None
        self.WA8USED = None
        self.WEMUX = None

class CLB:
    configs = None

    def __init__(self,jsonData):
        self.x = jsonData['grid_x']
        self.y = jsonData['grid_y']

        bitsData = jsonData['bits']
        
        self.clblmFrameData = FrameInfo(bitsData['CLB_IO_CLK'])

        if self.configs is None:
            self.parse_segbits()

    @classmethod
    def parse_segbits(cls):
        loc = 'prjxray-db/artix7/'
        clblm_file = 'segbits_clblm_l.db'
        clbll_file = 'segbits_clbll_l.db'
        
        with open(loc+clblm_file,'r') as bfile:
            clblmConfig = bfile.read().splitlines()

        with open(loc+clbll_file,'r') as bfile:
            clbllConfig = bfile.read().splitlines()

        clblmSplt = [re.split(r'\s*[\[\]]\s*|[.]|[ ]', line) for line in clblmConfig]
        clbllSplt = [re.split(r'\s*[\[\]]\s*|[.]|[ ]', line) for line in clbllConfig]

        configs = {"SLICEL_X0": [], "SLICEL_X1" : [], "SLICEM_X0": []}
        keys = [key[1:] for key in dir(LUT()) if "_" not in key]
        lutINITs = np.zeros((4,64,2),np.uint8)
        
        
        for line in [*clblmSplt,*clbllSplt[:341]]:
            config = line[1]
            net1 = line[2]

            if "LUT" in net1:
                wire = line[3]
                if "INIT" in wire:
                    lutID = ord(net1[0]) % ord("A")
                    initBit = int(line[4])
                    frame,bit = list(map(int,line[-1].split('_')))

                    lutINITs[lutID,initBit,:] = (frame,bit)

                    if lutID == 3 and initBit == 63:
                        configs[config].append((".".join(["XLUT",wire]),lutINITs))
                else:
                    ttvals = []
                    frame,bit = line[-1].split('_')
                    if '!' in frame:
                        ttvals.append(False)
                        frame = frame[1:]
                    else:
                        ttvals.append(True)

                    if len(line) != 5:
                        configs[config].append(('.'.join([net1,wire,line[4]]), (int(frame),int(bit)), ttvals))
                    else:
                        configs[config].append(('.'.join([net1,wire]), (int(frame),int(bit)), ttvals))
            
            elif net1[1:] in keys:
                lutID = net1[0]
                src = line[3]
                _nets = line[4:]
                
                nets = []
                ttvals = []

                for net in _nets:
                    frame,bit = net.split('_')

                    if "!" in frame:
                        ttvals.append(False)
                        frame = frame[1:]
                    else:
                        ttvals.append(True)

                    nets.append((int(frame),int(bit)))

                configs[config].append((f'{lutID}LUT.X{net1[1:]}',nets,ttvals,src))
            
            else:
                nets = []
                ttvals = []
                if len(line) == 4:
                    frame,bit = line[-1].split('_')
                    src = None
                    _nets = [line[-1]]
                else:
                    src = line[3]
                    _nets = line[4:]

                for net in _nets:
                    frame,bit = net.split('_')
                    if "!" in frame:
                        ttvals.append(False)
                        frame = frame[1:]
                    else:
                        ttvals.append(True)
                    
                        nets.append((int(frame),int(bit)))
        
                configs[config].append((net1,nets,ttvals,src))

        cls.configs = configs

class CLBLL(CLB):
    def __init__(self,jsonData):
        super().__init__(jsonData)
        self.SLICEL_X1 = SLICEL()
        self.SLICEL_X0 = SLICEL()

    def extract_from_tiles(self,CLBtiles):
        _,top,row,col,mnr = self.clblmFrameData.decipher_frameaddr()
        offset, words = self.clblmFrameData.offset, self.clblmFrameData.words
        toUnpack = np.ascontiguousarray(CLBtiles[top][row][col][:,offset:offset+words])
        # print('')


class CLBLM(CLB):
    def __init__(self,jsonData):
        super().__init__(jsonData)
        self.SLICEL_X1 = SLICEL()
        self.SLICEM_X0 = SLICEM()

    def extract_from_tiles(self,CLBtiles):
        _,top,row,col,mnr = self.clblmFrameData.decipher_frameaddr()
        offset, words = self.clblmFrameData.offset, self.clblmFrameData.words
        toUnpack = np.ascontiguousarray(CLBtiles[top][row][col][:,offset:offset+words])
        unpacked = np.unpackbits(toUnpack.view(np.uint8),axis=1,bitorder='little')
        
        configVals = []
        lconfigs = self.configs['SLICEL_X1']
        mconfigs = self.configs['SLICEM_X0']

        for cfg in lconfigs:
            setattr(self.SLICEL_X1, cfg[0],True)
            
            # print('')
        
        # print('')