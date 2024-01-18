#!/usr/bin/env python3

from __future__ import annotations

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
    "gc-eu-mq-dbg":    0x12F70,
    "gc-eu-mq":        0x07170,
}

VERSIONS_MD5S = {
    "gc-eu-mq-dbg":           "f0b7f35375f9cc8ca1b2d59d78e35405",
    "gc-eu-mq":               "1a438f4235f8038856971c14a798122a",
}

def round_up(n,shift):
    mod = 1 << shift
    return (n + mod - 1) >> shift << shift 

def as_word_list(b) -> list[int]:
    return [i[0] for i in struct.iter_unpack(">I",  b)]

def read_dmadata_entry(fileContent: bytearray, addr: int) -> list[int]:
    return as_word_list(fileContent[addr:addr+0x10])

def read_dmadata(fileContent: bytearray, start) -> list[list[int]]:
    dmadata = []
    addr = start
    entry = read_dmadata_entry(fileContent, addr)
    i = 0
    while any([e != 0 for e in entry]):
        dmadata.append(entry)
        addr += 0x10
        i += 1
        entry = read_dmadata_entry(fileContent, addr)
    return dmadata

def update_crc(decompressed: io.BytesIO) -> io.BytesIO:
    print("Recalculating crc...")
    calculated_checksum = ipl3checksum.CICKind.CIC_X105.calculateChecksum(bytes(decompressed.getbuffer()))
    new_crc = struct.pack(f">II", calculated_checksum[0], calculated_checksum[1])

    decompressed.seek(0x10)
    decompressed.write(new_crc)
    return decompressed

def decompress_rom(fileContent: bytearray, dmadata_addr: int, dmadata: list[list[int]], version: str) -> bytearray:
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
            rom_segments.update({v_start : decompress(fileContent[p_start:p_end], version in {"iqs", "iqt", "cn"})})
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
    return bytearray(update_crc(decompressed).getbuffer())


def get_str_hash(byte_array):
    return str(hashlib.md5(byte_array).hexdigest())

def check_existing_rom(rom_path: Path, correct_str_hash: str):
    # If the baserom exists and is correct, we don't need to change anything
    if rom_path.exists():
        if get_str_hash(rom_path.read_bytes()) == correct_str_hash:
            return True
    return False

def wordSwapFile(fileContent: bytearray) -> bytearray:
    words = str(int(len(fileContent)/4))
    little_byte_format = "<" + words + "I"
    big_byte_format = ">" + words + "I"
    tmp = struct.unpack_from(little_byte_format, fileContent, 0)
    struct.pack_into(big_byte_format, fileContent, 0, *tmp)
    return fileContent

def byteSwapFile(fileContent: bytearray) -> bytearray:
    halfwords = str(int(len(fileContent)/2))
    little_byte_format = "<" + halfwords + "H"
    big_byte_format = ">" + halfwords + "H"
    tmp = struct.unpack_from(little_byte_format, fileContent, 0)
    struct.pack_into(big_byte_format, fileContent, 0, *tmp)
    return fileContent

def perVersionFixes(fileContent: bytearray, version: str) -> bytearray:
    if version == "gc-eu-mq-dbg":
        # Strip the overdump
        print("Stripping overdump...")
        fileContent = fileContent[0:0x3600000]

        # Patch the header
        print("Patching header...")
        fileContent[0x3E] = 0x50
    return fileContent

def pad_rom(fileContent: bytearray, dmadata: list[list[int]]) -> bytearray:
    padding_start = round_up(dmadata[-1][1], 12)
    padding_end = round_up(dmadata[-1][1], 14)
    print(f"Padding from {padding_start:X} to {padding_end:X}...")
    for i in range(padding_start,padding_end):
        fileContent[i] = 0xFF
    return fileContent

def main():
    description = "Convert a rom that uses dmadata to an uncompressed one."

    parser = argparse.ArgumentParser(description=description)
    parser.add_argument("version", help="Version of the game to decompress.")

    args = parser.parse_args()

    version   = args.version

    uncompressed_path = Path(f"baserom_uncompressed.{version}.z64")

    file_table_offset = FILE_TABLE_OFFSET[version]
    correct_str_hash = VERSIONS_MD5S[version]

    if check_existing_rom(uncompressed_path, correct_str_hash):
        print("Found valid baserom - exiting early")
        return

    # Determine if we have a ROM file
    romFileExtensions = ["z64", "n64", "v64"]

    def find_baserom_original() -> Path|None:
        for romFileExtLower in romFileExtensions:
            for romFileExt in (romFileExtLower, romFileExtLower.upper()):
                romFileNameCandidate = Path(f"baserom.{version}.{romFileExt}")
                if romFileNameCandidate.exists():
                    return romFileNameCandidate
        return None

    romFileName = find_baserom_original()

    if romFileName is None:
        path_list = [f"baserom.{version}.{romFileExt}" for romFileExt in romFileExtensions]
        print(f"Error: Could not find {'/'.join(path_list)}.")
        sys.exit(1)

    # Read in the original ROM
    print(f"File '{romFileName}' found.")

    fileContent = bytearray(romFileName.read_bytes())

    # Check if ROM needs to be byte/word swapped
    # Little-endian
    if fileContent[0] == 0x40:
        # Word Swap ROM
        print("ROM needs to be word swapped...")
        fileContent = wordSwapFile(fileContent)
        print("Word swapping done.")

    # Byte-swapped
    elif fileContent[0] == 0x37:
        # Byte Swap ROM
        print("ROM needs to be byte swapped...")
        fileContent = byteSwapFile(fileContent)
        print("Byte swapping done.")

    dmadata = read_dmadata(fileContent, file_table_offset)
    # Decompress
    if any([b != 0 for b in fileContent[file_table_offset + 0xAC:file_table_offset + 0xAC + 0x4]]):
        print("Decompressing rom...")
        fileContent = decompress_rom(fileContent, file_table_offset, dmadata, version)

    fileContent = pad_rom(fileContent, dmadata)

    # Check to see if the ROM is a "vanilla" ROM
    str_hash = get_str_hash(fileContent)
    if str_hash != correct_str_hash:
        print(f"Error: Expected a hash of {correct_str_hash} but got {str_hash}. The baserom has probably been tampered, find a new one")

        if version == "gc-eu-mq-dbg":
            if str_hash == "32fe2770c0f9b1a9cd2a4d449348c1cb":
                print("The provided baserom is a rom which has been edited with ZeldaEdit and is not suitable for use with decomp. Find a new one.")

        sys.exit(1)

    # Write out our new ROM
    print(f"Writing new ROM {uncompressed_path}.")
    uncompressed_path.write_bytes(fileContent)

    print("Done!")

if __name__ == "__main__":
    main()
