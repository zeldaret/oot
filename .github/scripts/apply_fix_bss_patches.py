# SPDX-FileCopyrightText: © 2026 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

from pathlib import Path
import re
import subprocess


def get_increment_block_numbers(p: Path, version: str):
    increment_block_numbers: list[int] = []
    is_in_pragma = False
    n_fake_structs = None
    for l in p.read_text().splitlines():
        if l.startswith("#pragma increment_block_number"):
            is_in_pragma = True
            n_fake_structs = 0
        if is_in_pragma:
            m = next(re.finditer(rf"{version}:(\d+)", l), None)
            if m is not None:
                n_fake_structs = int(m.group(1))
        if is_in_pragma and not l.endswith("\\"):
            is_in_pragma = False
            assert n_fake_structs is not None
            increment_block_numbers.append(n_fake_structs)
            n_fake_structs = None
    return increment_block_numbers


# Formats #pragma increment_block_number as a list of lines
def format_pragma(amounts: dict[str, int], max_line_length: int) -> list[str]:
    lines = []
    pragma_start = "#pragma increment_block_number "
    current_line = pragma_start + '"'
    first = True
    for version, amount in sorted(amounts.items()):
        part = f"{version}:{amount}"
        if len(current_line) + len(" ") + len(part) + len('" \\') > max_line_length:
            lines.append(current_line + '" ')
            current_line = " " * len(pragma_start) + '"'
            first = True
        if not first:
            current_line += " "
        current_line += part
        first = False
    lines.append(current_line + '"\n')

    if len(lines) >= 2:
        # add and align vertically all continuation \ characters
        n_align = max(map(len, lines[:-1]))
        for i in range(len(lines) - 1):
            lines[i] = f"{lines[i]:{n_align}}\\\n"

    return lines


def set_increment_block_numbers(
    p: Path, increment_block_numbers_by_version: dict[str, list[int]]
):
    print(p, increment_block_numbers_by_version)
    i_pragma = 0
    is_in_pragma = False
    pragma_lines = []
    new_lines = []
    for l in p.read_text().splitlines(keepends=True):
        if l.startswith("#pragma increment_block_number"):
            is_in_pragma = True
        if not is_in_pragma:
            new_lines.append(l)
        if is_in_pragma:
            pragma_lines.append(l.removesuffix("\\\n"))
        if is_in_pragma and not l.endswith("\\\n"):
            is_in_pragma = False
            pragma_string = "".join(pragma_lines)
            amounts: dict[str, int] = {}
            for part in pragma_string.replace('"', "").split()[2:]:
                version, amount_str = part.split(":")
                amount = int(amount_str)
                amounts[version] = amount
            for (
                version,
                increment_block_numbers,
            ) in increment_block_numbers_by_version.items():
                amounts[version] = increment_block_numbers[i_pragma]
            i_pragma += 1
            column_limit = 120  # matches .clang-format's ColumnLimit
            new_pragma_lines = format_pragma(amounts, column_limit)
            new_lines.extend(new_pragma_lines)
    p.write_text("".join(new_lines))


increment_block_numbers_by_version_by_file: dict[Path, dict[str, list[int]]] = {}
for p in Path(".").glob("fix_bss_*.patch"):
    version = p.name.removeprefix("fix_bss_").removesuffix(".patch")
    subprocess.check_call(["git", "apply", str(p)])
    touched_files = subprocess.check_output(
        "git diff --name-only".split(),
        text=True,
    ).splitlines()
    for file in touched_files:
        file_p = Path(file)
        increment_block_numbers = get_increment_block_numbers(file_p, version)
        increment_block_numbers_by_version_by_file.setdefault(file_p, {})[
            version
        ] = increment_block_numbers
    subprocess.check_call("git checkout -- .".split())


for (
    file,
    increment_block_numbers_by_version,
) in increment_block_numbers_by_version_by_file.items():
    set_increment_block_numbers(file, increment_block_numbers_by_version)
