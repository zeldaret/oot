#!/usr/bin/env python3

# SPDX-FileCopyrightText: © 2024 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

# Preprocess a C file to:
# * Re-encode from UTF-8 to EUC-JP
# * Replace `#pragma increment_block_number i` with `i` fake structs for controlling BSS ordering

from pathlib import Path
import os
import tempfile
import subprocess
import sys


def fail(message):
    print(message, file=sys.stderr)
    sys.exit(1)


def process_file(filename, input, output):
    output.write(f'#line 1 "{filename}"\n')
    for i, line in enumerate(input, start=1):
        if line.startswith("#pragma increment_block_number"):
            parts = line.split()
            if len(parts) != 3:
                fail(
                    f"{filename}:{i}: increment_block_number must be followed by an integer"
                )
            try:
                amount = int(parts[2])
            except ValueError:
                fail(
                    f"{filename}:{i}: increment_block_number must be followed by an integer"
                )
            # Write fake structs for BSS ordering
            for j in range(amount):
                output.write(f"struct DummyStruct_{i:05}_{j:03};\n")
            output.write(f'#line {i + 1} "{filename}"\n')
        else:
            output.write(line)


def main():
    filename = Path(sys.argv[-1])
    with tempfile.NamedTemporaryFile(
        mode="w", prefix=f"oot_{filename.stem}_", suffix=".c", encoding="euc-jp"
    ) as tmp:
        with open(filename, "r", encoding="utf-8") as f:
            process_file(filename, f, tmp)
        tmp.flush()

        compile_command = sys.argv[1:-1] + ["-I", filename.parent, tmp.name]
        process = subprocess.run(compile_command)
        return process.returncode


if __name__ == "__main__":
    try:
        sys.exit(main())
    except KeyboardInterrupt:
        sys.exit(1)
