#!/usr/bin/env python3

import argparse
from collections.abc import Callable
from dataclasses import dataclass
from pathlib import Path
import re
import sys
from typing import Iterable, TextIO


ENC = "utf-8"

SYMDEF_PAT = re.compile(
    r"\s*([a-zA-Z0-9_]+\**)\s*([a-zA-Z0-9_]+)\s*(\[.*\])?\s*=\s*\{?\s*"
)
INCLUDE_PAT = re.compile(r'\s*#\s*include\s+"(.*)"\s*')


@dataclass
class CurSymInfo:
    type: str
    name: str
    is_array: bool


def inline_includes(
    lines_in: Iterable[str],
    extracted_path: Path,
    f_out: TextIO,
    should_inline_callback: Callable[[CurSymInfo, Path], bool],
    link_pngs: bool,
):
    cur_sym_info: CurSymInfo | None = None
    for l in lines_in:
        m = SYMDEF_PAT.match(l)
        if m:
            cur_sym_info = CurSymInfo(m[1], m[2], m[3] is not None)
        else:
            assert "=" not in l, l

        m = INCLUDE_PAT.match(l)
        if not m:
            f_out.write(l)
            continue

        inlined = False

        if cur_sym_info is not None:
            inc_p = extracted_path / m[1]
            if inc_p.exists():
                if should_inline_callback(cur_sym_info, inc_p):
                    inc_text = inc_p.read_text(encoding=ENC)
                    while inc_text.endswith("\n"):
                        inc_text = inc_text.removesuffix("\n")
                    f_out.write(inc_text)
                    f_out.write("\n")
                    inlined = True
            else:
                if link_pngs:
                    candidate_png_p = inc_p.with_suffix("").with_suffix(".png")
                    if candidate_png_p.exists():
                        f_out.write(f"// file://{candidate_png_p.resolve()}\n")

        if not inlined:
            f_out.write(l)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "in_file",
        help="Path to input file",
        type=Path,
    )
    parser.add_argument(
        "-o",
        help=(
            "Path to output file"
            " (default: path of the input file with a .inline suffix)"
        ),
        type=Path,
        dest="out_file",
    )
    parser.add_argument(
        "-v",
        help=(
            "OoT version to inline included assets from."
            " (default: derived from the input file path, if possible)"
        ),
        dest="oot_version",
    )
    parser.add_argument(
        "--type",
        "-t",
        help=(
            "A type to inline, such as Gfx[], Vtx[] or AnimationHeader."
            " This option can be supplied several times."
            " (if none is provided, the program will interactively ask)"
        ),
        action="append",
        dest="types",
    )
    parser.add_argument(
        "--link-pngs",
        "-l",
        help=(
            "Link png images corresponding to .inc.c files with `// file://` comments."
        ),
        action="store_true",
        dest="link_pngs",
    )
    args = parser.parse_args()

    in_file: Path = args.in_file

    if args.out_file is not None:
        out_file: Path = args.out_file
    else:
        out_file = in_file.with_suffix(f".inline{in_file.suffix}")

    if args.oot_version is not None:
        extracted_path = Path(f"extracted/{args.oot_version}")
    elif in_file.is_relative_to("extracted"):
        extracted_path = Path(*in_file.parts[:2])
    else:
        print("You must specify a game version with -v")
        sys.exit(1)

    if args.types:
        sym_types_to_inline = set(args.types)

        def should_inline_callback(cur_sym_info: CurSymInfo, inc_p: Path):
            cur_sym_type = cur_sym_info.type + ("[]" if cur_sym_info.is_array else "")
            return cur_sym_type in sym_types_to_inline

    else:
        sym_types_to_inline = set[str]()
        sym_types_to_not_inline = set[str]()

        def should_inline_callback(cur_sym_info: CurSymInfo, inc_p: Path):
            cur_sym_type = cur_sym_info.type + ("[]" if cur_sym_info.is_array else "")
            if cur_sym_type in sym_types_to_inline:
                return True
            if cur_sym_type in sym_types_to_not_inline:
                return False
            print(f"Inline {cur_sym_type} ? ({cur_sym_info.name}) [y/n] ", end="")
            ans = ""
            while ans.lower() not in {"y", "n"}:
                ans = input()
            if ans == "y":
                sym_types_to_inline.add(cur_sym_type)
                return True
            else:
                sym_types_to_not_inline.add(cur_sym_type)
                return False

    with in_file.open(encoding=ENC) as f_in:
        with out_file.open("w", encoding=ENC) as f_out:
            inline_includes(
                f_in, extracted_path, f_out, should_inline_callback, args.link_pngs
            )

    if not args.types:
        print("Inlined types:", " ".join(f"-t '{_t}'" for _t in sym_types_to_inline))

    print(f"Wrote to {out_file}")


if __name__ == "__main__":
    main()
