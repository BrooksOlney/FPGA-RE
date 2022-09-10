
def gen_memory(filename,content,width,depth):
    with open(filename, 'w') as ofile:
        ofile.write("memory_initialization_radix=2;\nmemory_initialization_vector=\n\n")
        allContent = [str(content) * width] * depth
        ofile.write(',\n'.join(allContent)+';')