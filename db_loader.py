import numpy as np
import re
from time import time

class PPIP:
    def __init__(self,dst,src,mode):
        self.dst = dst
        self.src = src
        self.mode = mode

    def __repr__(self):
        return f'{self.src}->{self.dst} = {self.mode}'

# class bitmap:
    # def __init__(self,dst,src)

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

class prjXrayDB:
    def __init__(self,dbPath,device,part):
        # not implemented
        self.dbPath = dbPath
        self.device = device
        self.part   = part

        loc = dbPath + device + '/'

        segbits = 'segbits_'
        ppips   = 'ppips_'

        bels_to_parse = ['bram', 'clbll', 'clblm', 'int']

        bel_segbits = {}
        bel_ppips   = {}

        for bel in bels_to_parse:
            bel_l = bel + '_l'
            bel_r = bel + '_r'

            if bel == 'bram':
                bel_ppips[bel_l.upper()] = self.parse_ppips(loc + ppips + bel_l + ".db") + self.parse_ppips(loc + ppips + bel + "_int_interface_l.db")
                bel_ppips[bel_r.upper()] = self.parse_ppips(loc + ppips + bel_r + ".db") + self.parse_ppips(loc + ppips + bel + "_int_interface_r.db")
                bel_segbits[bel_l.upper()] = self.parse_segbits(loc + segbits + bel_l + '.db') + self.parse_bram_content(loc + segbits + bel_l + ".block_ram.db")
                bel_segbits[bel_r.upper()] = self.parse_segbits(loc + segbits + bel_r + '.db') + self.parse_bram_content(loc + segbits + bel_r + ".block_ram.db")
            else:
                bel_ppips[bel_l.upper()] = self.parse_ppips(loc + ppips + bel_l + ".db")
                bel_ppips[bel_r.upper()] = self.parse_ppips(loc + ppips + bel_r + ".db")
                bel_segbits[bel_l.upper()] = self.parse_segbits(loc + segbits + bel_l + '.db')
                bel_segbits[bel_r.upper()] = self.parse_segbits(loc + segbits + bel_r + '.db')

        self.belSegbits = bel_segbits
        self.bel_ppips  = bel_ppips

    def parse_segbits(self,filename):

        with open(filename, 'r') as segbitFile:
            lines = segbitFile.read().splitlines()

        lines_splt = [line.split(' ') for line in lines]
        
        segbits = []
        while lines_splt:
            item = lines_splt.pop(0)
            bus = item[0]
            nets = item[1:]
            bits = []
            ttvals = []
            if "[" in item[0]:
                bus,bit,_ = re.split(r'[\[\]]',bus)
                
                while bus in lines_splt[0][0]:
                    nets += lines_splt[0][1:]
                    lines_splt.pop(0)
                    if not lines_splt:
                        break
                
            for net in nets:
                frame,bit = net.split("_")
                if frame[0] == "!":
                    frame = frame[1:]
                    ttvals.append(False)
                else:
                    ttvals.append(True)
                
                bits.append((int(frame),int(bit)))
            
            segbits.append((bus[bus.find('.')+1:],np.array(bits,np.uint16),ttvals))


        return segbits

    def parse_bram_content(self,filename):
        with open(filename,'r') as bramFile:
            lines = bramFile.read().splitlines()
        
        lines_splt = [re.split(r'\s*[\[\]]\s*|[_]|[.]|[ ]',line) for line in lines]
        # bits = np.array([(int(l[-2]),int(l[-1])) for l in lines_splt],np.uint16)

        # INIT = np.zeros((2,64,256,2),np.uint16)
        # INITP = np.zeros((2,8,256,2),np.uint16)

        # inits = {"INIT": INIT, "INITP": INITP}

        inits = np.zeros((2,64,256,2),np.uint16)
        initps = np.zeros((2,8,256,2),np.uint16)


        for line in lines_splt:
            blk = int(line[-4],16)
            initBit,frame,bit = [int(i) for i in line[-3:]]
            y = int(line[3][1])
            # test = globals()[line[4]]
            # inits[line[4]][y,blk,initBit] = (frame,bit)

            if 'INIT' in line:
                inits[y,blk,initBit,0] = frame
                inits[y,blk,initBit,1] = bit
            elif 'INITP' in line:
                initps[y,blk,initBit,0] = frame
                initps[y,blk,initBit,1] = bit
        
        return [("INIT", inits), ("INITP", initps)]

    def parse_ppips(self,filename):

        with open(filename, 'r') as ppipFile:
            lines = ppipFile.read().splitlines()

        # were always so simple...
        ppips = [PPIP(*re.split(r'[.]|[ ]', line)[1:]) for line in lines]

        return ppips