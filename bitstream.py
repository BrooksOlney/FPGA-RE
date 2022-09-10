
import json
import struct
import numpy as np
from zlib import crc32
import enum

class configPacket:
    # just a container for the packets
    def __init__(self,pktType,opcode,addr,data):
        self.pktType    = pktType
        self.opcode     = self.Opcodes(opcode)
        self.addr       = self.Address(addr)
        self.data       = data
        
    def __repr__(self):
        if self.opcode == 'NOP':
            return 'NOP'
        else:
            return f'packet({self.pktType},{self.opcode},{self.addr},{self.data})'
    
    # documented configuration registers 
    class Address(enum.Enum):
        CRC = 0
        FAR = 1
        FDR = 2
        FDR0 = 3
        CMD = 4
        CTL0 = 5
        MASK = 6
        STAT = 7
        LOUT = 8
        COR0 = 9
        MFWR = 10
        CBC = 11
        IDCODE = 12
        AXSS = 13
        COR1 = 14
        WBSTAR = 16
        TIMER = 17
        RBCRC_SW = 19
        BOOTSTS = 22
        CTL1 = 24
        BSPI = 31
        
    # documented opcodes
    class Opcodes(enum.Enum):
        NOP = 0
        read = 1
        write = 2
    
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

        
        _configPackets = configPackets.tolist()
        while _configPackets:
        # for pkt in configPackets:
            pkt = _configPackets.pop(0)
            pktType = pkt >> 29
            
            if pktType == 1:
                opcode = (pkt >> 27) & 0x3
                addr   = (pkt >> 13) & 0x1F
                pld    = pkt & 0x3FF
                
                if opcode == configPacket.Opcodes.NOP.value:
                    decodedPackets.append(configPacket(pktType,opcode,addr,pld))
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

                    decodedPackets.append(configPacket(pktType,opcode,addr,payload))
                    
            else:
                test = struct.unpack("<I", struct.pack(">I", pkt))[0]
            
        self.decodedPackets = decodedPackets


    def analyze_configuration(self):

        bits = np.array(self.configBitstream)
        nonzero = np.count_nonzero(bits)

        whereNonzero = np.where(bits>0)

        print('hi')

    def load_tile_grid(self, filename):
        self.tileDef = json.load(open(filename,'r'))



if __name__ == "__main__":
    multBits = Bitstream("Bitstreams/bram_0s.bit")
    multBits.parse_bits()
    multBitsopp = Bitstream("Bitstreams/bram_1s.bit")
    multBitsopp.parse_bits()
    
    test = np.array(multBits.configBitstream) ^ np.array(multBitsopp.configBitstream)

    # crc = 0    
    # crc32poly = 0x82F63B78
    # pkts = [pkt for pkt in multBits.decodedPackets if pkt.opcode == configPacket.Opcodes.write and pkt.addr != configPacket.Address.BOOTSTS]
    # for pkt in pkts:
    #     for data in pkt.data:
    #         val = (pkt.addr.value << 32) | data
            
    #         for i in range(0,37):
    #             if (val & 1) != (crc & 1):
    #                 crc ^= (crc32poly << 1)
                
    #             val >>= 1
    #             crc >>= 1
    
    multBits.load_tile_grid("prjxray-db/artix7/xc7a100t/tilegrid.json")
    multBits.analyze_configuration()
