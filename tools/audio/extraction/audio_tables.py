# SPDX-FileCopyrightText: © 2024 ZeldaRET
# SPDX-License-Identifier: CC0-1.0
#
#   Implements code tables structure and related enums
#

import struct
from enum import IntEnum

from .util import incbin

class AudioStorageMedium(IntEnum):
    MEDIUM_RAM = 0
    MEDIUM_UNK = 1
    MEDIUM_CART = 2
    MEDIUM_DISK_DRIVE = 3

class AudioCachePolicy(IntEnum):
    CACHE_LOAD_PERMANENT = 0
    CACHE_LOAD_PERSISTENT = 1
    CACHE_LOAD_TEMPORARY = 2
    CACHE_LOAD_EITHER = 3
    CACHE_LOAD_EITHER_NOSYNC = 4

class AudioCodeTableEntry:
    """
    typedef struct {
        /* 0x00 */ u32 romAddr;
        /* 0x04 */ u32 size;
        /* 0x08 */ s8 medium;
        /* 0x09 */ s8 cachePolicy;
        /* 0x0A */ s16 shortData1;
        /* 0x0C */ s16 shortData2;
        /* 0x0E */ s16 shortData3;
    } AudioTableEntry; // size = 0x10
    """
    def __init__(self, data):
        self.rom_addr, self.size, self.medium, self.cache_policy, self.short_data1, self.short_data2, \
            self.short_data3 = struct.unpack(">IIbbhhh", data[:0x10])

        self.medium = AudioStorageMedium(self.medium)
        self.cache_policy = AudioCachePolicy(self.cache_policy)

        self.sample_bank_id_1 = (self.short_data1 >> 8) & 0xFF
        self.sample_bank_id_2 = (self.short_data1 >> 0) & 0xFF

        self.num_instruments = (self.short_data2 >> 8) & 0xFF
        self.num_drums =       (self.short_data2 >> 0) & 0xFF

        self.num_sfx = self.short_data3

    def __str__(self):
        out = "{\n"
        out += f"    .romAddr = 0x{self.rom_addr:X}\n"
        out += f"    .size = 0x{self.size:X}\n"
        out += f"    .medium = {self.medium.name}\n"
        out += f"    .cachePolicy = {self.cache_policy.name}\n"
        out += f"    .shortData1 = ({self.sample_bank_id_1} << 8) | {self.sample_bank_id_2}\n"
        out += f"    .shortData2 = ({self.num_instruments} << 8) | {self.num_drums}\n"
        out += f"    .shortData3 = {self.num_sfx}\n"
        out += "}\n"
        return out

    def data(self, segment_data : memoryview, segment_offset : int) -> memoryview:
        return incbin(segment_data, self.rom_addr + segment_offset, self.size)

class AudioCodeTable:
    """
    typedef struct {
        /* 0x00 */ s16 numEntries;
        /* 0x02 */ s16 unkMediumParam;
        /* 0x04 */ u32 romAddr;
        /* 0x08 */ char pad[0x8];
        /* 0x10 */ AudioTableEntry entries[1/* numEntries */];
    } AudioTable; // size = 0x10 + 0x10 * numEntries
    """

    def __init__(self, rom_image : memoryview, rom_start : int):
        header = incbin(rom_image, rom_start, 0x10)

        self.num_entries, self.unk_medium_param, self.rom_addr = struct.unpack(">hhI", header[:8])
        assert all([b == 0 for b in header[8:]])

        self.data = incbin(rom_image, rom_start, 0x10 + 0x10 * self.num_entries)

        self.entries = []
        for i in range(self.num_entries):
            self.entries.append(AudioCodeTableEntry(self.data[0x10 + 0x10 * i:][:0x10]))

    def __iter__(self) -> AudioCodeTableEntry:
        for e in self.entries:
            yield e

    def __len__(self):
        return len(self.entries)

    def __str__(self):
        out = "{\n"
        out += f"    .numEntries = {self.num_entries}\n"
        out += f"    .unkMediumParam = {self.unk_medium_param}\n"
        out += f"    .romAddr = 0x{self.rom_addr:X}\n"
        out +=  "    .entries = {\n"
        for entry in self.entries:
            out += str(entry) + "\n"
        out +=  "    }\n"
        out += "}\n"
        return out
