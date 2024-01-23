import argparse
from pathlib import Path
import struct

import ipl3checksum

parser = argparse.ArgumentParser()
parser.add_argument("rom")
args = parser.parse_args()

rom_path = Path(args.rom)

checksum_lo, checksum_hi = ipl3checksum.calculateChecksum(
    rom_path.read_bytes(), ipl3checksum.CICKind.CIC_X105
)

with rom_path.open("rb+") as f:
    f.seek(0x10)
    f.write(struct.pack(">II", checksum_lo, checksum_hi))
