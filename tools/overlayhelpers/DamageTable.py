import struct

ROM_ADDR = 0xDA3210
COUNT = 1

rom = open("../../baserom.z64", "rb")
rom.seek(ROM_ADDR)
data = bytearray(rom.read(0x20 * COUNT))
rom.close()

valFormat = "0x{:02X}"
sfmt = ""
for i in range(4):
    sfmt += valFormat + ", "
    
for i in range(3):
    sfmt += sfmt
    
sfmt = "{{ {{ " + sfmt + "}} }},"
for i in range(COUNT):
    line = struct.unpack_from(">32B", data, i * 0x20)
    print(sfmt.format(*line))
