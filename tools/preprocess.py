#!/usr/bin/env python3

# SPDX-FileCopyrightText: © 2024 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

# Usage: preprocess.py [flags] -- [compile command minus input file...] [single input file]
# Preprocess a C file to:
# * Re-encode from UTF-8 to EUC-JP (the repo uses UTF-8 for text encoding, but
#   the strings in the ROM are encoded in EUC-JP)
# * Replace `#pragma increment_block_number` with fake structs for controlling BSS ordering

import argparse
from pathlib import Path
import re
import tempfile
import subprocess
import sys
import typing


def fail(message):
    print(message, file=sys.stderr)
    sys.exit(1)


def process_file(
    version: str,
    filename: str,
    input: typing.TextIO,
    output: typing.TextIO,
):
    output.write(f'#line 1 "{filename}"\n')
    # whether the current line follows a #pragma increment_block_number,
    # including continuation lines (lines after a \-ending line)
    in_pragma_incblocknum = False
    # the line where the #pragma increment_block_number is
    pragma_incblocknum_first_line_num = None
    # all the lines from the #pragma increment_block_number line to the last
    # continuation line, as a list[str]
    pragma_incblocknum_lines = None
    for i, line in enumerate(input, start=1):
        if not in_pragma_incblocknum and line.startswith(
            "#pragma increment_block_number"
        ):
            in_pragma_incblocknum = True
            pragma_incblocknum_first_line_num = i
            pragma_incblocknum_lines = []

        if in_pragma_incblocknum:
            if line.endswith("\\\n"):
                pragma_incblocknum_lines.append(line)
            else:
                in_pragma_incblocknum = False
                pragma_incblocknum_lines.append(line)
                amount = 0
                for s in pragma_incblocknum_lines:
                    # Note if we had two versions like "abc-def-version" and "def-version"
                    # then this code would find either given "def-version", but
                    # thankfully we don't have such nested version names.
                    m = re.search(rf"{version}:(\d+)\b", s)
                    if m:
                        amount = int(m.group(1))
                        break

                # Always generate at least one struct,
                # so that fix_bss.py can know where the increment_block_number pragmas are
                if amount == 0:
                    amount = 256

                # Write fake structs for BSS ordering
                # pragma_incblocknum_first_line_num is used for symbol uniqueness, and
                # also by fix_bss.py to locate the pragma these symbols originate from.
                for j in range(amount):
                    output.write(
                        "struct increment_block_number_"
                        f"{pragma_incblocknum_first_line_num:05}_{j:03};\n"
                    )
                output.write(f'#line {i + 1} "{filename}"\n')
        else:
            output.write(line)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("-v", "--oot-version", help="Which version should be processed")
    parser.add_argument(
        "args",
        nargs="+",
    )

    args = parser.parse_args()

    filename = Path(args.args[-1])
    with tempfile.TemporaryDirectory(prefix="oot_") as tmpdir:
        tmpfile = Path(tmpdir) / filename.name

        with open(filename, mode="r", encoding="utf-8") as input:
            with open(tmpfile, mode="w", encoding="euc-jp") as output:
                process_file(args.oot_version, filename, input, output)

        compile_command = args.args[:-1] + ["-I", filename.parent, tmpfile]
        process = subprocess.run(compile_command)
        return process.returncode


if __name__ == "__main__":
    try:
        sys.exit(main())
    except KeyboardInterrupt:
        sys.exit(1)
