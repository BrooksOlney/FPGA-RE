
import datetime
import enum
import struct

class ConfigurationData:

    BIT_PREAMBLE = b'\x00\x09\x0f\xf0\x0f\xf0\x0f\xf0\x0f\xf0\x00\x00\x01\x61'
    DATE_FORMAT = '%Y/%m/%d'
    SYNC_WORD = 0xAA995566
    TIME_FORMAT = '%H:%M:%S'

    def __init__(self, config=None, part=None, date=None, time=None):
        self.date = date
        self.config = config
        self.packets = []
        self.part = part
        self.time = time

    def __bytes__(self) -> bytes:
        b = bytes()
        for i in range(0, 8):
            b += struct.pack('>I', 0xFFFFFFFF)
        b += struct.pack('>I', 0x000000BB) # Bus Width Detect
        b += struct.pack('>I', 0x11220044) # Bus Width is LSB
        for i in range(0, 2):
            b += struct.pack('>I', 0xFFFFFFFF)
        b += struct.pack('>I', self.SYNC_WORD)
        crc = 0
        for packet in self.packets:
            if packet.opcode == ConfigurationPacket.OpCode.WRITE and packet.address == ConfigurationPacket.Address.CRC:
                packet.data = [crc]
            crc = packet.crc(crc)
            b += bytes(packet)
            
        print(f'crc = {crc}')
        return b

    @classmethod
    def from_bytes(cls, b: bytes) -> 'ConfigurationData':
        config = None
        part = None
        date = None
        time = None
        i = 0
        w = 0
        if b[0:len(cls.BIT_PREAMBLE)] == cls.BIT_PREAMBLE: # BIT file
            b = b[len(cls.BIT_PREAMBLE):]
            config_length = struct.unpack('>H', b[0:2])[0]
            b = b[2:]
            if config_length > 1:
                config = struct.unpack(f'>{config_length - 1}s', b[0:config_length - 1])[0].decode('ascii')
            b = b[config_length + 1:] # b'\x62
            part_length = struct.unpack('>H', b[0:2])[0]
            b = b[2:]
            if part_length > 1:
                part = struct.unpack(f'>{part_length - 1}s', b[0:part_length - 1])[0].decode('ascii')
            b = b[part_length + 1:] # b'\x63
            date_length = struct.unpack('>H', b[0:2])[0]
            b = b[2:]
            if date_length > 1:
                if date_length != 0x000b:
                    raise Exception(f'Unsupported date length: {date_length}')
                date = struct.unpack(f'>{date_length - 1}s', b[0:date_length - 1])[0].decode('ascii')
                date = datetime.datetime.strptime(date, cls.DATE_FORMAT).date()
            b = b[date_length + 1:] # b'\x64
            time_length = struct.unpack('>H', b[0:2])[0]
            b = b[2:]
            if time_length > 1:
                if time_length != 0x0009:
                    raise Exception(f'Unsupported time length: {time_length}')
                time = struct.unpack(f'>{time_length - 1}s', b[0:time_length - 1])[0].decode('ascii')
                time = datetime.datetime.strptime(time, cls.TIME_FORMAT).time()
            b = b[time_length + 1:] # b'\x65
        while len(b) > (i + 4):
            w = struct.unpack('>I', b[i:i + 4])[0]
            if w == cls.SYNC_WORD:
                break
            i += 1
        if w != cls.SYNC_WORD:
            raise Exception('SYNC word not found')
        i += 4
        data = cls(config, part, date, time)
        packet = None
        while len(b) >= (i + 4):
            packet = ConfigurationPacket.from_bytes(b[i:], packet)
            data.packets.append(packet)
            i += (1 + len(packet.data)) * 4
        if len(b) != i:
            raise Exception('Unexpected trailing bytes')
        return data

    @classmethod
    def from_file(cls, path):
        with open(path, 'rb') as f:
            return cls.from_bytes(f.read())

    def to_bin(self, path: str):
        with open(path, 'wb') as f:
            f.write(bytes(self))

    def to_bit(self, path: str, config=None, part=None, date=None, time=None):
        now = datetime.datetime.now()
        with open(path, 'wb') as f:
            f.write(self.BIT_PREAMBLE)
            if config is None:
                if self.config is None:
                    config = ''
                else:
                   config = self.config
            if part is None:
                if self.part is None:
                    part = ''
                else:
                    part = self.part
            f.write(struct.pack('>H', len(config) + 1))
            f.write(bytes(config, 'ascii'))
            f.write(b'\x00\x62')
            f.write(struct.pack('>H', len(part) + 1))
            f.write(bytes(part, 'ascii'))
            f.write(b'\x00\x63\x00\x0b')
            if date is None:
                if self.date is None:
                    date = now.date()
                else:
                    date = self.date
            if not isinstance(date, datetime.date):
                raise Exception('Date must be an instance of datetime.date')
            f.write(bytes(date.strftime(self.DATE_FORMAT), 'ascii'))
            f.write(b'\x00\x64\x00\x09')
            if time is None:
                if self.time is None:
                    time = now.time()
                else:
                    time = self.time
            if not isinstance(time, datetime.time):
                raise Exception('Time must be an instance of datetime.time')
            f.write(bytes(time.strftime(self.TIME_FORMAT), 'ascii'))
            f.write(b'\x00\x65');
            b = bytes(self)
            f.write(struct.pack('>I', len(b)))
            f.write(b)

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

    def __init__(self, type, opcode, address, data):
        self.type = type
        self.opcode = opcode
        self.address = address
        self.data = data

    def __bytes__(self):
        b = struct.pack('>I',
            (self.type << 29) |
            (self.opcode.value << 27) |
            ((self.address.value << 13) if self.type == 1 else 0) |
            len(self.data)
        )
        for data in self.data:
            b += struct.pack('>I', data)
        return b

    def crc(self, crc):
        if self.opcode != self.OpCode.WRITE:
            return crc
        if self.address == self.Address.CMD and self.data[0] & 0x1F == 7: # RCRC
            return 0
        if self.address == self.Address.CRC: # Cleared when checked
            return 0
        if self.address in [
            self.Address.UNKNOWN_15,
            self.Address.UNKNOWN_18,
            self.Address.UNKNOWN_20,
            self.Address.UNKNOWN_21,
            self.Address.BOOTSTS
        ]:
            return crc
        for data in self.data:
            crc = self.crc32c(self.address.value, data, crc)
        return crc

    @staticmethod
    def crc32c(addr, data, crc):
        val = (addr << 32) | data
        for i in range(0, 37):
            if (val & 1) != (crc & 1):
                crc ^= 0x82F63B78 << 1;
            val >>= 1
            crc >>= 1
        return crc

    @classmethod
    def from_bytes(cls, b, packet=None):
        if len(b) < 4:
            raise Exception('Insufficient bytes for packet header')
        word = struct.unpack('>I', b[0:4])[0]
        type = word >> 29
        opcode = cls.OpCode((word >> 27) & 0x3)
        if type == 1:
            address = cls.Address((word >> 13) & 0x1F)
            word_count = word & 0x7FF
        elif type == 2:
            if packet is None:
                raise Exception('Type 2 packets require previous packet')
            if packet.type != 1:
                raise Exception('Type 2 packet require previous Type 1 packet')
            address = packet.address
            word_count = word & 0x07FFFFFF
        else:
            raise Exception(f'Unsupported Packet Type {type}')
        if len(b) < (word_count + 1) * 4:
            raise Exception('Insufficient bytes for packet data')
        data = []
        for p in [b[i + 4:i + 8] for i in range(0, word_count * 4, 4)]:
            data.append(struct.unpack('>I', p)[0])
        return cls(type, opcode, address, data)

    @property
    def header(self):
        return '<0x{:08X}>: Type {}, OpCode: {}{}, Word Count: {}'.format(
            (self.type << 29) | (self.opcode.value << 27) | ((self.address.value << 13) if self.type == 1 else 0) | len(self.data),
            self.type,
            self.opcode.name,
            ', Address: {}'.format(self.address.name) if self.type == 1 else '',
            len(self.data)
        )

