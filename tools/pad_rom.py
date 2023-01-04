# SPDX-License-Identifier: CC0-1.0

import sys
import os


def main():
    if len(sys.argv) != 2:
        print("Usage:", sys.argv[0], "<rom.z64>", file=sys.stderr)
        exit(1)

    rom_file_path = sys.argv[1]
    with open(rom_file_path, "rb+") as f:
        rom_size = os.fstat(f.fileno()).st_size

        pad00_align = 0x1000
        padFF_align = 0x100000
        pad00_rom_size = (rom_size + pad00_align - 1) // pad00_align * pad00_align
        padFF_rom_size = (pad00_rom_size + padFF_align - 1) // padFF_align * padFF_align
        pad00_n_bytes = pad00_rom_size - rom_size
        assert pad00_n_bytes >= 0
        padFF_n_bytes = padFF_rom_size - pad00_rom_size
        assert padFF_n_bytes >= 0

        f.seek(0, os.SEEK_END)
        if pad00_n_bytes != 0:
            f.write(b"\x00" * pad00_n_bytes)
        if padFF_n_bytes != 0:
            f.write(b"\xFF" * padFF_n_bytes)


if __name__ == "__main__":
    main()
