
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
        sync = 0xFFFFFFFFFFFFFFFFAA995566
        syncWord = sync.to_bytes(12, 'big')
        rawBytes = self._raw_bytes.tobytes()
        syncIdx = rawBytes.find(syncWord)
        
        busDesc = rawBytes[syncIdx-8:syncIdx]
        busWidthSync = int.from_bytes(busDesc[:4],'big')
        busWidthDetect = int.from_bytes(busDesc[4:], 'big')
        
        self.header = self._raw_bytes[:rawBytes.find(syncWord)]
        rem = self._raw_bytes[rawBytes.find(syncWord) + 12:]
        configPackets = rem.reshape(-1,4).view(np.uint32).flatten()
        test = [hex(pkt)[2:].zfill(8) for pkt in configPackets]
        # configBits = np.unpackbits(configPackets, 1)
        packetTypes = configPackets >> 29
        pktsTyped = []
        pktsTypedInds = []
        for i in range(8):
            pktsTypedInds.append(np.where(packetTypes == i)[0].tolist())
            pktsTyped.append(configPackets[pktsTypedInds[-1]].tolist())



        p1NOP = 0b00
        p1Read = 0b01
        p1Write = 0b10

        nopPackets = np.where(packetTypes == p1NOP)
        readPackets = np.where(packetTypes == p1Read)
        writePackets = np.where(packetTypes == p1Write)


        print('hi')

if __name__ == "__main__":
    garoBits = Bitstream("Bitstreams/GARO_TRNG.bit")
    garoBits.parse_bits()
