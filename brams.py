import numpy as np
import re 

class RAMB18:
    def __init__(self):
        self.DOA_REG = 0
        self.DOB_REG = 0
        self.FIFO_MODE = 0
        self.IN_USE = 0
        self.RDADDR_COLLISION_HWCONFIG_DELAYED_WRITE = 0
        self.RDADDR_COLLISION_HWCONFIG_PERFORMANCE = 0
        self.READ_WIDTH_A = 0
        self.READ_WIDTH_B = 0
        self.RSTREG_PRIORITY_A = 0
        self.RSTREG_PRIORITY_B = 0
        self.WRITE_MODE_A_NO_CHANGE = 0
        self.WRITE_MODE_A_READ_FIRST = 0
        self.WRITE_MODE_B_NO_CHANGE = 0
        self.WRITE_MODE_B_READ_FIRST = 0
        self.WRITE_WIDTH_A = 0
        self.WRITE_WIDTH_B = 0
        # self.SDP_READ_WIDTH_36 = False
        # self.SDP_WRITE_WIDTH_36 = False
        self.SDP_READ_WIDTH = 0
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

    def __repr__(self):
        return f'RAMB18(IN_USE={self.IN_USE}, RW_A={self.READ_WIDTH_A}, RW_B={self.READ_WIDTH_B}, SDP_RW={self.SDP_READ_WIDTH})'

