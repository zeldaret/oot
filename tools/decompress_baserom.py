#!/usr/bin/env python3

import hashlib, io, struct, sys
from pathlib import Path
import argparse

import crunch64
import ipl3checksum
import zlib

def decompressZlib(data: bytes) -> bytes:
    decomp = zlib.decompressobj(-zlib.MAX_WBITS)
    output = bytearray()
    output.extend(decomp.decompress(data))
    while decomp.unconsumed_tail:
        output.extend(decomp.decompress(decomp.unconsumed_tail))
    output.extend(decomp.flush())
    return bytes(output)

def decompress(data: bytes, is_zlib_compressed: bool) -> bytes:
    if is_zlib_compressed:
        return decompressZlib(data)
    return crunch64.yaz0.decompress(bytes(data))

FILE_TABLE_OFFSET = {
    "NER":        0x07430, # a.k.a. NN0 RC
    "NE0":        0x07430,
    "NE1":        0x07430,
    "NP0":        0x07950,
    "NE2":        0x07960,
    "NP1":        0x07950,
    "NEG":        0x07A40,
    "CJO":        0x07170,
    "CJM":        0x07170,
    "CEO":        0x07170,
    "CEM":        0x07170,
    "CPOD1":      0x12F70,
    "gc-eu-mq-dbg":       0x12F70,
    "CPOD2":      0x12F70,
    "CPO":        0x07170,
    "gc-eu-mq":        0x07170,
    "CJC":        0x07170, # Zelda collection
    "IQS":        0x0B7A0,
    "IQT":        0x0B240,
}

VERSIONS_MD5S = {
    "NJR":            None,
    "NER":            "21f7b4a4ff463464bfc23498c1ab9da1", # a.k.a. NTSC 1.0 RC
    "NJ0":            "9f04c8e68534b870f707c247fa4b50fc",
    "NE0":            "5bd1fe107bf8106b2ab6650abecd54d6",
    "NJ1":            "1bf5f42b98c3e97948f01155f12e2d88",
    "NE1":            "721fdcc6f5f34be55c43a807f2a16af4",
    "NP0":            "e040de91a74b61e3201db0e2323f768a",
    "NJ2":            "2258052847bdd056c8406a9ef6427f13",
    "NE2":            "57a9719ad547c516342e1a15d5c28c3d",
    "NP1":            "d714580dd74c2c033f5e1b6dc0aeac77",
    "NEG":            "74072c944a82c34190f412ee96a51b13",
    "PAL WII 1.1":    None,
    "CJO":            "33fb7852c180b18ea0b9620b630f413f",
    "CJM":            "69895c5c78442260f6eafb2506dc482a",
    "CEO":            "cd09029edcfb7c097ac01986a0f83d3f",
    "CEM":            "da35577fe54579f6a266931cc75f512d",
    "CPOD1":          "ab1ca59d0039e3b34d82db650b54d7b9",
    "gc-eu-mq-dbg":           "f0b7f35375f9cc8ca1b2d59d78e35405",
    "CPOD2":          "3c10b67a76616ae2c162def7528724cf",
    "CPO":            "2c27b4e000e85fd78dbca551f1b1c965",
    "gc-eu-mq":            "1a438f4235f8038856971c14a798122a",
    "CJC":            "0c13e0449a28ea5b925cdb8af8d29768", # Zelda collection
    "IQS":            "0ab48b2d44a74b3bb2d384f6170c2742",
    "IQT":            "a475e9f8615513666a265c464708ae8f",
}

description = "Convert a rom that uses dmadata to an uncompressed one."

parser = argparse.ArgumentParser(description=description)
parser.add_argument("version", help="Version of the game to decompress.")

args = parser.parse_args()

BASEROM_PATH = Path(f"baserom.{args.version}.z64")
UNCOMPRESSED_PATH = Path(f"baserom_uncompressed.{args.version}.z64")


Version   = args.version

file_table_offset = FILE_TABLE_OFFSET[Version]
correct_str_hash = VERSIONS_MD5S[Version]


def round_up(n,shift):
    mod = 1 << shift
    return (n + mod - 1) >> shift << shift 

def as_word_list(b):
    return [i[0] for i in struct.iter_unpack(">I",  b)]

def calc_crc(rom_data, cic_type):
    return bytes([0]*8)

def read_dmadata_entry(addr):
    return as_word_list(fileContent[addr:addr+0x10])

def read_dmadata(start):
    dmadata = []
    addr = start
    entry = read_dmadata_entry(addr)
    i = 0
    while any([e != 0 for e in entry]):
        # print(f"0x{addr:08X} " + str([f"{e:08X}" for e in entry]))
        dmadata.append(entry)
        addr += 0x10
        i += 1
        entry = read_dmadata_entry(addr)
    # print(f"0x{addr:08X} " + str([f"{e:08X}" for e in entry]))
    return dmadata

