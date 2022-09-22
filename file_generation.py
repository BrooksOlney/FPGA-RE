import numpy as np
import random

def gen_memory(filename,content,width,depth):
    with open(filename, 'w') as ofile:
        ofile.write("memory_initialization_radix=2;\nmemory_initialization_vector=\n\n")
        allContent = [str(content) * width] * depth
        ofile.write(',\n'.join(allContent)+';')
        
def gen_random_memory(filename,width,depth):
    with open(filename, 'w') as ofile:
        ofile.write("memory_initialization_radix=2;\nmemory_initialization_vector=\n\n")
        allContent = np.random.randint(0,2**width,depth)
        strs = [bin(c)[2:].zfill(width) for c in allContent]
        print(strs)
        ofile.write(',\n'.join(strs)+';')