class BRAM36:
    configs = None
    ppips = None

    def __init__(self,name,jsonData,frameInfos,contents):
        self.name = name
        self.LR = int(name[5] == "R")
        self.x,self.y = list(map(int, re.findall(r'[0-9]+',name)))
        self.grid_x = jsonData['grid_x']
        self.grid_y = jsonData['grid_y']

        # bitsData = jsonData['bits']
        # self.bramFrameData  = FrameInfo(bitsData['BLOCK_RAM'])
        # self.clbioFrameData = FrameInfo(bitsData['CLB_IO_CLK'])
        self.bramFrameData,self.clbioFrameData = frameInfos
        self.contents = contents
        self.INIT = np.zeros(dtype=np.uint8, shape=(2,64,256))
        self.INITP = np.zeros(dtype=np.uint8, shape=(2,8,256))

        # to separate attributes of each RAMB18
        self.RAMB18s = [RAMB18(),RAMB18()]
        
        # BRAM/RAMB36 attributes
        self.ADDRARDADDRL = np.zeros(15,np.uint8)
        self.ADDRARDADDRU = np.zeros(15,np.uint8)
        self.ADDRBWRADDRL = np.zeros(15,np.uint8)
        self.ADDRBWRADDRU = np.zeros(15,np.uint8)

        self.extract_from_tiles_v2()

    def __repr__(self):
        return f'BRAM({hex(self.bramFrameData.baseAddr)} - {(self.x,self.y)}) - {(self.grid_x,self.grid_y)}'

    def __hash__(self):
        return hash(self.name)

    def extract_from_tiles_v2(self):


        INITLocs = self.configs[0][-2][1]
        INITPLocs = self.configs[0][-1][1]

        self.INIT = self.contents[0][INITLocs[:,:,:,0],INITLocs[:,:,:,1]]
        self.INITP = self.contents[0][INITPLocs[:,:,:,0],INITPLocs[:,:,:,1]]

        clbUnpacked = self.contents[1]

        vals = []
        configs = {}
        bramConfigs = [{},{}]
        moduleConfigs = self.configs[self.LR][:-2]
        
        for config,inds,ttVals in moduleConfigs:
            inds = np.array(inds)
            vals = clbUnpacked[inds[:,0],inds[:,1]]
            _config = config[config.rfind('.')+1:]
            bitVal = all(vals == ttVals)

            if "RAMB18_Y" in config:
                ramb18Idx = int(config[config.rfind('.')-1])
                toEdit = bramConfigs[ramb18Idx]
                if "_WIDTH_" in config and bitVal:
                    idx = _config.rfind('_')
                    setattr(self.RAMB18s[ramb18Idx],_config[:idx],int(_config[idx+1:]))
                else:
                    setattr(self.RAMB18s[ramb18Idx],_config,bitVal)
            else:
                toEdit = configs
            
            if ttVals is not None:
                toEdit[_config] = bitVal
            else:
                toEdit[_config] = vals

        
        if self.RAMB18s[0].SDP_READ_WIDTH > 0:
            self.SDP = True
        else:
            self.SDP = False
            
        self.ramb18_configs = bramConfigs
        self.ramb36_configs = configs

        # casc_addr_buses = ['ADDRARDADDRL', 'ADDRARDADDRU', 'ADDRBWRADDRL', 'ADDRBWRADDRU']

        # for bus in casc_addr_buses:
            
        #     conts = ['' for _ in range(15)]
        #     for i,row in enumerate(self.configs[bus]):
        #         # for row in item:
        #         busType = row[0]
        #         nets = np.array(row[1])
        #         ttvals = row[2]
        #         if all(clbUnpacked[nets[:,0],nets[:,1]] == ttvals):
        #             # if busType == '':
        #             #     print()
        #             conts[i//3] = busType
        #             if 'IMUX' in busType:
        #                 conts[i//3] = 0
        #             elif 'CASCINTOP' in busType:
        #                 conts[i//3] = 1
        #             else:
        #                 conts[i//3] = -1
            
        #     setattr(self,bus,conts)

        # if np.max(self.INIT) == 0 and np.max(self.INITP) == 0:
        #     self.IS_FIFO = True
        # else:
        #     self.IS_FIFO = False

        self.IS_FIFO = np.max(self.INIT) == np.max(self.INITP) == 0

        if self.ramb18_configs[0]['IN_USE'] and self.ramb18_configs[1]['IN_USE'] and self.RAMB18s[0].READ_WIDTH_A == self.RAMB18s[1].READ_WIDTH_A and np.max(self.INIT[1]):
            interleaved = np.empty((64,512),np.uint8)
            interleaved[:,::2] = self.INIT[0,:]
            interleaved[:,1::2] = self.INIT[1,:]

            parityInterleaved = np.empty((8,512),np.uint8)
            parityInterleaved[:,::2] = self.INITP[0,:]
            parityInterleaved[:,1::2] = self.INITP[1,:]

            self.INITPint = parityInterleaved
            self.interleaved = interleaved
            self.SYN = True
        else:
            self.interleaved = None
            self.SYN = False

        if self.RAMB18s[0].IN_USE or self.RAMB18s[1].IN_USE:
            self.get_mem_contents()
        else:
            self.content = None


    # @classmethod
    # def parse_segbits(cls):
    #     loc = 'prjxray-db/artix7/'
    #     bram_file = 'segbits_bram_r.block_ram.db'
    #     clbio_file = 'segbits_bram_l.db'
        
    #     with open(loc+bram_file,'r') as bfile:
    #         bramConfig = bfile.read().splitlines()
        
    #     with open(loc+clbio_file,'r') as clbfile:
    #         bramCLB = clbfile.read().splitlines()

    #     bramConfigSplt = [re.split(r'\s*[\[\]]\s*|[_]|[.]|[ ]', line) for line in bramConfig]
    #     # bramCLBSplt    = [re.split(r'\s*[\[\]]\s*|[_]|[.]|[ ]', line) for line in bramCLB]
    #     bramCLBSplt    = [re.split(r'[ ]|[.]', line) for line in bramCLB]

    #     cls.INITLocs = np.zeros(dtype=np.uint16, shape=(2,64,256,2))
    #     cls.INITPLocs = np.zeros(dtype=np.uint16, shape=(2,0x8,256,2))

    #     for line in bramConfigSplt:
    #         blk = int(line[-4],16)
    #         initBit,frame,bit = [int(i) for i in line[-3:]]
    #         y = int(line[3][1])

    #         if 'INIT' in line:
    #             cls.INITLocs[y,blk,initBit,0] = frame
    #             cls.INITLocs[y,blk,initBit,1] = bit
    #         elif 'INITP' in line:
    #             cls.INITPLocs[y,blk,initBit,0] = frame
    #             cls.INITPLocs[y,blk,initBit,1] = bit

    #     ramb18config = {}
    #     for key,val in vars(RAMB18()).items():
    #         if type(val) == np.ndarray:
    #             _val = np.zeros(shape=(*val.shape,2),dtype=np.uint16)
    #             ramb18config[key] = _val
    #         # else:
    #         #     ramb18config[key] = val
                
    #     ramb18configs = [ramb18config, deepcopy(ramb18config)]
    #     configs = {"ADDRARDADDRL": [], "ADDRARDADDRU": [], "ADDRBWRADDRL": [], "ADDRBWRADDRU": []}

        
    #     for line in bramCLBSplt:
    #         numeric = []
    #         truth = []
    #         if "RAMB18" in line[1]:
    #             rambidx = int(line[1][-1])
    #             nets = line[3:]
                
    #             for net in nets:
    #                 if "!" in net:
    #                     truth.append(False)
    #                 else:
    #                     truth.append(True)
                        
    #                 numeric.append(tuple(map(int,net.replace('!','').split('_'))))
                        
    #             if '[' in line[2]:
    #                 splt = re.split(r'[\[\]]',line[2])
    #                 netidx = int(splt[-2])
    #                 ramb18configs[rambidx][splt[0]][netidx] = numeric[0]
    #             else:
    #                 ramb18configs[rambidx][line[2]] = (numeric,truth)
            
    #         elif "BRAM" in line[1]:
    #             key = line[1]
    #             _, attr, bit = re.findall('(\d+|[A-Za-z]+)', key)

    #             src = line[2]
    #             _, srcWire, _, srcBit = re.findall('(\d+|[A-Za-z]+)', src)
                
    #             nets = line[3:]
    #             for net in nets:
    #                 if "!" in net:
    #                     truth.append(False)
    #                 else:
    #                     truth.append(True)

    #                 numeric.append(tuple(map(int,net.replace('!','').split('_'))))

    #             configs[attr].append((srcWire+srcBit,numeric,truth))


    #         elif "RAMB36" in line[1]:
    #             key = line[2]
    #             nets = line[3:]
                
    #             for net in nets:
    #                 if "!" in net:
    #                     truth.append(False)
    #                 else:
    #                     truth.append(True)
                        
    #                 numeric.append(tuple(map(int,net.replace('!','').split('_'))))
            
    #             configs[key] = (numeric,truth)
                    
    #         else:
    #             key = line[1]
    #             configs[line[1]] = ([tuple(map(int, line[-1].split('_')))],None)



    #     cls.bramConfigs = ramb18configs
    #     cls.configs = configs


    def extract_from_tiles(self,BRAMtiles,CLBtiles):
        _,top,row,col,mnr = self.bramFrameData.decipher_frameaddr()
        offset, words = self.bramFrameData.offset, self.bramFrameData.words
        toUnpack = np.ascontiguousarray(BRAMtiles[top][row][col][:,offset:offset+words])

        unpacked = np.unpackbits(toUnpack.view(np.uint8),axis=1,bitorder='little')

        self.INIT = unpacked[self.INITLocs[:,:,:,0],self.INITLocs[:,:,:,1]]
        self.INITP = unpacked[self.INITPLocs[:,:,:,0],self.INITPLocs[:,:,:,1]]

        clbDims = self.clbioFrameData.decipher_frameaddr()
        offset, words = self.bramFrameData.offset, self.bramFrameData.words
        clbUnpack = np.ascontiguousarray(CLBtiles[clbDims[1]][clbDims[2]][clbDims[3]][:,offset:offset+words])
        clbUnpacked = np.unpackbits(clbUnpack.view(np.uint8),axis=1,bitorder='little')

        vals = []
        configs = {}
        for config,val in self.configs.items():
            if "ADDR" in config:
                continue
            inds = np.array(val[0])
            ttVals = val[1]
            vals = clbUnpacked[inds[:,0],inds[:,1]]
            
            if ttVals is not None:
                configs[config] = all(vals == ttVals)
            else:
                configs[config] = vals
        
        bramConfigs = [{},{}]
        for i,bram in enumerate(self.bramConfigs):
            for config,val in bram.items():
                if type(val) == np.ndarray:
                    inds = val
                    ttVals = None
                else:
                    inds = np.array(val[0])
                    ttVals = val[1]
                    
                configVals = clbUnpacked[inds[:,0],inds[:,1]]

                if ttVals is not None:
                    allVals = all(configVals == ttVals)
                    if "_WIDTH_" in config and allVals:
                        idx = config.rfind('_')
                        setattr(self.RAMB18s[i],config[:idx],int(config[idx+1:]))
                    else:
                        setattr(self.RAMB18s[i],config,allVals)
                    
                    bramConfigs[i][config] = allVals
                else:    
                    setattr(self.RAMB18s[i],config,configVals)
                    bramConfigs[i][config] = configVals

        self.ramb16_configs = bramConfigs
        self.ramb36_configs = configs

        casc_addr_buses = ['ADDRARDADDRL', 'ADDRARDADDRU', 'ADDRBWRADDRL', 'ADDRBWRADDRU']

        for bus in casc_addr_buses:
            
            conts = ['' for _ in range(15)]
            for i,row in enumerate(self.configs[bus]):
                # for row in item:
                busType = row[0]
                nets = np.array(row[1])
                ttvals = row[2]
                if all(clbUnpacked[nets[:,0],nets[:,1]] == ttvals):
                    # if busType == '':
                    #     print()
                    conts[i//3] = busType
                    if 'IMUX' in busType:
                        conts[i//3] = 0
                    elif 'CASCINTOP' in busType:
                        conts[i//3] = 1
                    else:
                        conts[i//3] = -1
            
            setattr(self,bus,conts)

        if np.max(self.INIT) == 0 and np.max(self.INITP) == 0:
            self.IS_FIFO = True
        else:
            self.IS_FIFO = False

        if self.ramb16_configs[0]['IN_USE'] and self.ramb16_configs[1]['IN_USE'] and self.RAMB18s[0].READ_WIDTH_A == self.RAMB18s[1].READ_WIDTH_A and np.max(self.INIT[1]):
            interleaved = np.empty((64,512),np.uint8)
            interleaved[:,::2] = self.INIT[0,:]
            interleaved[:,1::2] = self.INIT[1,:]

            parityInterleaved = np.empty((8,512),np.uint8)
            parityInterleaved[:,::2] = self.INITP[0,:]
            parityInterleaved[:,1::2] = self.INITP[1,:]

            self.INITPint = parityInterleaved
            self.interleaved = interleaved
            self.SYN = True
        else:
            self.interleaved = None
            self.SYN = False

        if self.RAMB18s[0].IN_USE or self.RAMB18s[1].IN_USE:
            self.get_mem_contents()
        else:
            self.content = None

    def get_mem_contents(self):
        width = 0
        # if self.SYN:
        if self.RAMB18s[0].SDP_READ_WIDTH == 36:
            if self.SYN:
                if self.ramb36_configs['EN_ECC_READ']:
                    width = 72
                else:
                    width = 64
            else:
                if self.ramb36_configs['EN_ECC_READ']:
                    width = 36
                else:
                    width = 32
                # width = 36

        elif self.RAMB18s[0].READ_WIDTH_A == self.RAMB18s[0].READ_WIDTH_B:
            # contents = self.interleaved.flatten().reshape(-1,self.RAMB18s[0].READ_WIDTH_A)
            if self.ramb36_configs['BRAM36_READ_WIDTH_A_1'] and self.RAMB18s[0].READ_WIDTH_A > 1:
                width = 2*self.RAMB18s[0].READ_WIDTH_A + 1
            else:
                width = self.RAMB18s[0].READ_WIDTH_A
            
            
            width -= width // 8

        else:
            width = max(self.RAMB18s[0].READ_WIDTH_A, self.RAMB18s[0].READ_WIDTH_B)
            width -= width // 8


        if self.SYN:
            idx_from = self.interleaved
            parity_from = self.INITPint
        else:
            idx_from = self.INIT[0]
            parity_from = self.INITP

        pWidth = width // 8
        iWidth = width

        if pWidth:
            test = idx_from.reshape(-1,iWidth)
            test2 = parity_from.reshape(-1,pWidth)

            newIdx = np.empty((test.shape[0],pWidth + iWidth),dtype=np.uint8)
            newIdx[:,:iWidth] = test
            newIdx[:,iWidth:] = test2[:test.shape[0]]
            # idx_from = newIdx.reshape(-1,256+32)
            idx_from = newIdx.reshape(-1,576 if self.SYN else 288)
            width = pWidth + iWidth

        self.read_width = width
        # self.content = idx_from.reshape(-1,width)
        end = np.where(~idx_from.any(axis=1))[0]
        content = idx_from[:end[0] if len(end) else None].flatten().reshape(-1,width)
        self.content = content
        # end1 = np.where(~content.any(axis=1))[0]
        # end2 = np.where(~content.any(axis=0))[0]
        # self.content = content
        # self.content = content[:,:end2[0] if len(end2) else None]
        
