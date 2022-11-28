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
            
            bel_segbits[bel_l.upper()] = self.parse_segbits(loc + segbits + bel_l + '.db')
            bel_segbits[bel_r.upper()] = self.parse_segbits(loc + segbits + bel_r + '.db')
            
            bel_ppips[bel_l.upper()] = self.parse_ppips(loc + ppips + bel_l + ".db")
            bel_ppips[bel_r.upper()] = self.parse_ppips(loc + ppips + bel_r + ".db")


        self.belSegbits = bel_segbits
        self.bel_ppips  = bel_ppips

    def parse_segbits(self,filename):
        raise NotImplementedError


    def parse_ppips(self,filename):
        raise NotImplementedError