def update_crc(decompressed: io.BytesIO) -> io.BytesIO:
    print("Recalculating crc...")
    calculated_checksum = ipl3checksum.CICKind.CIC_X105.calculateChecksum(bytes(decompressed.getbuffer()))
    new_crc = struct.pack(f">II", calculated_checksum[0], calculated_checksum[1])

    decompressed.seek(0x10)
    decompressed.write(new_crc)
    return decompressed

def decompress_rom(dmadata_addr, dmadata):
    rom_segments = {} # vrom start : data s.t. len(data) == vrom_end - vrom_start
    new_dmadata = bytearray() # new dmadata: {vrom start , vrom end , vrom start , 0}

    decompressed = io.BytesIO(b"")

    for v_start, v_end, p_start, p_end in dmadata:
        if p_start == 0xFFFFFFFF and p_end == 0xFFFFFFFF:
            new_dmadata.extend(struct.pack(">IIII", v_start, v_end, p_start, p_end))
            continue
        if p_end == 0: # uncompressed
            rom_segments.update({v_start : fileContent[p_start:p_start + v_end - v_start]})
        else: # compressed
            rom_segments.update({v_start : decompress(fileContent[p_start:p_end], Version in {"iqs", "iqt", "cn"})})
        new_dmadata.extend(struct.pack(">IIII", v_start, v_end, v_start, 0))

    # write rom segments to vaddrs
    for vrom_st,data in rom_segments.items():
        decompressed.seek(vrom_st)
        decompressed.write(data)
    # write new dmadata
    decompressed.seek(dmadata_addr)
    decompressed.write(new_dmadata)
    # pad to size
    padding_end = round_up(dmadata[-1][1], 14)
    decompressed.seek(padding_end-1)
    decompressed.write(bytearray([0]))
    # re-calculate crc
    return update_crc(decompressed)


def get_str_hash(byte_array):
    return str(hashlib.md5(byte_array).hexdigest())

# If the baserom exists and is correct, we don't need to change anything
if UNCOMPRESSED_PATH.exists():
    with UNCOMPRESSED_PATH.open(mode="rb") as file:
        fileContent = bytearray(file.read())
        if get_str_hash(fileContent) == correct_str_hash:
            print("Found valid baserom - exiting early")
            sys.exit(0)

# Determine if we have a ROM file
romFileName = BASEROM_PATH
# if path.exists("baserom.mm.us.rev1.z64"):
#     romFileName = "baserom.mm.us.rev1.z64"
# elif path.exists("baserom.mm.us.rev1.n64"):
#     romFileName = "baserom.mm.us.rev1.n64"
# elif path.exists("baserom.mm.us.rev1.v64"):
#     romFileName = "baserom.mm.us.rev1.v64"
# else:
#     print("Error: Could not find baserom.mm.us.rev1.z64/baserom.mm.us.rev1.n64/baserom.mm.us.rev1.v64.")
#     sys.exit(1)

# Read in the original ROM
print(f"File '{str(romFileName)}' found.")

fileContent = bytearray(romFileName.read_bytes())

fileContentLen = len(fileContent)

# Check if ROM needs to be byte/word swapped
# Little-endian
if fileContent[0] == 0x40:
    # Word Swap ROM
    print("ROM needs to be word swapped...")
    words = str(int(fileContentLen/4))
    little_byte_format = "<" + words + "I"
    big_byte_format = ">" + words + "I"
    tmp = struct.unpack_from(little_byte_format, fileContent, 0)
    struct.pack_into(big_byte_format, fileContent, 0, *tmp)

    print("Word swapping done.")

# Byte-swapped
elif fileContent[0] == 0x37:
    # Byte Swap ROM
    print("ROM needs to be byte swapped...")
    halfwords = str(int(fileContentLen/2))
    little_byte_format = "<" + halfwords + "H"
    big_byte_format = ">" + halfwords + "H"
    tmp = struct.unpack_from(little_byte_format, fileContent, 0)
    struct.pack_into(big_byte_format, fileContent, 0, *tmp)

    print("Byte swapping done.")

dmadata = read_dmadata(file_table_offset)
# Decompress
if any([b != 0 for b in fileContent[file_table_offset + 0xAC:file_table_offset + 0xAC + 0x4]]):
    print("Decompressing rom...")
    fileContent = decompress_rom(file_table_offset, dmadata).getbuffer()
    print(f"{len(fileContent):X}")

padding_start = round_up(dmadata[-1][1], 12)
padding_end = round_up(dmadata[-1][1], 14)
print(f"Padding from {padding_start:X} to {padding_end:X}...")
for i in range(padding_start,padding_end):
    fileContent[i] = 0xFF

# Check to see if the ROM is a "vanilla" ROM
str_hash = get_str_hash(bytearray(fileContent))
if str_hash != correct_str_hash:
    print("Error: Expected a hash of " + correct_str_hash + " but got " + str_hash + ". " +
          "The baserom has probably been tampered, find a new one")
    sys.exit(1)

# Write out our new ROM
print(f"Writing new ROM {UNCOMPRESSED_PATH}.")
with UNCOMPRESSED_PATH.open("wb") as file:
    file.write(bytes(fileContent))

print("Done!")
