
import json
import struct
import numpy as np
from zlib import crc32
import enum
from time import time

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
        cmdIssued = False
        configured = False
        self.crcBytes = bytes()

        while _configPackets:
        # for pkt in configPackets:
            pkt = _configPackets.pop(0)
            pktType = pkt >> 29
            
            if pktType == 1:
                opcode = (pkt >> 27) & 0x3
                addr   = (pkt >> 13) & 0x1F
                pld    = pkt & 0x3FF
                
                if opcode == configPacket.Opcodes.NOP.value:
                    decodedPackets.append(configPacket(pktType,opcode,addr,[pld]))
                elif opcode == 1 or opcode == 2:
                    


                    if pld > 0:
                        payload, _configPackets = np.array(_configPackets[0:pld]), _configPackets[pld:]
                    
                    else:
                        t2Pkt = _configPackets.pop(0)

                        if t2Pkt >> 29 != 2:
                            print("type 2 packet required")
                            break
                        else:
                            pld = t2Pkt & 0x7FFFFFF
                            opcode = (t2Pkt >> 27) & 0x3

                        payload, _configPackets = np.array(_configPackets[0:pld]), _configPackets[pld:]

                    # if cmdIssued and not configured:
                    #     # self.crcBytes += pkt.to_bytes(4,'big') + np.array(payload,dtype=np.uint32).byteswap().tobytes()
                    #     self.crcBytes += ((addr << 32) | payload).byteswap().tobytes()

                    if pld > 1000:
                        self.configBitstream = np.array(payload)
                        # configured = True

                    # if addr == configPacket.Address.CMD.value and payload[0] == 0x7:
                    #     cmdIssued = True

                    
                    decodedPackets.append(configPacket(pktType,opcode,addr,payload))
                    
            else:
                test = struct.unpack("<I", struct.pack(">I", pkt))[0]
            
        self.decodedPackets = decodedPackets


    def analyze_configuration(self):

        bits = np.array(self.configBitstream)
        nonzero = np.count_nonzero(bits)
        frames = bits.reshape(-1,101)
        whereNonzero = np.where(bits>0)

        gcr = 'global_clock_regions'
        cbs = 'configuration_buses'
        cols = 'configuration_columns'
        numFrames = 0
        for key in self.tileDef[gcr]:
            # print(key)
            for row in self.tileDef[gcr][key]['rows']:
                for cb in self.tileDef[gcr][key]['rows'][row][cbs]:
                    for col in self.tileDef[gcr][key]['rows'][row][cbs][cb][cols]:
                        numFrames += self.tileDef[gcr][key]['rows'][row][cbs][cb][cols][col]['frame_count']

                        if numFrames == 1944:
                            print('hi')

        print('hi')

    def load_tile_grid(self, filename):
        self.tileDef = json.load(open(filename,'r'))

    def compute_crc(self):
        crc = 0    
        crc32poly = 0x82F63B78 << 1

        for pkt in self.decodedPackets[8:30]:
            if pkt.opcode != configPacket.Opcodes.write:
                continue

            for val in ((pkt.addr.value << 32) | pkt.data):
                for i in range(0,37):
                    if ((val ^ crc) & 1):
                        crc ^= crc32poly
                    
                    val >>= 1
                    crc >>= 1

        return crc

if __name__ == "__main__":
    multBits = Bitstream("FPGA-RE/Bitstreams/bram_xca100t.bit")
    multBits.parse_bits()
    multBitsopp = Bitstream("FPGA-RE/Bitstreams/bram_xca100t_opp.bit")
    multBitsopp.parse_bits()
    
    test = np.array(multBits.configBitstream) ^ np.array(multBitsopp.configBitstream)
    # multBits.analyze_configuration()

    multBits.load_tile_grid("FPGA-RE/prjxray-db/artix7/xc7a100tftg256-2/part.json")
    # multBits.load_tile_grid("FPGA-RE/prjxray-db/artix7/xc7a100t/tilegrid.json")
    
    multBits.analyze_configuration()