def crc7series(buffer):
    crc = 0
    packet = None
    i = 0
    # while (i + 4) <= len(buffer):
    #     packet = ConfigurationPacket.from_bytes(buffer[i:], packet)
    #     i += 4 * (len(packet.data) + 1)
    #     crc = packet.crc(crc)
    
    for pkt in buffer:
        crc = pkt.crc(crc)
    return crc

if __name__ == '__main__':
    # import argparse
    # parser = argparse.ArgumentParser(description='Xilinx 7-Series Bitstream Regenerator (updates CRC checksums)')
    # parser.add_argument('infile', nargs=1, type=str, help='Path of input bitstream file')
    # parser.add_argument('outfile', nargs='?', type=str, help='Path of output regenerated bitstream file, defaults to infile')
    # args = parser.parse_args()
    # infile = args.infile[0]
    # outfile = args.outfile
    # if args.outfile is None:
    #     outfile = infile
    infile = 'Bitstreams/x.bit'
    outfile = 'test.bit'
    data = ConfigurationData.from_file(infile)
    # if outfile.endswith('.bit'):
    #     data.to_bit(outfile)
    # elif outfile.endswith('.bin'):
    #     data.to_bin(outfile)
    # else:
    #     if (data.config is not None or data.part is not None or
    #         data.date is not None or data.time is not None):
    #         data.to_bit(outfile)
    #     else:
    #         data.to_bin(outfile)
            
    crc = crc7series(data.packets)
    data.__bytes__()
    print(crc)