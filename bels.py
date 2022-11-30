from brams import BRAM36
from clbs import CLBLM, CLBLL
from ints import INT
from db_loader import FrameInfo
import numpy as np

belDict = {'BRAM': BRAM36, 'CLBLM': CLBLM, 'CLBLL': CLBLL, 'INT': INT}

def bel_generator(belName,belType,jsonData,config,ppips,grid):
    bitsData = jsonData['bits']

    frameInfos = []
    contents = []
    for key,val in bitsData.items():    
        frameInfo = FrameInfo(val)
        intf,top,row,col,mnr = frameInfo.decipher_frameaddr()
        offset, words = frameInfo.offset,frameInfo.words
        toUnpack = np.ascontiguousarray(grid[intf][top][row][col][:,offset:offset+words])
        
        frameInfos.append(frameInfo)
        contents.append(np.unpackbits(toUnpack.view(np.uint8),axis=1,bitorder='little'))

    belClass = belDict[belType[:-2]]
    belObj = belClass(belName,jsonData,frameInfos,contents)
    return belObj

def set_bel_configs(configs,ppips):
    BRAM36.configs = [configs['BRAM_L'], configs['BRAM_R']]
    BRAM36.ppips = [ppips['BRAM_L'], ppips['BRAM_R']]

    CLBLM.configs = [configs['CLBLM_L'], configs['CLBLM_R']]
    CLBLM.ppips = [ppips['CLBLM_L'], ppips['CLBLM_R']]

    CLBLL.configs = [configs['CLBLL_L'], configs['CLBLL_R']]
    CLBLL.ppips = [ppips['CLBLL_L'], ppips['CLBLL_R']]

    INT.configs = [configs['INT_L'], configs['INT_R']]
    INT.ppips = [ppips['INT_L'], ppips['INT_R']]

