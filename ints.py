import numpy as np
import re
from db_loader import FrameInfo

class INT:
    configs = None
    def __init__(self,name,jsonData,frameInfos,contents):
        self.name = name
        self.x,self.y = list(map(int, re.findall(r'[0-9]+',name)))
        self.LR = int(name[5] == "L")

        self.grid_x = jsonData['grid_x']
        self.grid_y = jsonData['grid_y']

        self.contents = contents[0]
        self.intFrameData = frameInfos[0]
        self.parse_connections()

    def __repr__(self):
        return f'{self.name} - {len(self.conns) > 0}'

    def parse_connections(self):

        conns = []
        cfgs = self.configs[self.LR]

        if np.max(self.contents):
            for cfg in cfgs:
                dst,src = cfg[0].split('.')
                bits,ttvals = cfg[1],cfg[2]

                match = all(self.contents[bits[:,0],bits[:,1]] == ttvals)
                if match:
                    conns.append((dst,src))

        # merged = np.concatenate([cfg[1] for cfg in cfgs])
        # bins = np.array([cfg[1].shape[0] for cfg in cfgs])

        # ttvals = np.concatenate([cfg[2] for cfg in cfgs])
        # ttvals = np.array(np.split(ttvals,bins.cumsum()[:-1]))
        # sliced = self.contents[merged[:,0],merged[:,1]]

        # splt = np.array(np.split(sliced,bins.cumsum()[:-1]))
        # # test = np.nonzero((ttvals == splt).all(1))[0]
        # test = [all(x == y) for x,y in zip(splt,ttvals)]
        # argwhere = np.argwhere(test).flatten()
        # for el in argwhere:
        #     conns.append(self.configs[self.LR][el][0].split('.'))

        # merged,ttvals = [],[]
        # bins = []
        # for cfg in cfgs:
        #     merged += cfg[1].tolist()
        #     ttvals += cfg[2]
        #     bins.append(cfg[1].shape[0])

        # merged = np.array(merged)
        # bins = np.array(bins)

        # bins = bins.cumsum()[:-1]
        # sliced = self.contents[merged[:,0],merged[:,1]]
        # compared = sliced == ttvals
        # sliced = np.split(compared,bins)
        # test = [all(t) for t in sliced]

        # test2 = np.argwhere(test).flatten()
        # for i in test2:
        #     conns.append(cfgs[i][0].split('.'))

        self.conns = conns