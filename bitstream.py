
import os
import numpy as np


class Bitstream:

    def __init__(self, filename):

        if filename.endswith('.bit'):
            self._raw_bytes = np.fromfile(filename, dtype=np.uint8)
        elif filename.endswith('.bin'):
            self._raw_bytes = None

    def parse_bits(self):
        
        # word occurs after the main file header
        sync = 0xFFFFFFFFAA995566
        syncWord = sync.to_bytes(8, 'big')
        rawBytes = self._raw_bytes.tobytes()

        self.header = self._raw_bytes[:rawBytes.find(syncWord)]
        rem = self._raw_bytes[rawBytes.find(syncWord) + 8:]
        configPackets = rem.reshape(-1,4).view(np.uint32).flatten()
        configBits = np.unpackbits(configPackets, 1)
        packetTypes = configPackets >> 29
        
        p1NOP = 0b00
        p1Read = 0b01
        p1Write = 0b10

        print('hi')

if __name__ == "__main__":
    garoBits = Bitstream("Bitstreams/GARO_TRNG.bit")
    garoBits.parse_bits()
