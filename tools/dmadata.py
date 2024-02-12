# SPDX-FileCopyrightText: © 2024 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

from __future__ import annotations

import dataclasses
import struct


STRUCT_IIII = struct.Struct(">IIII")


@dataclasses.dataclass
class DmaEntry:
    """
    A Python counterpart to the dmadata entry struct:
    ```c
    typedef struct {
        /* 0x00 */ uintptr_t vromStart;
        /* 0x04 */ uintptr_t vromEnd;
        /* 0x08 */ uintptr_t romStart;
        /* 0x0C */ uintptr_t romEnd;
    } DmaEntry;
    ```
    """

    vrom_start: int
    vrom_end: int
    rom_start: int
    rom_end: int

    def __repr__(self):
        return (
            "DmaEntry("
            f"vrom_start=0x{self.vrom_start:08X}, "
            f"vrom_end=0x{self.vrom_end:08X}, "
            f"rom_start=0x{self.rom_start:08X}, "
            f"rom_end=0x{self.rom_end:08X}"
            ")"
        )

    SIZE_BYTES = STRUCT_IIII.size

    def to_bin(self, data: memoryview):
        STRUCT_IIII.pack_into(
            data,
            0,
            self.vrom_start,
            self.vrom_end,
            self.rom_start,
            self.rom_end,
        )

    @staticmethod
    def from_bin(data: memoryview):
        return DmaEntry(*STRUCT_IIII.unpack_from(data))

    def is_compressed(self) -> bool:
        return self.rom_end != 0

    def is_syms(self) -> bool:
        """
        "SYMS" DMA entries describe segments that are always filled with 0's in the ROM.
        The DMA entry has both rom_start and rom_end set to 0xFFFFFFFF, where the actual rom start and end is given by vrom_start and vrom_end instead.
        These zeroed segments are used to record the offsets/sizes of subfiles in compressed yaz0 archive files but are not used by the game directly.
        """
        return self.rom_start == 0xFFFFFFFF and self.rom_end == 0xFFFFFFFF


DMA_ENTRY_END = DmaEntry(0, 0, 0, 0)


def read_dmadata(rom_data: memoryview, start_offset: int) -> list[DmaEntry]:
    result = []

    offset = start_offset
    while (
        entry := DmaEntry.from_bin(rom_data[offset : offset + DmaEntry.SIZE_BYTES])
    ) != DMA_ENTRY_END:
        result.append(entry)
        offset += DmaEntry.SIZE_BYTES

    return result
