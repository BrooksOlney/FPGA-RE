import numpy as np
import re
from db_loader import FrameInfo

class INT:
    configs = None
    def __init__(self,jsonData):
        self.x = jsonData['grid_x']
        self.y = jsonData['grid_y']

        bitsData = jsonData['bits']
        
        self.intFrameData = FrameInfo(bitsData['CLB_IO_CLK'])

        if self.configs is None:
            self.parse_segbits()
            
    @classmethod
    def parse_segbits(self):
        loc = 'prjxray-db/artix7/'
        int_l_segbits = 'segbits_int_l.db'
        int_r_segbits = 'regbits_int_r.db'
        
        int_l_sb_lines = open(int_l_segbits,'r').read().splitlines()
        int_r_sb_lines = open(int_r_segbits,'r').read().splitlines()

        


    def parse_ppips(self):
        loc = 'prjxray-db/artix7/'
        int_l_ppips = 'ppips_int_l.db'
        int_r_ppips = 'ppips_int_r.db'

