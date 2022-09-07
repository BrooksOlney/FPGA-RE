
import struct
import numpy as np
from qtpy import os

class configPacket:
    # just a container for the packets
    def __init__(self,pktType,opcode,addr,data):
        self.pktType    = pktType
        self.opcode     = opcode
        self.addr       = addr
        self.data       = data
        
    def __repr__(self):
        if self.opcode == 'NOP':
            return 'NOP'
        else:
            return f'packet({self.pktType},{self.opcode},{self.addr},{self.data})'
            
class Bitstream:

    def __init__(self, filename):

        if filename.endswith('.bit'):
            self._raw_bytes = np.fromfile(filename, dtype=np.uint8)
        elif filename.endswith('.bin'):
            self._raw_bytes = None

        self.configBitstream = None
        self.decodedPackets = None

    def parse_bits(self):
        
        decodedPackets = []
        
        # word occurs after the main file header
        sync = 0xFFFFFFFFFFFFFFFFAA995566
        syncWord = sync.to_bytes(12, 'big')
        rawBytes = self._raw_bytes.tobytes()
        syncIdx = rawBytes.find(syncWord)
        
        busDesc = rawBytes[syncIdx-8:syncIdx]
        busWidthSync = int.from_bytes(busDesc[:4],'big')
        busWidthDetect = int.from_bytes(busDesc[4:], 'big')
        
        self.header = self._raw_bytes[:rawBytes.find(syncWord)]
        rem = self._raw_bytes[rawBytes.find(syncWord) + 12:]
        configPackets = rem.reshape(-1,4).view(np.uint32).newbyteorder().flatten()
        # hexPackets = [hex(pkt)[2:].zfill(8) for pkt in configPackets]

        # documented configuration registers and opcodes
        opcodes = ['NOP', 'read', 'write']
        
        registers = {0:'CRC', 1:'FAR', 2: 'FDRI', 3: 'FDRO', 4: 'CMD',
                    5: 'CTL0', 6: 'MASK', 7: 'STAT', 8: 'LOUT', 9: 'COR0',
                    10: 'MFWR', 11: 'CBC', 12: 'IDCODE', 13: 'AXSS', 14: 'COR1',
                    16: 'WBSTAR', 17: 'TIMER', 19: 'RBCRC_SW', 22: 'BOOTSTS', 24: 'CTL1',
                    31: 'BSPI'
                }
        
        _configPackets = configPackets.tolist()
        while _configPackets:
        # for pkt in configPackets:
            pkt = _configPackets.pop(0)
            pktType = pkt >> 29
            
            if pktType == 1:
                opcode = (pkt >> 27) & 0x3
                addr   = (pkt >> 13) & 0x1F
                pld    = pkt & 0x3FF
                
                if opcodes[opcode] == 'NOP':
                    decodedPackets.append(configPacket(pktType,opcodes[opcode],addr,pld))
                elif opcode == 1 or opcode == 2:

                    if pld > 0:
                        payload, _configPackets = _configPackets[0:pld], _configPackets[pld:]
                    
                    else:
                        t2Pkt = _configPackets.pop(0)

                        if t2Pkt >> 29 != 2:
                            print("type 2 packet required")
                            break
                        else:
                            pld = t2Pkt & 0x7FFFFFF
                            opcode = (t2Pkt >> 27) & 0x3

                        payload, _configPackets = _configPackets[0:pld], _configPackets[pld:]

                    if pld > 1000:
                        self.configBitstream = payload

                    decodedPackets.append(configPacket(pktType,opcodes[opcode],registers.get(addr, 'UNDEFINED'),payload))
                    
            else:
                test = struct.unpack("<I", struct.pack(">I", pkt))[0]
            
        self.decodedPackets = decodedPackets


    def analyze_configuration(self):

        bits = np.array(self.configBitstream)
        nonzero = np.count_nonzero(bits)

        whereNonzero = np.where(bits>0)

        print('hi')

    def 

if __name__ == "__main__":
    print(os.listdir())
    multBits = Bitstream("FPGA-RE/Bitstreams/core_driver.bit")
    multBits.parse_bits()
    multBits.analyze_configuration()
