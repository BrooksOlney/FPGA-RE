#!/usr/bin/env python3

import argparse
import enum
import struct
import os


class ConfigurationPacket:

    @enum.unique
    class Address(enum.Enum):
        CRC = 0
        FAR = 1
        FDRI = 2
        FDRO = 3
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
        UNKNOWN_15 = 15 # If write, csob_reg(ib) <= packet, csbo_cnt(ib) <= word count, csbo_flag(ib) < '1'
        WBSTAR = 16
        TIMER = 17
        UNKNOWN_18 = 18
        POST_CRC = 19 # Undocumented in UG470
        UNKNOWN_20 = 20
        UNKNOWN_21 = 21
        BOOTSTS = 22
        CTL1 = 24
        UNKNOWN_30 = 30 # If next packet is Type 2 and bout_cnt(ib) = 0, set bout_flag(ib) <= '1' and bout_cnt(ib) <= word count
        BSPI = 31

    @enum.unique
    class OpCode(enum.Enum):
        NOOP = 0
        READ = 1
        WRITE = 2

    def __init__(self, b, packet=None):
        word = struct.unpack('>I', b[0:4])[0]
        self.type = word >> 29
        self.opcode = self.OpCode((word >> 27) & 0x3)
        if self.type == 1:
            self.address = self.Address((word >> 13) & 0x1F)
            word_count = word & 0x7FF
        elif self.type == 2:
            if packet is None:
                raise Exception(f'Type 2 packets require previous packet')
            if packet.type != 1:
                raise Exception(f'Type 2 packet require previous Type 1 packet')
            self.address = packet.address
            word_count = word & 0x07FFFFFF
        else:
            raise Exception(f'Unsupported Packet Type {self.type}')
        self.data = []
        b = b[4:]
        for p in [b[i:i + 4] for i in range(0, word_count * 4, 4)]:
            #print(p)
            self.data.append(struct.unpack('>I', p)[0])

    def crc(self, crc):
        if self.opcode != self.OpCode.WRITE:
            return crc
        if self.address == self.Address.CMD and self.data[0] & 0x1F == 7: # RCRC
            return 0
        if self.address in [
            self.Address.UNKNOWN_15,
            self.Address.UNKNOWN_18,
            self.Address.UNKNOWN_20,
            self.Address.UNKNOWN_21,
            self.Address.BOOTSTS,
            self.Address.CRC
        ]:
            if self.address == self.Address.CRC: # Cleared when checked
                return 0
            return crc
        for data in self.data:
            crc = icap_crc(self.address.value, data, crc)
            #print('-----------0x%08X, 0x%08X, crc=0x%08X' %(self.address.value, data, crc))
        return crc

    @property
    def header(self):
        return '<0x{:08X}>: Type {}, OpCode: {}{}, Word Count: {}'.format(
            (self.type << 29) | (self.opcode.value << 27) | ((self.address.value << 13) if self.type == 1 else 0) | len(self.data),
            self.type,
            self.opcode.name,
            ', Address: {}'.format(self.address.name) if self.type == 1 else '',
            len(self.data)
        )

def icap_crc(addr, data, crc):
    val = (addr << 32) | data
    for i in range(0, 37):
        if (val & 1) != (crc & 1):
            crc ^= 0x82F63B78 << 1;
        val >>= 1
        crc >>= 1
    return crc

def crc7series(buffer):
    crc = 0
    packet = None
    i = 0
    while (i + 4) <= len(buffer):
        print('i = %4X' % i, ', CMD = 0x%08X' % (struct.unpack('>I', buffer[i:i+4])[0]))
        packet = ConfigurationPacket(buffer[i:], packet)
        i += 4 * (len(packet.data) + 1)
        crc = packet.crc(crc)
    return crc

# parser = argparse.ArgumentParser()
# parser.add_argument('infile', nargs=1, type=str)
# args = parser.parse_args()

f = open("FPGA-RE/Bitstreams/bram_0s.bit", 'rb+')

#inputfile = "top_platform_7014_original.bin"
#f = open(inputfile, 'rb+')

buffer = bytearray() # Buffer for storing CRC'd packets
count = 0 # Byte-to-word counter
step = 0 # State machine state
b1 = 0
b2 = 0
b3 = 0
b4 = 0


while True:
    b = f.read(1)
    if len(b) == 0:
        break
    b4 = b3
    b3 = b2
    b2 = b1
    b1 = struct.unpack('<B', b)[0]
    w = (b4 << 24) | (b3 << 16) | (b2 << 8) | b1
    if step == 0: # Scanning for SYNC word
        if w == 0xAA995566:
            step += 1
            #print("Step "+str(step)+" Scanning for SYNC word")
        continue
    else:
        count += 1
        if count < 4:
            continue
        count = 0
    if step == 1: # Scanning for write to CMD register
        if w == 0x30008001:
            step += 1
        continue
    if step == 2:
        if w == 0x00000007: # After write to CMD, check if RCRC
            step += 1
        else:
            step -= 1
        continue
    buffer += struct.pack('>I', w) # After RCRC, save buffer for CRC generation
    if step == 3 and w >> 29 == 0x2: # Scan for Packet Type 2
        step += 1
        bitsream_len = w & 0x07FFFFFF
        continue
    if step == 4 and w == 0x30000001 and len(buffer) > bitsream_len *4: # Scan for CRC
        step += 1
        print(len(buffer))
        print(hex(struct.unpack('>I', buffer[:4])[0]))
        print(hex(struct.unpack('>I', buffer[-4:])[0]))
        ccrc = crc7series(buffer[:-4]) # Calculated (should equal expected if CRC algorithm is correct)
        continue
    elif step == 5: # Word is checksum
        step -= 1
        ecrc = struct.unpack('>I', buffer[-4:])[0] # Expected (from bitstream)
        print('{:08X}: Expected 0x{:08X}, Calculated 0x{:08X}'.format(f.tell() - 4, ecrc, ccrc))
        break

print('{:08X}: EOF'.format(f.tell()))
f.close()