#!/usr/bin/env python3

# SPDX-FileCopyrightText: © 2024 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

from __future__ import annotations

import argparse
import hashlib
import io
from pathlib import Path
import struct

import crunch64
import ipl3checksum
import zlib

import dmadata


def decompress_zlib(data: bytes) -> bytes:
    decomp = zlib.decompressobj(-zlib.MAX_WBITS)
    output = bytearray()
    output.extend(decomp.decompress(data))
    while decomp.unconsumed_tail:
        output.extend(decomp.decompress(decomp.unconsumed_tail))
    output.extend(decomp.flush())
    return bytes(output)


def decompress(data: bytes, is_zlib_compressed: bool) -> bytes:
    if is_zlib_compressed:
        return decompress_zlib(data)
    return crunch64.yaz0.decompress(data)


def round_up(n, shift):
    mod = 1 << shift
    return (n + mod - 1) >> shift << shift


def update_crc(decompressed: io.BytesIO) -> io.BytesIO:
    print("Recalculating crc...")
    calculated_checksum = ipl3checksum.CICKind.CIC_X105.calculateChecksum(
        bytes(decompressed.getbuffer())
    )
    new_crc = struct.pack(f">II", calculated_checksum[0], calculated_checksum[1])

    decompressed.seek(0x10)
    decompressed.write(new_crc)
    return decompressed


def decompress_rom(
    file_content: bytearray,
    dmadata_start: int,
    dma_entries: list[dmadata.DmaEntry],
    is_zlib_compressed: bool,
) -> bytearray:
    rom_segments = {}  # vrom start : data s.t. len(data) == vrom_end - vrom_start
    new_dmadata = []  # new dmadata: list[dmadata.Entry]

    decompressed = io.BytesIO(b"")

    for dma_entry in dma_entries:
        v_start = dma_entry.vrom_start
        v_end = dma_entry.vrom_end
        p_start = dma_entry.rom_start
        p_end = dma_entry.rom_end
        if dma_entry.is_syms():
            new_dmadata.append(dma_entry)
            continue
        if dma_entry.is_compressed():
            new_contents = decompress(file_content[p_start:p_end], is_zlib_compressed)
            rom_segments[v_start] = new_contents
        else:
            rom_segments[v_start] = file_content[p_start : p_start + v_end - v_start]
        new_dmadata.append(dmadata.DmaEntry(v_start, v_end, v_start, 0))

    # write rom segments to vaddrs
    for vrom_st, data in rom_segments.items():
        decompressed.seek(vrom_st)
        decompressed.write(data)
    # write new dmadata
    decompressed.seek(dmadata_start)
    for dma_entry in new_dmadata:
        entry_data = bytearray(dmadata.DmaEntry.SIZE_BYTES)
        dma_entry.to_bin(entry_data)
        decompressed.write(entry_data)
    # pad to size
    padding_start = dma_entries[-1].vrom_end
    padding_end = round_up(padding_start, 12)
    decompressed.seek(padding_start)
    decompressed.write(b"\x00" * (padding_end - padding_start))
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


def word_swap(file_content: bytearray) -> bytearray:
    words = str(int(len(file_content) / 4))
    little_byte_format = "<" + words + "I"
    big_byte_format = ">" + words + "I"
    tmp = struct.unpack_from(little_byte_format, file_content, 0)
    struct.pack_into(big_byte_format, file_content, 0, *tmp)
    return file_content


def byte_swap(file_content: bytearray) -> bytearray:
    halfwords = str(int(len(file_content) / 2))
    little_byte_format = "<" + halfwords + "H"
    big_byte_format = ">" + halfwords + "H"
    tmp = struct.unpack_from(little_byte_format, file_content, 0)
    struct.pack_into(big_byte_format, file_content, 0, *tmp)
    return file_content


def per_version_fixes(file_content: bytearray, version: str) -> bytearray:
    if version == "gc-eu-mq-dbg":
        # Strip the overdump, which consists of an area of 0xFF bytes (which may
        # be erased flash memory) and ROM data from an unrelated game
        print("Stripping overdump...")
        file_content = file_content[0:0x035CF000]

        # Patch the header
        print("Patching header...")
        file_content[0x3E] = 0x50
    return file_content


# Determine if we have a ROM file
ROM_FILE_EXTENSIONS = ["z64", "n64", "v64"]


def find_baserom(version: str) -> Path | None:
    for rom_file_ext_lower in ROM_FILE_EXTENSIONS:
        for rom_file_ext in (rom_file_ext_lower, rom_file_ext_lower.upper()):
            rom_file_name_candidate = Path(f"baseroms/{version}/baserom.{rom_file_ext}")
            if rom_file_name_candidate.exists():
                return rom_file_name_candidate
    return None


def main():
    parser = argparse.ArgumentParser(
        description="Convert a rom that uses dmadata to an uncompressed one."
    )
    parser.add_argument(
        "version",
        help="Version of the game to decompress.",
    )

    args = parser.parse_args()

    version = args.version

    baserom_dir = Path(f"baseroms/{version}")
    if not baserom_dir.exists():
        print(f"Error: Unknown version '{version}'.")
        exit(1)

    uncompressed_path = baserom_dir / "baserom-decompressed.z64"

    dmadata_start = int((baserom_dir / "dmadata_start.txt").read_text(), 16)
    correct_str_hash = (baserom_dir / "checksum.md5").read_text().split()[0]

    if check_existing_rom(uncompressed_path, correct_str_hash):
        print("Found valid baserom - exiting early")
        return

    rom_file_name = find_baserom(version)

    if rom_file_name is None:
        path_list = [
            f"baseroms/{version}/baserom.{rom_file_ext}"
            for rom_file_ext in ROM_FILE_EXTENSIONS
        ]
        print(f"Error: Could not find {','.join(path_list)}.")
        exit(1)

    # Read in the original ROM
    print(f"File '{rom_file_name}' found.")

    file_content = bytearray(rom_file_name.read_bytes())

    # Check if ROM needs to be byte/word swapped
    # Little-endian
    if file_content[0] == 0x40:
        # Word Swap ROM
        print("ROM needs to be word swapped...")
        file_content = word_swap(file_content)
        print("Word swapping done.")

    # Byte-swapped
    elif file_content[0] == 0x37:
        # Byte Swap ROM
        print("ROM needs to be byte swapped...")
        file_content = byte_swap(file_content)
        print("Byte swapping done.")

    file_content = per_version_fixes(file_content, version)

    dma_entries = dmadata.read_dmadata(file_content, dmadata_start)
    # Decompress
    if any(dma_entry.is_compressed() for dma_entry in dma_entries):
        print("Decompressing rom...")
        is_zlib_compressed = version in {"ique-cn", "ique-zh"}
        file_content = decompress_rom(
            file_content, dmadata_start, dma_entries, is_zlib_compressed
        )

    # Check to see if the ROM is a "vanilla" ROM
    str_hash = get_str_hash(file_content)
    if str_hash != correct_str_hash:
        print(
            f"Error: Expected a hash of {correct_str_hash} but got {str_hash}. The baserom has probably been tampered, find a new one"
        )

        if version == "gc-eu-mq-dbg":
            if str_hash == "9fede30e3239558cf3993f12b7ed7458":
                print(
                    "The provided baserom is a rom which has been edited with ZeldaEdit and is not suitable for use with decomp. Find a new one."
                )

        exit(1)

    # Write out our new ROM
    print(f"Writing new ROM {uncompressed_path}...")
    uncompressed_path.write_bytes(file_content)

    print("Done!")


if __name__ == "__main__":
    main()
