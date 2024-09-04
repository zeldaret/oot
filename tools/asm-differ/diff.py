#!/usr/bin/env python3
# PYTHON_ARGCOMPLETE_OK
import argparse
import enum
import sys
from typing import (
    Any,
    Callable,
    Dict,
    Iterator,
    List,
    Match,
    NoReturn,
    Optional,
    Pattern,
    Set,
    Tuple,
    Type,
    Union,
)


def fail(msg: str) -> NoReturn:
    print(msg, file=sys.stderr)
    sys.exit(1)


def static_assert_unreachable(x: NoReturn) -> NoReturn:
    raise Exception("Unreachable! " + repr(x))


class DiffMode(enum.Enum):
    SINGLE = "single"
    SINGLE_BASE = "single_base"
    NORMAL = "normal"
    THREEWAY_PREV = "3prev"
    THREEWAY_BASE = "3base"


# ==== COMMAND-LINE ====

if __name__ == "__main__":
    # Prefer to use diff_settings.py from the current working directory
    sys.path.insert(0, ".")
    try:
        import diff_settings
    except ModuleNotFoundError:
        fail("Unable to find diff_settings.py in the same directory.")
    sys.path.pop(0)

    try:
        import argcomplete
    except ModuleNotFoundError:
        argcomplete = None

    parser = argparse.ArgumentParser(
        description="Diff MIPS, PPC, AArch64, ARM32, SH2, SH4, or m68k assembly."
    )

    start_argument = parser.add_argument(
        "start",
        help="Function name or address to start diffing from.",
    )

    if argcomplete:

        def complete_symbol(
            prefix: str, parsed_args: argparse.Namespace, **kwargs: object
        ) -> List[str]:
            if not prefix or prefix.startswith("-"):
                # skip reading the map file, which would
                # result in a lot of useless completions
                return []
            config: Dict[str, Any] = {}
            diff_settings.apply(config, parsed_args)  # type: ignore
            mapfile = config.get("mapfile")
            if not mapfile:
                return []
            completes = []
            with open(mapfile) as f:
                data = f.read()
                # assume symbols are prefixed by a space character
                search = f" {prefix}"
                pos = data.find(search)
                while pos != -1:
                    # skip the space character in the search string
                    pos += 1
                    # assume symbols are suffixed by either a space
                    # character or a (unix-style) line return
                    spacePos = data.find(" ", pos)
                    lineReturnPos = data.find("\n", pos)
                    if lineReturnPos == -1:
                        endPos = spacePos
                    elif spacePos == -1:
                        endPos = lineReturnPos
                    else:
                        endPos = min(spacePos, lineReturnPos)
                    if endPos == -1:
                        match = data[pos:]
                        pos = -1
                    else:
                        match = data[pos:endPos]
                        pos = data.find(search, endPos)
                    completes.append(match)
            return completes

        setattr(start_argument, "completer", complete_symbol)

    parser.add_argument(
        "end",
        nargs="?",
        help="Address to end diff at.",
    )
    parser.add_argument(
        "-o",
        dest="diff_obj",
        action="store_true",
        help="""Diff .o files rather than a whole binary. This makes it possible to
        see symbol names. (Recommended)""",
    )
    parser.add_argument(
        "-f",
        "--file",
        dest="file",
        type=str,
        help="""File path for a file being diffed. When used the map
        file isn't searched for the function given. Useful for dynamically
        linked libraries.""",
    )
    parser.add_argument(
        "-e",
        "--elf",
        dest="diff_elf_symbol",
        metavar="SYMBOL",
        help="""Diff a given function in two ELFs, one being stripped and the other
        one non-stripped. Requires objdump from binutils 2.33+.""",
    )
    parser.add_argument(
        "-c",
        "--source",
        dest="show_source",
        action="store_true",
        help="Show source code (if possible). Only works with -o or -e.",
    )
    parser.add_argument(
        "-C",
        "--source-old-binutils",
        dest="source_old_binutils",
        action="store_true",
        help="""Tweak --source handling to make it work with binutils < 2.33.
        Implies --source.""",
    )
    parser.add_argument(
        "-j",
        "--section",
        dest="diff_section",
        default=".text",
        metavar="SECTION",
        help="Diff restricted to a given output section.",
    )
    parser.add_argument(
        "-L",
        "--line-numbers",
        dest="show_line_numbers",
        action="store_const",
        const=True,
        help="""Show source line numbers in output, when available. May be enabled by
        default depending on diff_settings.py.""",
    )
    parser.add_argument(
        "--no-line-numbers",
        dest="show_line_numbers",
        action="store_const",
        const=False,
        help="Hide source line numbers in output.",
    )
    parser.add_argument(
        "--inlines",
        dest="inlines",
        action="store_true",
        help="Show inline function calls (if possible). Only works with -o or -e.",
    )
    parser.add_argument(
        "--base-asm",
        dest="base_asm",
        metavar="FILE",
        help="Read assembly from given file instead of configured base img.",
    )
    parser.add_argument(
        "--write-asm",
        dest="write_asm",
        metavar="FILE",
        help="Write the current assembly output to file, e.g. for use with --base-asm.",
    )
    parser.add_argument(
        "-m",
        "--make",
        dest="make",
        action="store_true",
        help="Automatically run 'make' on the .o file or binary before diffing.",
    )
    parser.add_argument(
        "-l",
        "--skip-lines",
        dest="skip_lines",
        metavar="LINES",
        type=int,
        default=0,
        help="Skip the first LINES lines of output.",
    )
    parser.add_argument(
        "-s",
        "--stop-at-ret",
        dest="stop_at_ret",
        action="count",
        help="""Stop disassembling at the first return instruction.
        You can also pass -ss to stop at the second return instruction, and so on.""",
    )
    parser.add_argument(
        "-i",
        "--ignore-large-imms",
        dest="ignore_large_imms",
        action="store_true",
        help="Pretend all large enough immediates are the same.",
    )
    parser.add_argument(
        "-I",
        "--ignore-addr-diffs",
        dest="ignore_addr_diffs",
        action="store_true",
        help="Ignore address differences. Currently only affects AArch64 and ARM32.",
    )
    parser.add_argument(
        "-B",
        "--no-show-branches",
        dest="show_branches",
        action="store_false",
        help="Don't visualize branches/branch targets.",
    )
    parser.add_argument(
        "-R",
        "--no-show-rodata-refs",
        dest="show_rodata_refs",
        action="store_false",
        help="Don't show .rodata -> .text references (typically from jump tables).",
    )
    parser.add_argument(
        "-S",
        "--base-shift",
        dest="base_shift",
        metavar="N",
        type=str,
        default="0",
        help="""Diff position N in our img against position N + shift in the base img.
        Arithmetic is allowed, so e.g. |-S "0x1234 - 0x4321"| is a reasonable
        flag to pass if it is known that position 0x1234 in the base img syncs
        up with position 0x4321 in our img. Not supported together with -o.""",
    )
    parser.add_argument(
        "-w",
        "--watch",
        dest="watch",
        action="store_true",
        help="""Automatically update when source/object files change.
        Recommended in combination with -m.""",
    )
    parser.add_argument(
        "-y",
        "--yes",
        dest="agree",
        action="store_true",
        help="""Automatically agree to any yes/no questions asked.
        Useful if you really want to use the -w option without -m.""",
    )
    parser.add_argument(
        "-0",
        "--diff_mode=single_base",
        dest="diff_mode",
        action="store_const",
        const=DiffMode.SINGLE_BASE,
        help="""View the base asm only (not a diff).""",
    )
    parser.add_argument(
        "-1",
        "--diff_mode=single",
        dest="diff_mode",
        action="store_const",
        const=DiffMode.SINGLE,
        help="""View the current asm only (not a diff).""",
    )
    parser.add_argument(
        "-3",
        "--threeway=prev",
        dest="diff_mode",
        action="store_const",
        const=DiffMode.THREEWAY_PREV,
        help="""Show a three-way diff between target asm, current asm, and asm
        prior to -w rebuild. Requires -w.""",
    )
    parser.add_argument(
        "-b",
        "--threeway=base",
        dest="diff_mode",
        action="store_const",
        const=DiffMode.THREEWAY_BASE,
        help="""Show a three-way diff between target asm, current asm, and asm
        when diff.py was started. Requires -w.""",
    )
    parser.add_argument(
        "--width",
        dest="column_width",
        metavar="COLS",
        type=int,
        default=50,
        help="Sets the width of the left and right view column.",
    )
    parser.add_argument(
        "--algorithm",
        dest="algorithm",
        default="levenshtein",
        choices=["levenshtein", "difflib"],
        help="""Diff algorithm to use. Levenshtein gives the minimum diff, while difflib
        aims for long sections of equal opcodes. Defaults to %(default)s.""",
    )
    parser.add_argument(
        "--max-size",
        "--max-lines",
        metavar="LINES",
        dest="max_lines",
        type=int,
        default=1024,
        help="The maximum length of the diff, in lines.",
    )
    parser.add_argument(
        "--no-pager",
        dest="no_pager",
        action="store_true",
        help="""Disable the pager; write output directly to stdout, then exit.
        Incompatible with --watch.""",
    )
    parser.add_argument(
        "--format",
        choices=("color", "plain", "html", "json"),
        default="color",
        help="Output format, default is color. --format=html or json implies --no-pager.",
    )
    parser.add_argument(
        "-U",
        "--compress-matching",
        metavar="N",
        dest="compress_matching",
        type=int,
        help="""Compress streaks of matching lines, leaving N lines of context
        around non-matching parts.""",
    )
    parser.add_argument(
        "-V",
        "--compress-sameinstr",
        metavar="N",
        dest="compress_sameinstr",
        type=int,
        help="""Compress streaks of lines with same instructions (but possibly
        different regalloc), leaving N lines of context around other parts.""",
    )

    # Project-specific flags, e.g. different versions/make arguments.
    add_custom_arguments_fn = getattr(diff_settings, "add_custom_arguments", None)
    if add_custom_arguments_fn:
        add_custom_arguments_fn(parser)

    if argcomplete:
        argcomplete.autocomplete(parser)

# ==== IMPORTS ====

# (We do imports late to optimize auto-complete performance.)

import abc
from collections import Counter, defaultdict
from dataclasses import asdict, dataclass, field, replace
import difflib
import html
import itertools
import json
import os
import queue
import re
import string
import struct
import subprocess
import threading
import time
import traceback


MISSING_PREREQUISITES = (
    "Missing prerequisite python module {}. "
    "Run `python3 -m pip install --user colorama watchdog levenshtein cxxfilt` to install prerequisites (cxxfilt only needed with --source)."
)

try:
    from colorama import Back, Fore, Style
    import watchdog
except ModuleNotFoundError as e:
    fail(MISSING_PREREQUISITES.format(e.name))

# ==== CONFIG ====


@dataclass
class ProjectSettings:
    arch_str: str
    objdump_executable: str
    objdump_flags: List[str]
    build_command: List[str]
    map_format: str
    build_dir: str
    map_address_offset: int
    baseimg: Optional[str]
    myimg: Optional[str]
    mapfile: Optional[str]
    source_directories: Optional[List[str]]
    source_extensions: List[str]
    show_line_numbers_default: bool
    disassemble_all: bool
    reg_categories: Dict[str, int]
    expected_dir: str


@dataclass
class Compress:
    context: int
    same_instr: bool


@dataclass
class Config:
    arch: "ArchSettings"

    # Build/objdump options
    diff_obj: bool
    file: Optional[str]
    make: bool
    source_old_binutils: bool
    diff_section: str
    inlines: bool
    max_function_size_lines: int
    max_function_size_bytes: int

    # Display options
    formatter: "Formatter"
    diff_mode: DiffMode
    base_shift: int
    skip_lines: int
    compress: Optional[Compress]
    show_rodata_refs: bool
    show_branches: bool
    show_line_numbers: bool
    show_source: bool
    stop_at_ret: Optional[int]
    ignore_large_imms: bool
    ignore_addr_diffs: bool
    algorithm: str
    reg_categories: Dict[str, int]

    # Score options
    score_stack_differences = True
    penalty_stackdiff = 1
    penalty_regalloc = 5
    penalty_reordering = 60
    penalty_insertion = 100
    penalty_deletion = 100


def create_project_settings(settings: Dict[str, Any]) -> ProjectSettings:
    return ProjectSettings(
        arch_str=settings.get("arch", "mips"),
        baseimg=settings.get("baseimg"),
        myimg=settings.get("myimg"),
        mapfile=settings.get("mapfile"),
        build_command=settings.get(
            "make_command", ["make", *settings.get("makeflags", [])]
        ),
        source_directories=settings.get("source_directories"),
        source_extensions=settings.get(
            "source_extensions", [".c", ".h", ".cpp", ".hpp", ".s"]
        ),
        objdump_executable=get_objdump_executable(settings.get("objdump_executable")),
        objdump_flags=settings.get("objdump_flags", []),
        expected_dir=settings.get("expected_dir", "expected/"),
        map_format=settings.get("map_format", "gnu"),
        map_address_offset=settings.get(
            "map_address_offset", settings.get("ms_map_address_offset", 0)
        ),
        build_dir=settings.get("build_dir", settings.get("mw_build_dir", "build/")),
        show_line_numbers_default=settings.get("show_line_numbers_default", True),
        disassemble_all=settings.get("disassemble_all", False),
        reg_categories=settings.get("reg_categories", {}),
    )


def create_config(args: argparse.Namespace, project: ProjectSettings) -> Config:
    arch = get_arch(project.arch_str)

    formatter: Formatter
    if args.format == "plain":
        formatter = PlainFormatter(column_width=args.column_width)
    elif args.format == "color":
        formatter = AnsiFormatter(column_width=args.column_width)
    elif args.format == "html":
        formatter = HtmlFormatter()
    elif args.format == "json":
        formatter = JsonFormatter(arch_str=arch.name)
    else:
        raise ValueError(f"Unsupported --format: {args.format}")

    compress = None
    if args.compress_matching is not None:
        compress = Compress(args.compress_matching, False)
    if args.compress_sameinstr is not None:
        if compress is not None:
            raise ValueError(
                "Cannot pass both --compress-matching and --compress-sameinstr"
            )
        compress = Compress(args.compress_sameinstr, True)

    show_line_numbers = args.show_line_numbers
    if show_line_numbers is None:
        show_line_numbers = project.show_line_numbers_default

    return Config(
        arch=arch,
        # Build/objdump options
        diff_obj=args.diff_obj,
        file=args.file,
        make=args.make,
        source_old_binutils=args.source_old_binutils,
        diff_section=args.diff_section,
        inlines=args.inlines,
        max_function_size_lines=args.max_lines,
        max_function_size_bytes=args.max_lines * 4,
        # Display options
        formatter=formatter,
        diff_mode=args.diff_mode or DiffMode.NORMAL,
        base_shift=eval_int(
            args.base_shift, "Failed to parse --base-shift (-S) argument as an integer."
        ),
        skip_lines=args.skip_lines,
        compress=compress,
        show_rodata_refs=args.show_rodata_refs,
        show_branches=args.show_branches,
        show_line_numbers=show_line_numbers,
        show_source=args.show_source or args.source_old_binutils,
        stop_at_ret=args.stop_at_ret,
        ignore_large_imms=args.ignore_large_imms,
        ignore_addr_diffs=args.ignore_addr_diffs,
        algorithm=args.algorithm,
        reg_categories=project.reg_categories,
    )


def get_objdump_executable(objdump_executable: Optional[str]) -> str:
    if objdump_executable is not None:
        return objdump_executable

    objdump_candidates = [
        "mips-linux-gnu-objdump",
        "mips64-elf-objdump",
        "mips-elf-objdump",
        "sh-elf-objdump",
        "sh4-linux-gnu-objdump",
        "m68k-elf-objdump",
    ]
    for objdump_cand in objdump_candidates:
        try:
            subprocess.check_call(
                [objdump_cand, "--version"],
                stdout=subprocess.DEVNULL,
                stderr=subprocess.DEVNULL,
            )
            return objdump_cand
        except subprocess.CalledProcessError:
            pass
        except FileNotFoundError:
            pass

    return fail(
        f"Missing binutils; please ensure {' or '.join(objdump_candidates)} exists, or configure objdump_executable."
    )


def get_arch(arch_str: str) -> "ArchSettings":
    for settings in ARCH_SETTINGS:
        if arch_str == settings.name:
            return settings
    raise ValueError(f"Unknown architecture: {arch_str}")


BUFFER_CMD: List[str] = ["tail", "-c", str(10**9)]

# -S truncates long lines instead of wrapping them
# -R interprets color escape sequences
# -i ignores case when searching
# -c something about how the screen gets redrawn; I don't remember the purpose
# -#6 makes left/right arrow keys scroll by 6 characters
LESS_CMD: List[str] = ["less", "-SRic", "-+F", "-+X", "-#6"]

DEBOUNCE_DELAY: float = 0.1

# ==== FORMATTING ====


@enum.unique
class BasicFormat(enum.Enum):
    NONE = enum.auto()
    IMMEDIATE = enum.auto()
    STACK = enum.auto()
    REGISTER = enum.auto()
    REGISTER_CATEGORY = enum.auto()
    DELAY_SLOT = enum.auto()
    DIFF_CHANGE = enum.auto()
    DIFF_ADD = enum.auto()
    DIFF_REMOVE = enum.auto()
    SOURCE_FILENAME = enum.auto()
    SOURCE_FUNCTION = enum.auto()
    SOURCE_LINE_NUM = enum.auto()
    SOURCE_OTHER = enum.auto()


@dataclass(frozen=True)
class RotationFormat:
    group: str
    index: int
    key: str


Format = Union[BasicFormat, RotationFormat]
FormatFunction = Callable[[str], Format]


class Text:
    segments: List[Tuple[str, Format]]

    def __init__(self, line: str = "", f: Format = BasicFormat.NONE) -> None:
        self.segments = [(line, f)] if line else []

    def reformat(self, f: Format) -> "Text":
        return Text(self.plain(), f)

    def plain(self) -> str:
        return "".join(s for s, f in self.segments)

    def __repr__(self) -> str:
        return f"<Text: {self.plain()!r}>"

    def __bool__(self) -> bool:
        return any(s for s, f in self.segments)

    def __str__(self) -> str:
        # Use Formatter.apply(...) instead
        return NotImplemented

    def __eq__(self, other: object) -> bool:
        return NotImplemented

    def __add__(self, other: Union["Text", str]) -> "Text":
        if isinstance(other, str):
            other = Text(other)
        result = Text()
        # If two adjacent segments have the same format, merge their lines
        if (
            self.segments
            and other.segments
            and self.segments[-1][1] == other.segments[0][1]
        ):
            result.segments = (
                self.segments[:-1]
                + [(self.segments[-1][0] + other.segments[0][0], self.segments[-1][1])]
                + other.segments[1:]
            )
        else:
            result.segments = self.segments + other.segments
        return result

    def __radd__(self, other: Union["Text", str]) -> "Text":
        if isinstance(other, str):
            other = Text(other)
        return other + self

    def finditer(self, pat: Pattern[str]) -> Iterator[Match[str]]:
        """Replacement for `pat.finditer(text)` that operates on the inner text,
        and returns the exact same matches as `Text.sub(pat, ...)`."""
        for chunk, f in self.segments:
            for match in pat.finditer(chunk):
                yield match

    def sub(self, pat: Pattern[str], sub_fn: Callable[[Match[str]], "Text"]) -> "Text":
        result = Text()
        for chunk, f in self.segments:
            i = 0
            for match in pat.finditer(chunk):
                start, end = match.start(), match.end()
                assert i <= start <= end <= len(chunk)
                sub = sub_fn(match)
                if i != start:
                    result.segments.append((chunk[i:start], f))
                result.segments.extend(sub.segments)
                i = end
            if chunk[i:]:
                result.segments.append((chunk[i:], f))
        return result

    def ljust(self, column_width: int) -> "Text":
        length = sum(len(x) for x, _ in self.segments)
        return self + " " * max(column_width - length, 0)


@dataclass
class TableLine:
    key: Optional[str]
    is_data_ref: bool
    cells: Tuple[Tuple[Text, Optional["Line"]], ...]


@dataclass
class TableData:
    headers: Tuple[Text, ...]
    current_score: int
    max_score: int
    previous_score: Optional[int]
    lines: List[TableLine]


class Formatter(abc.ABC):
    @abc.abstractmethod
    def apply_format(self, chunk: str, f: Format) -> str:
        """Apply the formatting `f` to `chunk` and escape the contents."""
        ...

    @abc.abstractmethod
    def table(self, data: TableData) -> str:
        """Format a multi-column table with metadata"""
        ...

    def apply(self, text: Text) -> str:
        return "".join(self.apply_format(chunk, f) for chunk, f in text.segments)

    @staticmethod
    def outputline_texts(line: TableLine) -> Tuple[Text, ...]:
        return tuple(cell[0] for cell in line.cells)


@dataclass
class PlainFormatter(Formatter):
    column_width: int

    def apply_format(self, chunk: str, f: Format) -> str:
        return chunk

    def table(self, data: TableData) -> str:
        rows = [data.headers] + [self.outputline_texts(line) for line in data.lines]
        return "\n".join(
            "".join(self.apply(x.ljust(self.column_width)) for x in row) for row in rows
        )


@dataclass
class AnsiFormatter(Formatter):
    # Additional ansi escape codes not in colorama. See:
    # https://en.wikipedia.org/wiki/ANSI_escape_code#SGR_(Select_Graphic_Rendition)_parameters
    STYLE_UNDERLINE = "\x1b[4m"
    STYLE_NO_UNDERLINE = "\x1b[24m"
    STYLE_INVERT = "\x1b[7m"
    STYLE_RESET = "\x1b[0m"

    BASIC_ANSI_CODES = {
        BasicFormat.NONE: "",
        BasicFormat.IMMEDIATE: Fore.LIGHTBLUE_EX,
        BasicFormat.STACK: Fore.YELLOW,
        BasicFormat.REGISTER: Fore.YELLOW,
        BasicFormat.REGISTER_CATEGORY: Fore.LIGHTYELLOW_EX,
        BasicFormat.DIFF_CHANGE: Fore.LIGHTBLUE_EX,
        BasicFormat.DIFF_ADD: Fore.GREEN,
        BasicFormat.DIFF_REMOVE: Fore.RED,
        BasicFormat.SOURCE_FILENAME: Style.DIM + Style.BRIGHT,
        BasicFormat.SOURCE_FUNCTION: Style.DIM + Style.BRIGHT + STYLE_UNDERLINE,
        BasicFormat.SOURCE_LINE_NUM: Fore.LIGHTBLACK_EX,
        BasicFormat.SOURCE_OTHER: Style.DIM,
    }

    BASIC_ANSI_CODES_UNDO = {
        BasicFormat.NONE: "",
        BasicFormat.SOURCE_FILENAME: Style.NORMAL,
        BasicFormat.SOURCE_FUNCTION: Style.NORMAL + STYLE_NO_UNDERLINE,
        BasicFormat.SOURCE_OTHER: Style.NORMAL,
    }

    ROTATION_ANSI_COLORS = [
        Fore.MAGENTA,
        Fore.CYAN,
        Fore.GREEN,
        Fore.RED,
        Fore.LIGHTYELLOW_EX,
        Fore.LIGHTMAGENTA_EX,
        Fore.LIGHTCYAN_EX,
        Fore.LIGHTGREEN_EX,
        Fore.LIGHTBLACK_EX,
    ]

    column_width: int

    def apply_format(self, chunk: str, f: Format) -> str:
        if f == BasicFormat.NONE:
            return chunk
        undo_ansi_code = Fore.RESET
        if isinstance(f, BasicFormat):
            ansi_code = self.BASIC_ANSI_CODES[f]
            undo_ansi_code = self.BASIC_ANSI_CODES_UNDO.get(f, undo_ansi_code)
        elif isinstance(f, RotationFormat):
            ansi_code = self.ROTATION_ANSI_COLORS[
                f.index % len(self.ROTATION_ANSI_COLORS)
            ]
        else:
            static_assert_unreachable(f)
        return f"{ansi_code}{chunk}{undo_ansi_code}"

    def table(self, data: TableData) -> str:
        rows = [(data.headers, False)] + [
            (
                self.outputline_texts(line),
                line.is_data_ref,
            )
            for line in data.lines
        ]
        return "\n".join(
            "".join(
                (self.STYLE_INVERT if is_data_ref else "")
                + self.apply(x.ljust(self.column_width))
                + (self.STYLE_RESET if is_data_ref else "")
                for x in row
            )
            for (row, is_data_ref) in rows
        )


@dataclass
class HtmlFormatter(Formatter):
    rotation_formats: int = 9

    def apply_format(self, chunk: str, f: Format) -> str:
        chunk = html.escape(chunk)
        if f == BasicFormat.NONE:
            return chunk
        if isinstance(f, BasicFormat):
            class_name = f.name.lower().replace("_", "-")
            data_attr = ""
        elif isinstance(f, RotationFormat):
            class_name = f"rotation-{f.index % self.rotation_formats}"
            rotation_key = html.escape(f"{f.group};{f.key}", quote=True)
            data_attr = f'data-rotation="{rotation_key}"'
        else:
            static_assert_unreachable(f)
        return f"<span class='{class_name}' {data_attr}>{chunk}</span>"

    def table(self, data: TableData) -> str:
        def table_row(line: Tuple[Text, ...], is_data_ref: bool, cell_el: str) -> str:
            tr_attrs = " class='data-ref'" if is_data_ref else ""
            output_row = f"    <tr{tr_attrs}>"
            for cell in line:
                cell_html = self.apply(cell)
                output_row += f"<{cell_el}>{cell_html}</{cell_el}>"
            output_row += "</tr>\n"
            return output_row

        output = "<table class='diff'>\n"
        output += "  <thead>\n"
        output += table_row(data.headers, False, "th")
        output += "  </thead>\n"
        output += "  <tbody>\n"
        output += "".join(
            table_row(self.outputline_texts(line), line.is_data_ref, "td")
            for line in data.lines
        )
        output += "  </tbody>\n"
        output += "</table>\n"
        return output


@dataclass
class JsonFormatter(Formatter):
    arch_str: str

    def apply_format(self, chunk: str, f: Format) -> str:
        # This method is unused by this formatter
        return NotImplemented

    def table(self, data: TableData) -> str:
        def serialize_format(s: str, f: Format) -> Dict[str, Any]:
            if f == BasicFormat.NONE:
                return {"text": s}
            elif isinstance(f, BasicFormat):
                return {"text": s, "format": f.name.lower()}
            elif isinstance(f, RotationFormat):
                attrs = asdict(f)
                attrs.update({"text": s, "format": "rotation"})
                return attrs
            else:
                static_assert_unreachable(f)

        def serialize(text: Optional[Text]) -> List[Dict[str, Any]]:
            if text is None:
                return []
            return [serialize_format(s, f) for s, f in text.segments]

        output: Dict[str, Any] = {}
        output["arch_str"] = self.arch_str
        output["header"] = {
            name: serialize(h)
            for h, name in zip(data.headers, ("base", "current", "previous"))
        }
        output["current_score"] = data.current_score
        output["max_score"] = data.max_score
        if data.previous_score is not None:
            output["previous_score"] = data.previous_score
        output_rows: List[Dict[str, Any]] = []
        for row in data.lines:
            output_row: Dict[str, Any] = {}
            output_row["key"] = row.key
            output_row["is_data_ref"] = row.is_data_ref
            iters: List[Tuple[str, Text, Optional[Line]]] = [
                (label, *cell)
                for label, cell in zip(("base", "current", "previous"), row.cells)
            ]
            if all(line is None for _, _, line in iters):
                # Skip rows that were only for displaying source code
                continue
            for column_name, text, line in iters:
                column: Dict[str, Any] = {}
                column["text"] = serialize(text)
                if line:
                    if line.line_num is not None:
                        column["line"] = line.line_num
                    if line.branch_target is not None:
                        column["branch"] = line.branch_target
                    if line.source_lines:
                        column["src"] = line.source_lines
                    if line.comment is not None:
                        column["src_comment"] = line.comment
                    if line.source_line_num is not None:
                        column["src_line"] = line.source_line_num
                if line or column["text"]:
                    output_row[column_name] = column
            output_rows.append(output_row)
        output["rows"] = output_rows
        return json.dumps(output)


def format_fields(
    pat: Pattern[str],
    out1: Text,
    out2: Text,
    color1: FormatFunction,
    color2: Optional[FormatFunction] = None,
) -> Tuple[Text, Text]:
    diffs = [
        of.group() != nf.group()
        for (of, nf) in zip(out1.finditer(pat), out2.finditer(pat))
    ]

    it = iter(diffs)

    def maybe_color(color: FormatFunction, s: str) -> Text:
        return Text(s, color(s)) if next(it, False) else Text(s)

    out1 = out1.sub(pat, lambda m: maybe_color(color1, m.group()))
    it = iter(diffs)
    out2 = out2.sub(pat, lambda m: maybe_color(color2 or color1, m.group()))

    return out1, out2


def symbol_formatter(group: str, base_index: int) -> FormatFunction:
    symbol_formats: Dict[str, Format] = {}

    def symbol_format(s: str) -> Format:
        # TODO: it would be nice to use a unique Format for each symbol, so we could
        # add extra UI elements in the HTML version
        f = symbol_formats.get(s)
        if f is None:
            index = len(symbol_formats) + base_index
            f = RotationFormat(key=s, index=index, group=group)
            symbol_formats[s] = f
        return f

    return symbol_format


# ==== LOGIC ====

ObjdumpCommand = Tuple[List[str], str, Optional[str]]

# eval_expr adapted from https://stackoverflow.com/a/9558001

import ast
import operator as op

operators: Dict[Type[Union[ast.operator, ast.unaryop]], Any] = {
    ast.Add: op.add,
    ast.Sub: op.sub,
    ast.Mult: op.mul,
    ast.Div: op.floordiv,
    ast.USub: op.neg,
    ast.Pow: op.pow,
    ast.BitXor: op.xor,
    ast.BitOr: op.or_,
    ast.BitAnd: op.and_,
    ast.Invert: op.inv,
}


def eval_expr(expr: str) -> Any:
    return eval_(ast.parse(expr, mode="eval").body)


def eval_(node: ast.AST) -> Any:
    if (
        hasattr(ast, "Constant")
        and isinstance(node, ast.Constant)
        and isinstance(node.value, int)
    ):  # Python 3.8+
        return node.value
    elif isinstance(node, ast.BinOp):
        return operators[type(node.op)](eval_(node.left), eval_(node.right))
    elif isinstance(node, ast.UnaryOp):
        return operators[type(node.op)](eval_(node.operand))
    elif sys.version_info < (3, 8) and isinstance(node, ast.Num):
        return node.n
    else:
        raise TypeError(node)


def maybe_eval_int(expr: str) -> Optional[int]:
    try:
        ret = eval_expr(expr)
        if not isinstance(ret, int):
            raise Exception("not an integer")
        return ret
    except Exception:
        return None


def eval_int(expr: str, emsg: str) -> int:
    ret = maybe_eval_int(expr)
    if ret is None:
        fail(emsg)
    return ret


def eval_line_num(expr: str) -> Optional[int]:
    expr = expr.strip().replace(":", "")
    if expr == "":
        return None
    return int(expr, 16)


def run_make(target: str, project: ProjectSettings) -> None:
    subprocess.check_call(project.build_command + [target])


def run_make_capture_output(
    target: str, project: ProjectSettings
) -> "subprocess.CompletedProcess[bytes]":
    return subprocess.run(
        project.build_command + [target],
        stderr=subprocess.PIPE,
        stdout=subprocess.PIPE,
    )


def restrict_to_function(dump: str, fn_name: str) -> str:
    try:
        ind = dump.index("\n", dump.index(f"<{fn_name}>:"))
        return dump[ind + 1 :]
    except ValueError:
        return ""


def serialize_rodata_references(references: List[Tuple[int, int, str]]) -> str:
    return "".join(
        f"DATAREF {text_offset} {from_offset} {from_section}\n"
        for (text_offset, from_offset, from_section) in references
    )


def maybe_get_objdump_source_flags(config: Config) -> List[str]:
    flags = []

    if config.show_line_numbers or config.show_source:
        flags.append("--line-numbers")

    if config.show_source:
        flags.append("--source")

        if not config.source_old_binutils:
            flags.append("--source-comment=│ ")

        if config.inlines:
            flags.append("--inlines")

    return flags


def run_objdump(cmd: ObjdumpCommand, config: Config, project: ProjectSettings) -> str:
    flags, target, restrict = cmd
    try:
        out = subprocess.run(
            [project.objdump_executable]
            + config.arch.arch_flags
            + project.objdump_flags
            + flags
            + [target],
            check=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            universal_newlines=True,
        ).stdout
    except subprocess.CalledProcessError as e:
        print(e.stdout)
        print(e.stderr)
        if "unrecognized option '--source-comment" in e.stderr:
            fail("** Try using --source-old-binutils instead of --source **")
        raise e

    obj_data: Optional[bytes] = None
    if config.diff_obj:
        with open(target, "rb") as f:
            obj_data = f.read()

    return preprocess_objdump_out(restrict, obj_data, out, config)


def preprocess_objdump_out(
    restrict: Optional[str], obj_data: Optional[bytes], objdump_out: str, config: Config
) -> str:
    """
    Preprocess the output of objdump into a format that `process()` expects.
    This format is suitable for saving to disk with `--write-asm`.

    - Optionally filter the output to a single function (`restrict`)
    - Otherwise, strip objdump header (7 lines)
    - Prepend .data references ("DATAREF" lines) when working with object files
    """
    out = objdump_out

    if restrict is not None:
        out = restrict_to_function(out, restrict)
    else:
        for i in range(7):
            out = out[out.find("\n") + 1 :]
        out = out.rstrip("\n")

    if obj_data and config.show_rodata_refs:
        out = (
            serialize_rodata_references(parse_elf_rodata_references(obj_data, config))
            + out
        )

    return out


def search_build_objects(objname: str, project: ProjectSettings) -> Optional[str]:
    objfiles = [
        os.path.join(dirpath, f)
        for dirpath, _, filenames in os.walk(project.build_dir)
        for f in filenames
        if f == objname
    ]
    if len(objfiles) > 1:
        all_objects = "\n".join(objfiles)
        fail(
            f"Found multiple objects of the same name {objname} in {project.build_dir}, "
            f"cannot determine which to diff against: \n{all_objects}"
        )
    if len(objfiles) == 1:
        return objfiles[0]

    return None


def search_map_file(
    fn_name: str, project: ProjectSettings, config: Config, *, for_binary: bool
) -> Tuple[Optional[str], Optional[int]]:
    if not project.mapfile:
        fail(f"No map file configured; cannot find function {fn_name}.")

    try:
        with open(project.mapfile) as f:
            contents = f.read()
    except Exception:
        fail(f"Failed to open map file {project.mapfile} for reading.")

    if project.map_format == "gnu":
        if for_binary and "load address" not in contents:
            fail(
                'Failed to find "load address" in map file. Maybe you need to add\n'
                '"export LANG := C" to your Makefile to avoid localized output?'
            )

        lines = contents.split("\n")

        try:
            cur_objfile = None
            ram_to_rom = None
            cands = []
            last_line = ""
            for line in lines:
                if line.startswith(" " + config.diff_section):
                    cur_objfile = line.split()[3]
                if "load address" in line:
                    tokens = last_line.split() + line.split()
                    ram = int(tokens[1], 0)
                    rom = int(tokens[5], 0)
                    ram_to_rom = rom - ram
                if line.endswith(" " + fn_name) or f" {fn_name} = 0x" in line:
                    ram = int(line.split()[0], 0)
                    if (for_binary and ram_to_rom is not None) or (
                        not for_binary and cur_objfile is not None
                    ):
                        cands.append((cur_objfile, ram + (ram_to_rom or 0)))
                last_line = line
        except Exception as e:
            traceback.print_exc()
            fail(f"Internal error while parsing map file")

        if len(cands) > 1:
            fail(f"Found multiple occurrences of function {fn_name} in map file.")
        if len(cands) == 1:
            return cands[0]
    elif project.map_format == "mw":
        find = re.findall(
            #            ram   elf rom  alignment
            r"  \S+ \S+ (\S+) (\S+) +\S+ "
            + re.escape(fn_name)
            + r"(?: \(entry of "
            + re.escape(config.diff_section)
            + r"\))? \t"
            # object name
            + r"(\S+)",
            contents,
        )
        if len(find) > 1:
            fail(f"Found multiple occurrences of function {fn_name} in map file.")
        if len(find) == 1:
            rom = int(find[0][1], 16)
            objname = find[0][2]
            objfile = search_build_objects(objname, project)

            # TODO Currently the ram-rom conversion only works for diffing ELF
            # executables, but it would likely be more convenient to diff DOLs.
            # At this time it is recommended to always use -o when running the diff
            # script as this mode does not make use of the ram-rom conversion.
            if objfile is not None:
                return objfile, rom
    elif project.map_format == "ms":
        load_address_find = re.search(
            r"Preferred load address is ([0-9a-f]+)",
            contents,
        )
        if not load_address_find:
            fail(f"Couldn't find module load address in map file.")
        load_address = int(load_address_find.group(1), 16)

        diff_segment_find = re.search(
            r"([0-9a-f]+):[0-9a-f]+ [0-9a-f]+H " + re.escape(config.diff_section),
            contents,
        )
        if not diff_segment_find:
            fail(f"Couldn't find segment for section in map file.")
        diff_segment = diff_segment_find.group(1)

        find = re.findall(
            r" (?:"
            + re.escape(diff_segment)
            + r")\S+\s+(?:"
            + re.escape(fn_name)
            + r")\s+\S+ ... \S+",
            contents,
        )
        if len(find) > 1:
            fail(f"Found multiple occurrences of function {fn_name} in map file.")
        if len(find) == 1:
            names_find = re.search(r"(\S+) ... (\S+)", find[0])
            assert names_find is not None
            fileofs = int(names_find.group(1), 16) - load_address
            if for_binary:
                return None, fileofs

            objname = names_find.group(2)
            objfile = search_build_objects(objname, project)
            if objfile is not None:
                return objfile, fileofs
    else:
        fail(f"Linker map format {project.map_format} unrecognised.")
    return None, None


def parse_elf_rodata_references(
    data: bytes, config: Config
) -> List[Tuple[int, int, str]]:
    e_ident = data[:16]
    if e_ident[:4] != b"\x7FELF":
        return []

    SHT_SYMTAB = 2
    SHT_REL = 9
    SHT_RELA = 4
    R_MIPS_32 = 2
    R_MIPS_GPREL32 = 12

    is_32bit = e_ident[4] == 1
    is_little_endian = e_ident[5] == 1
    str_end = "<" if is_little_endian else ">"
    str_off = "I" if is_32bit else "Q"

    def read(spec: str, offset: int) -> Tuple[int, ...]:
        spec = spec.replace("P", str_off)
        size = struct.calcsize(spec)
        return struct.unpack(str_end + spec, data[offset : offset + size])

    (
        e_type,
        e_machine,
        e_version,
        e_entry,
        e_phoff,
        e_shoff,
        e_flags,
        e_ehsize,
        e_phentsize,
        e_phnum,
        e_shentsize,
        e_shnum,
        e_shstrndx,
    ) = read("HHIPPPIHHHHHH", 16)
    if e_type != 1:  # relocatable
        return []
    assert e_shoff != 0
    assert e_shnum != 0  # don't support > 0xFF00 sections
    assert e_shstrndx != 0

    @dataclass
    class Section:
        sh_name: int
        sh_type: int
        sh_flags: int
        sh_addr: int
        sh_offset: int
        sh_size: int
        sh_link: int
        sh_info: int
        sh_addralign: int
        sh_entsize: int

    sections = [
        Section(*read("IIPPPPIIPP", e_shoff + i * e_shentsize)) for i in range(e_shnum)
    ]
    shstr = sections[e_shstrndx]
    sec_name_offs = [shstr.sh_offset + s.sh_name for s in sections]
    sec_names = [data[offset : data.index(b"\0", offset)] for offset in sec_name_offs]

    symtab_sections = [i for i in range(e_shnum) if sections[i].sh_type == SHT_SYMTAB]
    assert len(symtab_sections) == 1
    symtab = sections[symtab_sections[0]]

    section_name = config.diff_section.encode("utf-8")
    text_sections = [
        i
        for i in range(e_shnum)
        if sec_names[i] == section_name and sections[i].sh_size != 0
    ]
    if len(text_sections) != 1:
        return []
    text_section = text_sections[0]

    ret: List[Tuple[int, int, str]] = []
    for s in sections:
        if s.sh_type == SHT_REL or s.sh_type == SHT_RELA:
            if s.sh_info == text_section:
                # Skip section_name -> section_name references
                continue
            sec_name = sec_names[s.sh_info].decode("latin1")
            if sec_name not in (".rodata", ".late_rodata"):
                continue
            sec_base = sections[s.sh_info].sh_offset
            for i in range(0, s.sh_size, s.sh_entsize):
                if s.sh_type == SHT_REL:
                    r_offset, r_info = read("PP", s.sh_offset + i)
                else:
                    r_offset, r_info, r_addend = read("PPP", s.sh_offset + i)

                if is_32bit:
                    r_sym = r_info >> 8
                    r_type = r_info & 0xFF
                    sym_offset = symtab.sh_offset + symtab.sh_entsize * r_sym
                    st_name, st_value, st_size, st_info, st_other, st_shndx = read(
                        "IIIBBH", sym_offset
                    )
                else:
                    r_sym = r_info >> 32
                    r_type = r_info & 0xFFFFFFFF
                    sym_offset = symtab.sh_offset + symtab.sh_entsize * r_sym
                    st_name, st_info, st_other, st_shndx, st_value, st_size = read(
                        "IBBHQQ", sym_offset
                    )
                if st_shndx == text_section:
                    if s.sh_type == SHT_REL:
                        if e_machine == 8 and r_type in (R_MIPS_32, R_MIPS_GPREL32):
                            (r_addend,) = read("I", sec_base + r_offset)
                        else:
                            continue
                    text_offset = (st_value + r_addend) & 0xFFFFFFFF
                    ret.append((text_offset, r_offset, sec_name))
    return ret


def dump_elf(
    start: str,
    end: Optional[str],
    diff_elf_symbol: str,
    config: Config,
    project: ProjectSettings,
) -> Tuple[str, ObjdumpCommand, ObjdumpCommand]:
    if not project.baseimg or not project.myimg:
        fail("Missing myimg/baseimg in config.")
    if config.base_shift:
        fail("--base-shift not compatible with -e")

    start_addr = eval_int(start, "Start address must be an integer expression.")

    if end is not None:
        end_addr = eval_int(end, "End address must be an integer expression.")
    else:
        end_addr = start_addr + config.max_function_size_bytes

    flags1 = [
        f"--start-address={start_addr}",
        f"--stop-address={end_addr}",
    ]

    if project.disassemble_all:
        disassemble_flag = "-D"
    else:
        disassemble_flag = "-d"

    flags2 = [
        f"--disassemble={diff_elf_symbol}",
    ]

    objdump_flags = [disassemble_flag, "-rz", "-j", config.diff_section]
    return (
        project.myimg,
        (objdump_flags + flags1, project.baseimg, None),
        (
            objdump_flags + flags2 + maybe_get_objdump_source_flags(config),
            project.myimg,
            None,
        ),
    )


def dump_objfile(
    start: str, end: Optional[str], config: Config, project: ProjectSettings
) -> Tuple[str, ObjdumpCommand, ObjdumpCommand]:
    if config.base_shift:
        fail("--base-shift not compatible with -o")
    if end is not None:
        fail("end address not supported together with -o")
    if start.startswith("0"):
        fail("numerical start address not supported with -o; pass a function name")

    objfile = config.file
    if not objfile:
        objfile, _ = search_map_file(start, project, config, for_binary=False)

    if not objfile:
        fail("Not able to find .o file for function.")

    if config.make:
        run_make(objfile, project)

    if not os.path.isfile(objfile):
        fail(f"Not able to find .o file for function: {objfile} is not a file.")

    refobjfile = os.path.join(project.expected_dir, objfile)
    if config.diff_mode != DiffMode.SINGLE and not os.path.isfile(refobjfile):
        fail(f'Please ensure an OK .o file exists at "{refobjfile}".')

    if project.disassemble_all:
        disassemble_flag = "-D"
    else:
        disassemble_flag = "-d"

    objdump_flags = [disassemble_flag, "-rz", "-j", config.diff_section]
    return (
        objfile,
        (objdump_flags, refobjfile, start),
        (objdump_flags + maybe_get_objdump_source_flags(config), objfile, start),
    )


def dump_binary(
    start: str, end: Optional[str], config: Config, project: ProjectSettings
) -> Tuple[str, ObjdumpCommand, ObjdumpCommand]:
    binfile = config.file or project.myimg
    if not project.baseimg or not binfile:
        fail("Missing myimg/baseimg in config.")
    if config.make:
        run_make(binfile, project)
    if not os.path.isfile(binfile):
        fail(f"Not able to find binary file: {binfile}")
    start_addr = maybe_eval_int(start)
    if start_addr is None and config.file is None:
        _, start_addr = search_map_file(start, project, config, for_binary=True)
        if start_addr is None:
            fail("Not able to find function in map file.")
        start_addr += project.map_address_offset
    elif start_addr is None:
        fail("Start address must be an integer expression when using binary -f")
    if end is not None:
        end_addr = eval_int(end, "End address must be an integer expression.")
    else:
        end_addr = start_addr + config.max_function_size_bytes
    objdump_flags = ["-Dz", "-bbinary"] + ["-EB" if config.arch.big_endian else "-EL"]
    flags1 = [
        f"--start-address={start_addr + config.base_shift}",
        f"--stop-address={end_addr + config.base_shift}",
    ]
    flags2 = [f"--start-address={start_addr}", f"--stop-address={end_addr}"]
    return (
        binfile,
        (objdump_flags + flags1, project.baseimg, None),
        (objdump_flags + flags2, binfile, None),
    )


# Example: "ldr r4, [pc, #56]    ; (4c <AddCoins+0x4c>)"
ARM32_LOAD_POOL_PATTERN = r"(ldr\s+r([0-9]|1[0-3]),\s+\[pc,.*;\s*)(\([a-fA-F0-9]+.*\))"


# The base class is a no-op.
class AsmProcessor:
    def __init__(self, config: Config) -> None:
        self.config = config

    def pre_process(
        self, mnemonic: str, args: str, next_row: Optional[str]
    ) -> Tuple[str, str]:
        return mnemonic, args

    def process_reloc(self, row: str, prev: str) -> Tuple[str, Optional[str]]:
        return prev, None

    def normalize(self, mnemonic: str, row: str) -> str:
        """This should be called exactly once for each line."""
        arch = self.config.arch
        row = self._normalize_arch_specific(mnemonic, row)
        if self.config.ignore_large_imms and mnemonic not in arch.branch_instructions:
            row = re.sub(self.config.arch.re_large_imm, "<imm>", row)
        return row

    def _normalize_arch_specific(self, mnemonic: str, row: str) -> str:
        return row

    def post_process(self, lines: List["Line"]) -> None:
        return

    def is_end_of_function(self, mnemonic: str, args: str) -> bool:
        return False


class AsmProcessorMIPS(AsmProcessor):
    def __init__(self, config: Config) -> None:
        super().__init__(config)
        self.seen_jr_ra = False

    def process_reloc(self, row: str, prev: str) -> Tuple[str, Optional[str]]:
        arch = self.config.arch
        if "R_MIPS_NONE" in row or "R_MIPS_JALR" in row:
            # GNU as emits no-op relocations immediately after real ones when
            # assembling with -mabi=64. Return without trying to parse 'imm' as an
            # integer.
            return prev, None
        before, imm, after = parse_relocated_line(prev)
        addend = reloc_addend_from_imm(imm, before, self.config.arch)
        repl = row.split()[-1] + addend
        if "R_MIPS_LO16" in row:
            repl = f"%lo({repl})"
        elif "R_MIPS_HI16" in row:
            # Ideally we'd pair up R_MIPS_LO16 and R_MIPS_HI16 to generate a
            # correct addend for each, but objdump doesn't give us the order of
            # the relocations, so we can't find the right LO16. :(
            repl = f"%hi({repl})"
        elif "R_MIPS_26" in row:
            # Function calls
            pass
        elif "R_MIPS_PC16" in row:
            # Branch to glabel. This gives confusing output, but there's not much
            # we can do here.
            pass
        elif "R_MIPS_GPREL16" in row:
            repl = f"%gp_rel({repl})"
        elif "R_MIPS_GOT16" in row:
            repl = f"%got({repl})"
        elif "R_MIPS_CALL16" in row:
            repl = f"%call16({repl})"
        elif "R_MIPS_LITERAL" in row:
            repl = repl[: -len(addend)]
        else:
            assert False, f"unknown relocation type '{row}' for line '{prev}'"
        return before + repl + after, repl

    def is_end_of_function(self, mnemonic: str, args: str) -> bool:
        if self.seen_jr_ra:
            return True
        if mnemonic == "jr" and args == "ra":
            self.seen_jr_ra = True
        return False


class AsmProcessorPPC(AsmProcessor):
    def pre_process(
        self, mnemonic: str, args: str, next_row: Optional[str]
    ) -> Tuple[str, str]:
        if next_row and "R_PPC_EMB_SDA21" in next_row:
            # With sda21 relocs, the linker transforms `r0` into `r2`/`r13`, and
            # we may encounter this in either pre-transformed or post-transformed
            # versions depending on if the .o file comes from compiler output or
            # from disassembly. Normalize, to make sure both forms are treated as
            # equivalent.

            args = args.replace("(r2)", "(0)")
            args = args.replace("(r13)", "(0)")
            args = args.replace(",r2,", ",0,")
            args = args.replace(",r13,", ",0,")

            # We want to convert li and lis with an sda21 reloc,
            # because the r0 to r2/r13 transformation results in
            # turning an li/lis into an addi/addis with r2/r13 arg
            # our preprocessing normalizes all versions to addi with a 0 arg
            if mnemonic in {"li", "lis"}:
                mnemonic = mnemonic.replace("li", "addi")
                args_parts = args.split(",")
                args = args_parts[0] + ",0," + args_parts[1]
        if (
            next_row
            and ("R_PPC_REL24" in next_row or "R_PPC_REL14" in next_row)
            and ".text+0x" in next_row
            and mnemonic in PPC_BRANCH_INSTRUCTIONS
        ):
            # GCC emits a relocation of "R_PPC_REL14" or "R_PPC_REL24" with a .text offset
            # fixup the args to use the offset from the relocation

            # Split args by ',' which will result in either [cr, offset] or [offset]
            # Replace the current offset with the next line's ".text+0x" offset
            splitArgs = args.split(",")
            splitArgs[-1] = next_row.split(".text+0x")[-1]
            args = ",".join(splitArgs)

        return mnemonic, args

    def process_reloc(self, row: str, prev: str) -> Tuple[str, Optional[str]]:
        # row is the line with the relocations
        # prev is the line to apply relocations to

        arch = self.config.arch
        assert any(
            r in row
            for r in ["R_PPC_REL24", "R_PPC_ADDR16", "R_PPC_EMB_SDA21", "R_PPC_REL14"]
        ), f"unknown relocation type '{row}' for line '{prev}'"
        before, imm, after = parse_relocated_line(prev)
        repl = row.split()[-1]
        mnemonic, args = prev.split(maxsplit=1)

        if "R_PPC_REL24" in row:
            # function calls
            # or unconditional branches generated by GCC "b offset"
            if mnemonic in PPC_BRANCH_INSTRUCTIONS and ".text+0x" in row:
                # this has been handled in pre_process
                return prev, None
        elif "R_PPC_REL14" in row:
            if mnemonic in PPC_BRANCH_INSTRUCTIONS and ".text+0x" in row:
                # this has been handled in pre_process
                return prev, None
        elif "R_PPC_ADDR16_HI" in row:
            # absolute hi of addr
            repl = f"{repl}@h"
        elif "R_PPC_ADDR16_HA" in row:
            # adjusted hi of addr
            repl = f"{repl}@ha"
        elif "R_PPC_ADDR16_LO" in row:
            # lo of addr
            repl = f"{repl}@l"
        elif "R_PPC_ADDR16" in row:
            # 16-bit absolute addr
            if "+0x7" in repl:
                # remove the very large addends as they are an artifact of (label-_SDA(2)_BASE_)
                # computations and are unimportant in a diff setting.
                if int(repl.split("+")[1], 16) > 0x70000000:
                    repl = repl.split("+")[0]
        elif "R_PPC_EMB_SDA21" in row:
            # sda21 relocations; r2/r13 --> 0 swaps are performed in pre_process
            repl = f"{repl}@sda21"

        return before + repl + after, repl

    def is_end_of_function(self, mnemonic: str, args: str) -> bool:
        return mnemonic == "blr"


class AsmProcessorARM32(AsmProcessor):
    def process_reloc(self, row: str, prev: str) -> Tuple[str, Optional[str]]:
        arch = self.config.arch
        if "R_ARM_V4BX" in row:
            # R_ARM_V4BX converts "bx <reg>" to "mov pc,<reg>" for some targets.
            # Ignore for now.
            return prev, None
        if "R_ARM_ABS32" in row and not prev.startswith(".word"):
            # Don't crash on R_ARM_ABS32 relocations incorrectly applied to code.
            # (We may want to do something more fancy here that actually shows the
            # related symbol, but this serves as a stop-gap.)
            return prev, None
        before, imm, after = parse_relocated_line(prev)
        repl = row.split()[-1] + reloc_addend_from_imm(imm, before, self.config.arch)
        return before + repl + after, repl

    def _normalize_arch_specific(self, mnemonic: str, row: str) -> str:
        if self.config.ignore_addr_diffs:
            row = self._normalize_bl(mnemonic, row)
        row = self._normalize_data_pool(row)
        return row

    def _normalize_bl(self, mnemonic: str, row: str) -> str:
        if mnemonic != "bl":
            return row

        row, _ = split_off_address(row)
        return row + "<ignore>"

    def _normalize_data_pool(self, row: str) -> str:
        pool_match = re.search(ARM32_LOAD_POOL_PATTERN, row)
        return pool_match.group(1) if pool_match else row

    def post_process(self, lines: List["Line"]) -> None:
        lines_by_line_number = {}
        for line in lines:
            lines_by_line_number[line.line_num] = line
        for line in lines:
            if line.data_pool_addr is None:
                continue

            # Add data symbol and its address to the line.
            line_original = lines_by_line_number[line.data_pool_addr].original
            value = line_original.split()[1]
            addr = "{:x}".format(line.data_pool_addr)
            line.original = line.normalized_original + f"={value} ({addr})"


class AsmProcessorAArch64(AsmProcessor):
    def __init__(self, config: Config) -> None:
        super().__init__(config)
        self._adrp_pair_registers: Set[str] = set()

    def _normalize_arch_specific(self, mnemonic: str, row: str) -> str:
        if self.config.ignore_addr_diffs:
            row = self._normalize_adrp_differences(mnemonic, row)
            row = self._normalize_bl(mnemonic, row)
        return row

    def _normalize_bl(self, mnemonic: str, row: str) -> str:
        if mnemonic != "bl":
            return row

        row, _ = split_off_address(row)
        return row + "<ignore>"

    def _normalize_adrp_differences(self, mnemonic: str, row: str) -> str:
        """Identifies ADRP + LDR/ADD pairs that are used to access the GOT and
        suppresses any immediate differences.

        Whenever an ADRP is seen, the destination register is added to the set of registers
        that are part of an ADRP + LDR/ADD pair. Registers are removed from the set as soon
        as they are used for an LDR or ADD instruction which completes the pair.

        This method is somewhat crude but should manage to detect most such pairs.
        """
        row_parts = row.split("\t", 1)
        if mnemonic == "adrp":
            self._adrp_pair_registers.add(row_parts[1].strip().split(",")[0])
            row, _ = split_off_address(row)
            return row + "<ignore>"
        elif mnemonic == "ldr":
            for reg in self._adrp_pair_registers:
                # ldr xxx, [reg]
                # ldr xxx, [reg, <imm>]
                if f", [{reg}" in row_parts[1]:
                    self._adrp_pair_registers.remove(reg)
                    return normalize_imms(row, AARCH64_SETTINGS)
        elif mnemonic == "add":
            for reg in self._adrp_pair_registers:
                # add reg, reg, <imm>
                if row_parts[1].startswith(f"{reg}, {reg}, "):
                    self._adrp_pair_registers.remove(reg)
                    return normalize_imms(row, AARCH64_SETTINGS)

        return row


class AsmProcessorI686(AsmProcessor):
    def process_reloc(self, row: str, prev: str) -> Tuple[str, Optional[str]]:
        if "WRTSEG" in row:  # ignore WRTSEG (watcom)
            return prev, None
        repl = row.split()[-1]
        mnemonic, args = prev.split(maxsplit=1)
        offset = False

        # Calls
        # Example call a2f
        # Example call *0
        if mnemonic == "call":
            addr_imm = re.search(r"(^|(?<=\*)|(?<=\*\%cs\:))[0-9a-f]+", args)

        # Direct use of reloc
        # Example 0x0,0x8(%edi)
        # Example 0x0,%edi
        # Example *0x0(,%edx,4)
        # Example %edi,0
        # Example movb $0x0,0x0
        # Example $0x0,0x4(%edi)
        # Match 0x0 part to replace
        else:
            addr_imm = re.search(r"(?:0x)?0+$", args)

        if not addr_imm:
            addr_imm = re.search(r"(^\$?|(?<=\*))0x0", args)

        # Offset value
        # Example 0x4,%eax
        # Example $0x4,%eax
        if not addr_imm:
            addr_imm = re.search(r"(^|(?<=\*)|(?<=\$))0x[0-9a-f]+", args)
            offset = True

        if not addr_imm:
            assert False, f"failed to find address immediate for line '{prev}'"

        start, end = addr_imm.span()

        if "R_386_NONE" in row:
            pass
        elif "R_386_32" in row:
            pass
        elif "R_386_PC32" in row:
            pass
        elif "R_386_16" in row:
            pass
        elif "R_386_PC16" in row:
            pass
        elif "R_386_8" in row:
            pass
        elif "R_386_PC8" in row:
            pass
        elif "dir32" in row:
            if "+" in repl:
                repl = repl.split("+")[0]
        elif "DISP32" in row:
            pass
        elif "OFF32" in row:
            pass
        elif "OFFPC32" in row:
            if "+" in repl:
                repl = repl.split("+")[0]
        elif "R_386_GOT32" in row:
            repl = f"%got({repl})"
        elif "R_386_PLT32" in row:
            repl = f"%plt({repl})"
        elif "R_386_RELATIVE" in row:
            repl = f"%rel({repl})"
        elif "R_386_GOTOFF" in row:
            repl = f"%got({repl})"
        elif "R_386_GOTPC" in row:
            repl = f"%got({repl})"
        elif "R_386_32PLT" in row:
            repl = f"%plt({repl})"
        else:
            assert False, f"unknown relocation type '{row}' for line '{prev}'"

        if offset:
            repl = f"{repl}+{addr_imm.group()}"

        return f"{mnemonic}\t{args[:start]+repl+args[end:]}", repl

    def is_end_of_function(self, mnemonic: str, args: str) -> bool:
        return mnemonic == "ret"


class AsmProcessorSH2(AsmProcessor):
    def __init__(self, config: Config) -> None:
        super().__init__(config)

    def process_reloc(self, row: str, prev: str) -> Tuple[str, Optional[str]]:
        return prev, None

    def is_end_of_function(self, mnemonic: str, args: str) -> bool:
        return mnemonic == "rts"


class AsmProcessorM68k(AsmProcessor):
    def pre_process(
        self, mnemonic: str, args: str, next_row: Optional[str]
    ) -> Tuple[str, str]:
        # replace objdump's syntax of pointer accesses with the equivilant in AT&T syntax for readability
        return mnemonic, re.sub(
            r"%(sp|a[0-7]|fp|pc)@(?:(?:\((-?(?:0x[0-9a-f]+|[0-9]+)) *(,%d[0-7]:[wl])?\))|(\+)|(-))?",
            r"\5\2(%\1\3)\4",
            args,
        )

    def process_reloc(self, row: str, prev: str) -> Tuple[str, Optional[str]]:
        repl = row.split()[-1]
        mnemonic, args = prev.split(maxsplit=1)

        addr_imm = re.search(r"(?<![#da])(0x[0-9a-f]+|[0-9]+) ?", args)
        if not addr_imm:
            assert False, f"failed to find address immediate for line '{prev}'"
        start, end = addr_imm.span()

        if "R_68K_NONE" in row:
            pass
        elif "R_68K_32" in row:
            pass
        elif "R_68K_16" in row:
            pass
        elif "R_68K_8" in row:
            pass
        elif "R_68K_GOT32O" in row:
            repl = "@GOT"
        elif "R_68K_GOT16O" in row:
            repl += "@GOT"
        elif "R_68K_GOT8O" in row:
            repl += "@GOT"
        elif "R_68K_GOT32" in row:
            repl += "@GOTPC"
        elif "R_68K_GOT16" in row:
            repl += "@GOTPC"
        elif "R_68K_GOT8" in row:
            repl += "@GOTPC"
        else:
            assert False, f"unknown relocation type '{row}' for line '{prev}'"

        return f"{mnemonic}\t{args[:start]+repl+args[end:]}", repl

    def is_end_of_function(self, mnemonic: str, args: str) -> bool:
        return mnemonic == "rts" or mnemonic == "rte" or mnemonic == "rtr"


@dataclass
class ArchSettings:
    name: str
    re_int: Pattern[str]
    re_comment: Pattern[str]
    re_reg: Pattern[str]
    re_sprel: Pattern[str]
    re_large_imm: Pattern[str]
    re_imm: Pattern[str]
    re_reloc: Pattern[str]
    branch_instructions: Set[str]
    instructions_with_address_immediates: Set[str]
    forbidden: Set[str] = field(default_factory=lambda: set(string.ascii_letters + "_"))
    arch_flags: List[str] = field(default_factory=list)
    branch_likely_instructions: Set[str] = field(default_factory=set)
    proc: Type[AsmProcessor] = AsmProcessor
    big_endian: Optional[bool] = True
    delay_slot_instructions: Set[str] = field(default_factory=set)


MIPS_BRANCH_LIKELY_INSTRUCTIONS = {
    "beql",
    "bnel",
    "beqzl",
    "bnezl",
    "bgezl",
    "bgtzl",
    "blezl",
    "bltzl",
    "bc1tl",
    "bc1fl",
}
MIPS_BRANCH_INSTRUCTIONS = MIPS_BRANCH_LIKELY_INSTRUCTIONS.union(
    {
        "b",
        "beq",
        "bne",
        "beqz",
        "bnez",
        "bgez",
        "bgtz",
        "blez",
        "bltz",
        "bc1t",
        "bc1f",
    }
)

ARM32_PREFIXES = {"b", "bl"}
ARM32_CONDS = {
    "",
    "eq",
    "ne",
    "cs",
    "cc",
    "mi",
    "pl",
    "vs",
    "vc",
    "hi",
    "ls",
    "ge",
    "lt",
    "gt",
    "le",
    "al",
}
ARM32_SUFFIXES = {"", ".n", ".w"}
ARM32_BRANCH_INSTRUCTIONS = {
    f"{prefix}{cond}{suffix}"
    for prefix in ARM32_PREFIXES
    for cond in ARM32_CONDS
    for suffix in ARM32_SUFFIXES
}

AARCH64_BRANCH_INSTRUCTIONS = {
    "b",
    "b.eq",
    "b.ne",
    "b.cs",
    "b.hs",
    "b.cc",
    "b.lo",
    "b.mi",
    "b.pl",
    "b.vs",
    "b.vc",
    "b.hi",
    "b.ls",
    "b.ge",
    "b.lt",
    "b.gt",
    "b.le",
    "cbz",
    "cbnz",
    "tbz",
    "tbnz",
}

PPC_BRANCH_INSTRUCTIONS = {
    "b",
    "beq",
    "beq+",
    "beq-",
    "bne",
    "bne+",
    "bne-",
    "blt",
    "blt+",
    "blt-",
    "ble",
    "ble+",
    "ble-",
    "bdnz",
    "bdnz+",
    "bdnz-",
    "bge",
    "bge+",
    "bge-",
    "bgt",
    "bgt+",
    "bgt-",
    "bso",
    "bso+",
    "bso-",
    "bns",
    "bns+",
    "bns-",
}

I686_BRANCH_INSTRUCTIONS = {
    "call",
    "jmp",
    "ljmp",
    "ja",
    "jae",
    "jb",
    "jbe",
    "jc",
    "jcxz",
    "jecxz",
    "jrcxz",
    "je",
    "jg",
    "jge",
    "jl",
    "jle",
    "jna",
    "jnae",
    "jnb",
    "jnbe",
    "jnc",
    "jne",
    "jng",
    "jnge",
    "jnl",
    "jnle",
    "jno",
    "jnp",
    "jns",
    "jnz",
    "jo",
    "jp",
    "jpe",
    "jpo",
    "js",
    "jz",
    "ja",
    "jae",
    "jb",
    "jbe",
    "jc",
    "je",
    "jz",
    "jg",
    "jge",
    "jl",
    "jle",
    "jna",
    "jnae",
    "jnb",
    "jnbe",
    "jnc",
    "jne",
    "jng",
    "jnge",
    "jnl",
    "jnle",
    "jno",
    "jnp",
    "jns",
    "jnz",
    "jo",
    "jp",
    "jpe",
    "jpo",
    "js",
    "jz",
}

SH2_BRANCH_INSTRUCTIONS = {
    "bf",
    "bf.s",
    "bt",
    "bt.s",
    "bra",
    "bsr",
}

M68K_CONDS = {
    "ra",
    "cc",
    "cs",
    "eq",
    "ge",
    "gt",
    "hi",
    "le",
    "ls",
    "lt",
    "mi",
    "ne",
    "pl",
    "vc",
    "vs",
}

M68K_BRANCH_INSTRUCTIONS = {
    f"{prefix}{cond}{suffix}"
    for prefix in {"b", "db"}
    for cond in M68K_CONDS
    for suffix in {"s", "w"}
}.union(
    {
        "dbt",
        "dbf",
        "bsrw",
        "bsrs",
    }
)


MIPS_SETTINGS = ArchSettings(
    name="mips",
    re_int=re.compile(r"[0-9]+"),
    re_comment=re.compile(r"<.*>"),
    # Includes:
    #   - General purpose registers v0..1, a0..7, t0..9, s0..8, zero, at, fp, k0..1/kt0..1
    #   - Float registers f0..31, or fv0..1, fa0..7, ft0..15, fs0..8 plus odd complements
    # (actually used number depends on ABI)
    # sp, gp should not be in this list
    re_reg=re.compile(r"\$?\b([astv][0-9]|at|f[astv]?[0-9]+f?|kt?[01]|fp|ra|zero)\b"),
    re_sprel=re.compile(r"(?<=,)([0-9]+|0x[0-9a-f]+)\(sp\)"),
    re_large_imm=re.compile(r"-?[1-9][0-9]{2,}|-?0x[0-9a-f]{3,}"),
    re_imm=re.compile(
        r"(\b|-)([0-9]+|0x[0-9a-fA-F]+)\b(?!\(sp)|%(lo|hi|got|gp_rel|call16)\([^)]*\)"
    ),
    re_reloc=re.compile(r"R_MIPS_"),
    arch_flags=["-m", "mips:4300"],
    branch_likely_instructions=MIPS_BRANCH_LIKELY_INSTRUCTIONS,
    branch_instructions=MIPS_BRANCH_INSTRUCTIONS,
    instructions_with_address_immediates=MIPS_BRANCH_INSTRUCTIONS.union({"j", "jal"}),
    delay_slot_instructions=MIPS_BRANCH_INSTRUCTIONS.union({"j", "jal", "jr", "jalr"}),
    proc=AsmProcessorMIPS,
)

MIPSEL_SETTINGS = replace(
    MIPS_SETTINGS, name="mipsel", big_endian=False, arch_flags=["-m", "mips:3000"]
)

MIPSEE_SETTINGS = replace(
    MIPSEL_SETTINGS, name="mipsee", arch_flags=["-m", "mips:5900"]
)

MIPS_ARCH_NAMES = {"mips", "mipsel", "mipsee"}

ARM32_SETTINGS = ArchSettings(
    name="arm32",
    re_int=re.compile(r"[0-9]+"),
    re_comment=re.compile(r"(<.*>|//.*$)"),
    # Includes:
    #   - General purpose registers: r0..13
    #   - Frame pointer registers: lr (r14), pc (r15)
    #   - VFP/NEON registers: s0..31, d0..31, q0..15, fpscr, fpexc, fpsid
    # SP should not be in this list.
    re_reg=re.compile(
        r"\$?\b([rq][0-9]|[rq]1[0-5]|pc|lr|[ds][12]?[0-9]|[ds]3[01]|fp(scr|exc|sid))\b"
    ),
    re_sprel=re.compile(r"sp, #-?(0x[0-9a-fA-F]+|[0-9]+)\b"),
    re_large_imm=re.compile(r"-?[1-9][0-9]{2,}|-?0x[0-9a-f]{3,}"),
    re_imm=re.compile(r"(?<!sp, )#-?(0x[0-9a-fA-F]+|[0-9]+)\b"),
    re_reloc=re.compile(r"R_ARM_"),
    branch_instructions=ARM32_BRANCH_INSTRUCTIONS,
    instructions_with_address_immediates=ARM32_BRANCH_INSTRUCTIONS.union({"adr"}),
    proc=AsmProcessorARM32,
)

ARMEL_SETTINGS = replace(ARM32_SETTINGS, name="armel", big_endian=False)

AARCH64_SETTINGS = ArchSettings(
    name="aarch64",
    re_int=re.compile(r"[0-9]+"),
    re_comment=re.compile(r"(<.*>|//.*$)"),
    # GPRs and FP registers: X0-X30, W0-W30, [BHSDVQ]0..31
    # (FP registers may be followed by data width and number of elements, e.g. V0.4S)
    # The zero registers and SP should not be in this list.
    re_reg=re.compile(
        r"\$?\b([bhsdvq]([12]?[0-9]|3[01])(\.\d\d?[bhsdvq])?|[xw][12]?[0-9]|[xw]30)\b"
    ),
    re_sprel=re.compile(r"sp, #-?(0x[0-9a-fA-F]+|[0-9]+)\b"),
    re_large_imm=re.compile(r"-?[1-9][0-9]{2,}|-?0x[0-9a-f]{3,}"),
    re_imm=re.compile(r"(?<!sp, )#-?(0x[0-9a-fA-F]+|[0-9]+)\b"),
    re_reloc=re.compile(r"R_AARCH64_"),
    branch_instructions=AARCH64_BRANCH_INSTRUCTIONS,
    instructions_with_address_immediates=AARCH64_BRANCH_INSTRUCTIONS.union(
        {"bl", "adrp"}
    ),
    proc=AsmProcessorAArch64,
)

PPC_SETTINGS = ArchSettings(
    name="ppc",
    re_int=re.compile(r"[0-9]+"),
    re_comment=re.compile(r"(<.*>|//.*$)"),
    # r1 not included
    re_reg=re.compile(r"\$?\b([rf](?:[02-9]|[1-9][0-9]+)|f1)\b"),
    re_sprel=re.compile(r"(?<=,)(-?[0-9]+|-?0x[0-9a-f]+)\(r1\)"),
    re_large_imm=re.compile(r"-?[1-9][0-9]{2,}|-?0x[0-9a-f]{3,}"),
    re_imm=re.compile(
        r"(\b|-)([0-9]+|0x[0-9a-fA-F]+)\b(?!\(r1\))|[^ \t,]+@(l|ha|h|sda21)"
    ),
    re_reloc=re.compile(r"R_PPC_"),
    arch_flags=["-m", "powerpc", "-M", "broadway"],
    branch_instructions=PPC_BRANCH_INSTRUCTIONS,
    instructions_with_address_immediates=PPC_BRANCH_INSTRUCTIONS.union({"bl"}),
    proc=AsmProcessorPPC,
)

I686_SETTINGS = ArchSettings(
    name="i686",
    re_int=re.compile(r"[0-9]+"),
    re_comment=re.compile(r"<.*>"),
    # Includes:
    #   - (e)a-d(x,l,h)
    #   - (e)s,d,b(i,p)(l)
    #   - cr0-7
    #   - x87 st
    #   - MMX, SSE vector registers
    #   - cursed registers: eal ebl ebh edl edh...
    re_reg=re.compile(
        r"\%?\b(e?(([sd]i|[sb]p)l?|[abcd][xhl])|[cdesfg]s|cr[0-7]|x?mm[0-7]|st)\b"
    ),
    re_large_imm=re.compile(r"-?[1-9][0-9]{2,}|-?0x[0-9a-f]{3,}"),
    re_sprel=re.compile(r"-?(0x[0-9a-f]+|[0-9]+)(?=\((%ebp|%esi)\))"),
    re_imm=re.compile(r"-?(0x[0-9a-f]+|[0-9]+)"),
    re_reloc=re.compile(r"R_386_|dir32|DISP32|WRTSEG|OFF32|OFFPC32"),
    # The x86 architecture has a variable instruction length. The raw bytes of
    # an instruction as displayed by objdump can line wrap if it's long enough.
    # This destroys the objdump output processor logic, so we avoid this.
    arch_flags=["-m", "i386", "--no-show-raw-insn"],
    branch_instructions=I686_BRANCH_INSTRUCTIONS,
    instructions_with_address_immediates=I686_BRANCH_INSTRUCTIONS.union({"mov"}),
    proc=AsmProcessorI686,
)

SH2_SETTINGS = ArchSettings(
    name="sh2",
    # match -128-127 preceded by a '#' with a ',' after (8 bit immediates)
    re_int=re.compile(r"(?<=#)(-?(?:1[01][0-9]|12[0-8]|[1-9][0-9]?|0))(?=,)"),
    # match <text>, match ! and after
    re_comment=re.compile(r"<.*?>|!.*"),
    #   - r0-r15 general purpose registers, r15 is stack pointer during exceptions
    #   - sr, gbr, vbr - control registers
    #   - mach, macl, pr, pc - system registers
    re_reg=re.compile(r"r1[0-5]|r[0-9]"),
    # sh2 has pc-relative and gbr-relative but not stack-pointer-relative
    re_sprel=re.compile(r"(?<=,)([0-9]+|0x[0-9a-f]+)\(sp\)"),
    # max immediate size is 8-bit
    re_large_imm=re.compile(r"-?[1-9][0-9]{2,}|-?0x[0-9a-f]{3,}"),
    re_imm=re.compile(r"\b0[xX][0-9a-fA-F]+\b"),
    # https://github.com/bminor/binutils-gdb/blob/master/bfd/elf32-sh-relocs.h#L21
    re_reloc=re.compile(r"R_SH_"),
    arch_flags=["-m", "sh2"],
    branch_instructions=SH2_BRANCH_INSTRUCTIONS,
    instructions_with_address_immediates=SH2_BRANCH_INSTRUCTIONS.union(
        {"bf", "bf.s", "bt", "bt.s", "bra", "bsr"}
    ),
    delay_slot_instructions=SH2_BRANCH_INSTRUCTIONS.union(
        {"bf.s", "bt.s", "bra", "braf", "bsr", "bsrf", "jmp", "jsr", "rts"}
    ),
    proc=AsmProcessorSH2,
)

SH4_SETTINGS = replace(
    SH2_SETTINGS,
    name="sh4",
    #   - fr0-fr15, dr0-dr14, xd0-xd14, fv0-fv12 FP registers
    #     dr/xd registers can only be even-numbered, and fv registers can only be a multiple of 4
    re_reg=re.compile(
        r"r1[0-5]|r[0-9]|fr1[0-5]|fr[0-9]|dr[02468]|dr1[024]|xd[02468]|xd1[024]|fv[048]|fv12"
    ),
    arch_flags=["-m", "sh4"],
)

SH4EL_SETTINGS = replace(SH4_SETTINGS, name="sh4el", big_endian=False)

M68K_SETTINGS = ArchSettings(
    name="m68k",
    re_int=re.compile(r"[0-9]+"),
    # '|' is used by assemblers, but is not used by objdump
    re_comment=re.compile(r"<.*>"),
    # Includes:
    # - d0-d7 data registers
    # - a0-a6 address registers
    # - fp0-fp7 floating-point registers
    # - usp (user sp)
    # - fp, sr, ccr
    # - fpcr, fpsr, fpiar
    re_reg=re.compile(r"%\b(d[0-7]|a[0-6]|usp|fp([0-7]|cr|sr|iar)?|sr|ccr)(:[wl])?\b"),
    # This matches all stack accesses that do not use an index register
    re_sprel=re.compile(r"-?(0x[0-9a-f]+|[0-9]+)(?=\((%sp|%a7)\))"),
    re_imm=re.compile(r"#?-?\b(0x[0-9a-f]+|[0-9]+)(?!\()"),
    re_large_imm=re.compile(r"#?-?([1-9][0-9]{2,}|0x[0-9a-f]{3,})"),
    re_reloc=re.compile(r"R_68K_"),
    arch_flags=["-m", "m68k"],
    branch_instructions=M68K_BRANCH_INSTRUCTIONS,
    # Pretty much every instruction can take an address immediate
    instructions_with_address_immediates=M68K_BRANCH_INSTRUCTIONS.union("jmp", "jsr"),
    proc=AsmProcessorM68k,
)

ARCH_SETTINGS = [
    MIPS_SETTINGS,
    MIPSEL_SETTINGS,
    MIPSEE_SETTINGS,
    ARM32_SETTINGS,
    ARMEL_SETTINGS,
    AARCH64_SETTINGS,
    PPC_SETTINGS,
    I686_SETTINGS,
    SH2_SETTINGS,
    SH4_SETTINGS,
    SH4EL_SETTINGS,
    M68K_SETTINGS,
]


def hexify_int(row: str, pat: Match[str], arch: ArchSettings) -> str:
    full = pat.group(0)

    # sh2/sh4 only has 8-bit immediates, just convert them uniformly without
    # any -hex stuff
    if arch.name == "sh2" or arch.name == "sh4" or arch.name == "sh4el":
        return hex(int(full) & 0xFF)

    if len(full) <= 1:
        # leave one-digit ints alone
        return full
    start, end = pat.span()
    if start and row[start - 1] in arch.forbidden:
        return full
    if end < len(row) and row[end] in arch.forbidden:
        return full
    return hex(int(full))


def parse_relocated_line(line: str) -> Tuple[str, str, str]:
    # Pick out the last argument
    for c in ",\t ":
        if c in line:
            ind2 = line.rindex(c)
            break
    else:
        raise Exception(f"failed to parse relocated line: {line}")
    before = line[: ind2 + 1]
    after = line[ind2 + 1 :]
    # Move an optional ($reg) part of it to 'after'
    ind2 = after.find("(")
    if ind2 == -1:
        imm, after = after, ""
    else:
        imm, after = after[:ind2], after[ind2:]
    return before, imm, after


def reloc_addend_from_imm(imm: str, before: str, arch: ArchSettings) -> str:
    """For architectures like MIPS where relocations have addends embedded in
    the code as immediates, convert such an immediate into an addition/
    subtraction that can occur just after the symbol."""
    # TODO this is incorrect for MIPS %lo/%hi which need to be paired up
    # and combined. In practice, this means we only get symbol offsets within
    # %lo, while %hi just shows the symbol. Unfortunately, objdump's output
    # loses relocation order, so we cannot do this without parsing ELF relocs
    # ourselves...
    mnemonic = before.split()[0]
    if mnemonic in arch.instructions_with_address_immediates:
        addend = int(imm, 16)
    else:
        addend = int(imm, 0)
    if addend == 0:
        return ""
    elif addend < 0:
        return hex(addend)
    else:
        return "+" + hex(addend)


def pad_mnemonic(line: str) -> str:
    if "\t" not in line:
        return line
    mn, args = line.split("\t", 1)
    return f"{mn:<7s} {args}"


@dataclass
class Line:
    mnemonic: str
    diff_row: str
    original: str
    normalized_original: str
    scorable_line: str
    symbol: Optional[str] = None
    line_num: Optional[int] = None
    branch_target: Optional[int] = None
    data_pool_addr: Optional[int] = None
    source_filename: Optional[str] = None
    source_line_num: Optional[int] = None
    source_lines: List[str] = field(default_factory=list)
    comment: Optional[str] = None


def process(dump: str, config: Config) -> List[Line]:
    arch = config.arch
    processor = arch.proc(config)
    source_lines = []
    source_filename = None
    source_line_num = None
    rets_remaining = config.stop_at_ret

    i = 0
    num_instr = 0
    data_refs: Dict[int, Dict[str, List[int]]] = defaultdict(lambda: defaultdict(list))
    output: List[Line] = []
    lines = dump.split("\n")
    while i < len(lines):
        row = lines[i]
        i += 1

        if not row:
            continue

        if re.match(r"^[0-9a-f]+ <.*>:$", row):
            continue

        if row.startswith("DATAREF"):
            parts = row.split(" ", 3)
            text_offset = int(parts[1])
            from_offset = int(parts[2])
            from_section = parts[3]
            data_refs[text_offset][from_section].append(from_offset)
            continue

        if config.diff_obj and num_instr >= config.max_function_size_lines:
            output.append(
                Line(
                    mnemonic="...",
                    diff_row="...",
                    original="...",
                    normalized_original="...",
                    scorable_line="...",
                )
            )
            break

        if not re.match(r"^\s+[0-9a-f]+:\s+", row):
            # This regex is conservative, and assumes the file path does not contain "weird"
            # characters like tabs or angle brackets.
            if re.match(r"^[^ \t<>][^\t<>]*:[0-9]+( \(discriminator [0-9]+\))?$", row):
                source_filename, _, tail = row.rpartition(":")
                source_line_num = int(tail.partition(" ")[0])
            source_lines.append(row)
            continue

        # If the instructions loads a data pool symbol, extract the address of
        # the symbol.
        data_pool_addr = None
        pool_match = re.search(ARM32_LOAD_POOL_PATTERN, row)
        if pool_match:
            offset = pool_match.group(3).split(" ")[0][1:]
            data_pool_addr = int(offset, 16)

        m_comment = re.search(arch.re_comment, row)
        comment = m_comment[0] if m_comment else None
        row = re.sub(arch.re_comment, "", row)
        line_num_str = row.split(":")[0]
        row = row.rstrip()
        tabs = row.split("\t")
        line_num = eval_line_num(line_num_str.strip())

        # TODO: use --no-show-raw-insn for all arches
        if arch.name == "i686":
            row = "\t".join(tabs[1:])
        else:
            row = "\t".join(tabs[2:])

        if line_num in data_refs:
            refs = data_refs[line_num]
            ref_str = "; ".join(
                section_name + "+" + ",".join(hex(off) for off in offs)
                for section_name, offs in refs.items()
            )
            output.append(
                Line(
                    mnemonic="<data-ref>",
                    diff_row="<data-ref>",
                    original=ref_str,
                    normalized_original=ref_str,
                    scorable_line="<data-ref>",
                )
            )

        if "\t" in row:
            row_parts = row.split("\t", 1)
        else:
            # powerpc-eabi-objdump doesn't use tabs
            row_parts = [part.lstrip() for part in row.split(" ", 1)]

        mnemonic = row_parts[0].strip()
        args = row_parts[1].strip() if len(row_parts) >= 2 else ""

        next_line = lines[i] if i < len(lines) else None
        mnemonic, args = processor.pre_process(mnemonic, args, next_line)
        row = mnemonic + "\t" + args.replace("\t", "  ")

        addr = ""
        if mnemonic in arch.instructions_with_address_immediates:
            row, addr = split_off_address(row)
            # objdump prefixes addresses with 0x/-0x if they don't resolve to some
            # symbol + offset. Strip that.
            addr = addr.replace("0x", "")

        row = re.sub(arch.re_int, lambda m: hexify_int(row, m, arch), row)
        row += addr

        # Let 'original' be 'row' with relocations applied, while we continue
        # transforming 'row' into a coarser version that ignores registers and
        # immediates.
        original = row

        symbol = None
        while i < len(lines):
            reloc_row = lines[i]
            if re.search(arch.re_reloc, reloc_row):
                original, reloc_symbol = processor.process_reloc(reloc_row, original)
                if reloc_symbol is not None:
                    symbol = reloc_symbol
            else:
                break
            i += 1

        is_text_relative_j = False
        if (
            arch.name in MIPS_ARCH_NAMES
            and mnemonic == "j"
            and symbol is not None
            and symbol.startswith(".text")
        ):
            symbol = None
            original = row
            is_text_relative_j = True

        normalized_original = processor.normalize(mnemonic, original)

        scorable_line = normalized_original
        if not config.score_stack_differences:
            scorable_line = re.sub(arch.re_sprel, "addr(sp)", scorable_line)

        row = re.sub(arch.re_reg, "<reg>", row)
        row = re.sub(arch.re_sprel, "addr(sp)", row)
        if mnemonic in arch.instructions_with_address_immediates:
            row = row.strip()
            row, _ = split_off_address(row)
            row += "<imm>"
        else:
            row = normalize_imms(row, arch)

        branch_target = None
        if (
            mnemonic in arch.branch_instructions or is_text_relative_j
        ) and symbol is None:
            # Here, we try to match a wide variety of addressing mode:
            # - Global deref with offset: *0x1234(%eax)
            # - Global deref: *0x1234
            # - Register deref: *(%eax)
            #
            # We first have a single regex to match register deref and global
            # deref with offset
            x86_longjmp = re.search(r"\*(.*)\(", args)
            if x86_longjmp:
                capture = x86_longjmp.group(1)
                if capture != "" and capture.isnumeric():
                    branch_target = int(capture, 16)
            else:
                # Then, we try to match the global deref in a separate regex.
                x86_longjmp = re.search(r"\*(.*)", args)
                if x86_longjmp:
                    capture = x86_longjmp.group(1)
                    if capture != "" and capture.isnumeric():
                        branch_target = int(capture, 16)
                else:
                    branch_target = int(args.split(",")[-1], 16)

        output.append(
            Line(
                mnemonic=mnemonic,
                diff_row=row,
                original=original,
                normalized_original=normalized_original,
                scorable_line=scorable_line,
                symbol=symbol,
                line_num=line_num,
                branch_target=branch_target,
                data_pool_addr=data_pool_addr,
                source_filename=source_filename,
                source_line_num=source_line_num,
                source_lines=source_lines,
                comment=comment,
            )
        )
        num_instr += 1
        source_lines = []

        if rets_remaining and processor.is_end_of_function(mnemonic, args):
            rets_remaining -= 1
            if rets_remaining == 0:
                break

    processor.post_process(output)
    return output


def normalize_imms(row: str, arch: ArchSettings) -> str:
    return re.sub(arch.re_imm, "<imm>", row)


def normalize_stack(row: str, arch: ArchSettings) -> str:
    return re.sub(arch.re_sprel, "addr(sp)", row)


def check_for_symbol_mismatch(
    old_line: Line, new_line: Line, symbol_map: Dict[str, str]
) -> bool:
    assert old_line.symbol is not None
    assert new_line.symbol is not None

    if new_line.symbol.startswith("%hi"):
        return False

    if old_line.symbol not in symbol_map:
        symbol_map[old_line.symbol] = new_line.symbol
        return False
    elif symbol_map[old_line.symbol] == new_line.symbol:
        return False

    return True


def field_matches_any_symbol(field: str, arch: ArchSettings) -> bool:
    if arch.name == "ppc":
        if "..." in field:
            return True

        parts = field.rsplit("@", 1)
        if len(parts) == 2 and parts[1] in {"l", "h", "ha", "sda21"}:
            field = parts[0]

        return re.fullmatch((r"^@\d+$"), field) is not None

    if arch.name in MIPS_ARCH_NAMES:
        return "." in field

    # Example: ".text+0x34"
    if arch.name == "arm32":
        return "." in field

    return False


def split_off_address(line: str) -> Tuple[str, str]:
    """Split e.g. 'beqz $r0,1f0' into 'beqz $r0,' and '1f0'."""
    parts = line.split(",")
    if len(parts) < 2:
        parts = line.split(None, 1)
        if len(parts) < 2:
            parts.append("")
    off = len(line) - len(parts[-1].strip())
    return line[:off], line[off:]


def diff_sequences_difflib(
    seq1: List[str], seq2: List[str]
) -> List[Tuple[str, int, int, int, int]]:
    differ = difflib.SequenceMatcher(a=seq1, b=seq2, autojunk=False)
    return differ.get_opcodes()


def diff_sequences(
    seq1: List[str], seq2: List[str], algorithm: str
) -> List[Tuple[str, int, int, int, int]]:
    if algorithm != "levenshtein":
        return diff_sequences_difflib(seq1, seq2)

    # The Levenshtein library assumes that we compare strings, not lists. Convert.
    remapping: Dict[str, str] = {}

    def remap(seq: List[str]) -> str:
        seq = seq[:]
        for i in range(len(seq)):
            val = remapping.get(seq[i])
            if val is None:
                val = chr(len(remapping))
                remapping[seq[i]] = val
            seq[i] = val
        return "".join(seq)

    try:
        rem1 = remap(seq1)
        rem2 = remap(seq2)
    except ValueError:
        if len(seq1) + len(seq2) < 0x110000:
            raise
        # If there are too many unique elements, chr() doesn't work.
        # Assume this is the case and fall back to difflib.
        return diff_sequences_difflib(seq1, seq2)

    import Levenshtein

    ret: List[Tuple[str, int, int, int, int]] = Levenshtein.opcodes(rem1, rem2)
    return ret


def diff_lines(
    lines1: List[Line],
    lines2: List[Line],
    algorithm: str,
) -> List[Tuple[Optional[Line], Optional[Line]]]:
    ret = []
    for tag, i1, i2, j1, j2 in diff_sequences(
        [line.mnemonic for line in lines1],
        [line.mnemonic for line in lines2],
        algorithm,
    ):
        for line1, line2 in itertools.zip_longest(lines1[i1:i2], lines2[j1:j2]):
            if tag == "replace":
                if line1 is None:
                    tag = "insert"
                elif line2 is None:
                    tag = "delete"
            elif tag == "insert":
                assert line1 is None
            elif tag == "delete":
                assert line2 is None
            ret.append((line1, line2))

    return ret


def diff_sameline(
    old_line: Line, new_line: Line, config: Config, symbol_map: Dict[str, str]
) -> Tuple[int, int, bool]:
    old = old_line.scorable_line
    new = new_line.scorable_line
    if old == new:
        return (0, 0, False)

    num_stack_penalties = 0
    num_regalloc_penalties = 0
    has_symbol_mismatch = False

    ignore_last_field = False
    if config.score_stack_differences:
        oldsp = re.search(config.arch.re_sprel, old)
        newsp = re.search(config.arch.re_sprel, new)
        if oldsp and newsp:
            oldrel = int(oldsp.group(1) or "0", 0)
            newrel = int(newsp.group(1) or "0", 0)
            num_stack_penalties += abs(oldrel - newrel)
            ignore_last_field = True

    # Probably regalloc difference, or signed vs unsigned

    # Compare each field in order
    new_parts, old_parts = new.split(None, 1), old.split(None, 1)
    newfields = new_parts[1].split(",") if len(new_parts) > 1 else []
    oldfields = old_parts[1].split(",") if len(old_parts) > 1 else []
    if ignore_last_field:
        newfields = newfields[:-1]
        oldfields = oldfields[:-1]
    else:
        # If the last field has a parenthesis suffix, e.g. "0x38(r7)"
        # we split that part out to make it a separate field
        # however, we don't split if it has a proceeding % macro, e.g. "%lo(.data)"
        re_paren = re.compile(r"(?<!%hi)(?<!%lo)(?<!%got)(?<!%call16)(?<!%gp_rel)\(")
        oldfields = oldfields[:-1] + (
            re_paren.split(oldfields[-1]) if len(oldfields) > 0 else []
        )
        newfields = newfields[:-1] + (
            re_paren.split(newfields[-1]) if len(newfields) > 0 else []
        )

    for nf, of in zip(newfields, oldfields):
        if nf != of:
            # If the new field is a match to any symbol case
            # and the old field had a relocation, then ignore this mismatch
            if (
                new_line.symbol
                and old_line.symbol
                and field_matches_any_symbol(nf, config.arch)
            ):
                if check_for_symbol_mismatch(old_line, new_line, symbol_map):
                    has_symbol_mismatch = True
                continue
            num_regalloc_penalties += 1

    # Penalize any extra fields
    num_regalloc_penalties += abs(len(newfields) - len(oldfields))

    return (num_stack_penalties, num_regalloc_penalties, has_symbol_mismatch)


def score_diff_lines(
    lines: List[Tuple[Optional[Line], Optional[Line]]],
    config: Config,
    symbol_map: Dict[str, str],
) -> int:
    # This logic is copied from `scorer.py` from the decomp permuter project
    # https://github.com/simonlindholm/decomp-permuter/blob/main/src/scorer.py
    num_stack_penalties = 0
    num_regalloc_penalties = 0
    num_reordering_penalties = 0
    num_insertion_penalties = 0
    num_deletion_penalties = 0
    deletions = []
    insertions = []

    def diff_insert(line: str) -> None:
        # Reordering or totally different codegen.
        # Defer this until later when we can tell.
        insertions.append(line)

    def diff_delete(line: str) -> None:
        deletions.append(line)

    # Find the end of the last long streak of matching mnemonics, if it looks
    # like the objdump output was truncated. This is used to skip scoring
    # misaligned lines at the end of the diff.
    last_mismatch = -1
    max_index = None
    lines_were_truncated = False
    for index, (line1, line2) in enumerate(lines):
        if (line1 and line1.original == "...") or (line2 and line2.original == "..."):
            lines_were_truncated = True
        if line1 and line2 and line1.mnemonic == line2.mnemonic:
            if index - last_mismatch >= 50:
                max_index = index
        else:
            last_mismatch = index
    if not lines_were_truncated:
        max_index = None

    for index, (line1, line2) in enumerate(lines):
        if max_index is not None and index > max_index:
            break
        if line1 and line2 and line1.mnemonic == line2.mnemonic:
            sp, rp, _ = diff_sameline(line1, line2, config, symbol_map)
            num_stack_penalties += sp
            num_regalloc_penalties += rp
        else:
            if line1:
                diff_delete(line1.scorable_line)
            if line2:
                diff_insert(line2.scorable_line)

    insertions_co = Counter(insertions)
    deletions_co = Counter(deletions)
    for item in insertions_co + deletions_co:
        ins = insertions_co[item]
        dels = deletions_co[item]
        common = min(ins, dels)
        num_insertion_penalties += ins - common
        num_deletion_penalties += dels - common
        num_reordering_penalties += common

    return (
        num_stack_penalties * config.penalty_stackdiff
        + num_regalloc_penalties * config.penalty_regalloc
        + num_reordering_penalties * config.penalty_reordering
        + num_insertion_penalties * config.penalty_insertion
        + num_deletion_penalties * config.penalty_deletion
    )


@dataclass(frozen=True)
class OutputLine:
    base: Optional[Text] = field(compare=False)
    fmt2: Text = field(compare=False)
    key2: Optional[str]
    boring: bool = field(compare=False)
    is_data_ref: bool = field(compare=False)
    line1: Optional[Line] = field(compare=False)
    line2: Optional[Line] = field(compare=False)


@dataclass(frozen=True)
class Diff:
    lines: List[OutputLine]
    score: int
    max_score: int


def trim_nops(lines: List[Line], arch: ArchSettings) -> List[Line]:
    lines = lines[:]
    while (
        lines
        and lines[-1].mnemonic == "nop"
        and (len(lines) == 1 or lines[-2].mnemonic not in arch.delay_slot_instructions)
    ):
        lines.pop()
    return lines


def do_diff(lines1: List[Line], lines2: List[Line], config: Config) -> Diff:
    if config.show_source:
        import cxxfilt
    arch = config.arch
    fmt = config.formatter
    output: List[OutputLine] = []
    symbol_map: Dict[str, str] = {}

    sc1 = symbol_formatter("base-reg", 0)
    sc2 = symbol_formatter("my-reg", 0)
    sc3 = symbol_formatter("base-stack", 4)
    sc4 = symbol_formatter("my-stack", 4)
    sc5 = symbol_formatter("base-branch", 0)
    sc6 = symbol_formatter("my-branch", 0)
    bts1: Set[int] = set()
    bts2: Set[int] = set()

    if config.show_branches:
        for lines, btset, sc in [
            (lines1, bts1, sc5),
            (lines2, bts2, sc6),
        ]:
            for line in lines:
                bt = line.branch_target
                if bt is not None:
                    btset.add(bt)
                    sc(str(bt))

    lines1 = trim_nops(lines1, arch)
    lines2 = trim_nops(lines2, arch)

    diffed_lines = diff_lines(lines1, lines2, config.algorithm)

    line_num_base = -1
    line_num_offset = 0
    line_num_2to1 = {}
    for line1, line2 in diffed_lines:
        if line1 is not None and line1.line_num is not None:
            line_num_base = line1.line_num
            line_num_offset = 0
        else:
            line_num_offset += 1
        if line2 is not None and line2.line_num is not None:
            line_num_2to1[line2.line_num] = (line_num_base, line_num_offset)

    for line1, line2 in diffed_lines:
        line_color1 = line_color2 = sym_color = BasicFormat.NONE
        line_prefix = " "
        is_data_ref = False
        out1 = Text() if not line1 else Text(pad_mnemonic(line1.original))
        out2 = Text() if not line2 else Text(pad_mnemonic(line2.original))
        if line1 and line2 and line1.diff_row == line2.diff_row:
            if line1.diff_row == "<data-ref>":
                if line1.normalized_original != line2.normalized_original:
                    line_prefix = "i"
                    sym_color = BasicFormat.DIFF_CHANGE
                    out1 = out1.reformat(sym_color)
                    out2 = out2.reformat(sym_color)
                is_data_ref = True
            elif (
                line1.normalized_original == line2.normalized_original
                and line2.branch_target is None
            ):
                # Fast path: no coloring needed. We don't include branch instructions
                # in this case because we need to check that their targets line up in
                # the diff, and don't just happen to have the are the same address
                # by accident.
                pass
            else:
                mnemonic = line1.original.split()[0]
                branchless1, address1 = out1.plain(), ""
                branchless2, address2 = out2.plain(), ""
                if mnemonic in arch.instructions_with_address_immediates:
                    branchless1, address1 = split_off_address(branchless1)
                    branchless2, address2 = split_off_address(branchless2)

                out1 = Text(branchless1)
                out2 = Text(branchless2)
                out1, out2 = format_fields(
                    arch.re_imm, out1, out2, lambda _: BasicFormat.IMMEDIATE
                )

                if line2.branch_target is not None:
                    target = line2.branch_target
                    line2_target = line_num_2to1.get(line2.branch_target)
                    if line2_target is None:
                        # If the target is outside the disassembly, extrapolate.
                        # This only matters near the bottom.
                        assert line2.line_num is not None
                        line2_line = line_num_2to1[line2.line_num]
                        line2_target = (line2_line[0] + (target - line2.line_num), 0)

                    # Adjust the branch target for scoring and three-way diffing.
                    norm2, norm_branch2 = split_off_address(line2.normalized_original)
                    if norm_branch2 != "<ignore>":
                        retargetted = hex(line2_target[0]).replace("0x", "")
                        if line2_target[1] != 0:
                            retargetted += f"+{line2_target[1]}"
                        line2.normalized_original = norm2 + retargetted
                        sc_base, _ = split_off_address(line2.scorable_line)
                        line2.scorable_line = sc_base + retargetted
                    same_target = line2_target == (line1.branch_target, 0)
                else:
                    # Do a naive comparison for non-branches (e.g. function calls).
                    same_target = address1 == address2

                if normalize_imms(branchless1, arch) == normalize_imms(
                    branchless2, arch
                ):
                    (
                        stack_penalties,
                        regalloc_penalties,
                        has_symbol_mismatch,
                    ) = diff_sameline(line1, line2, config, symbol_map)

                    if (
                        regalloc_penalties == 0
                        and stack_penalties == 0
                        and not has_symbol_mismatch
                    ):
                        # ignore differences due to %lo(.rodata + ...) vs symbol
                        out1 = out1.reformat(BasicFormat.NONE)
                        out2 = out2.reformat(BasicFormat.NONE)
                    elif line2.branch_target is not None and same_target:
                        # same-target branch, don't color
                        pass
                    else:
                        # must have an imm difference (or else we would have hit the
                        # fast path)
                        sym_color = BasicFormat.IMMEDIATE
                        line_prefix = "i"
                else:
                    out1, out2 = format_fields(arch.re_sprel, out1, out2, sc3, sc4)
                    if normalize_stack(branchless1, arch) == normalize_stack(
                        branchless2, arch
                    ):
                        # only stack differences (luckily stack and imm
                        # differences can't be combined in MIPS, so we
                        # don't have to think about that case)
                        sym_color = BasicFormat.STACK
                        line_prefix = "s"
                    else:
                        # reg differences and maybe imm as well
                        out1, out2 = format_fields(arch.re_reg, out1, out2, sc1, sc2)
                        cats = config.reg_categories
                        if cats and any(
                            cats.get(of.group()) != cats.get(nf.group())
                            for (of, nf) in zip(
                                out1.finditer(arch.re_reg), out2.finditer(arch.re_reg)
                            )
                        ):
                            sym_color = BasicFormat.REGISTER_CATEGORY
                            line_prefix = "R"
                        else:
                            sym_color = BasicFormat.REGISTER
                            line_prefix = "r"
                        line_color1 = line_color2 = sym_color

                if same_target:
                    address_imm_fmt = BasicFormat.NONE
                else:
                    address_imm_fmt = BasicFormat.IMMEDIATE
                out1 += Text(address1, address_imm_fmt)
                out2 += Text(address2, address_imm_fmt)
        elif line1 and line2:
            line_prefix = "|"
            line_color1 = line_color2 = sym_color = BasicFormat.DIFF_CHANGE
            out1 = out1.reformat(line_color1)
            out2 = out2.reformat(line_color2)
        elif line1:
            line_prefix = "<"
            line_color1 = sym_color = BasicFormat.DIFF_REMOVE
            out1 = out1.reformat(line_color1)
            out2 = Text()
        elif line2:
            line_prefix = ">"
            line_color2 = sym_color = BasicFormat.DIFF_ADD
            out1 = Text()
            out2 = out2.reformat(line_color2)

        if config.show_source and line2 and line2.comment:
            out2 += f" {line2.comment}"

        def format_part(
            out: Text,
            line: Optional[Line],
            line_color: Format,
            btset: Set[int],
            sc: FormatFunction,
        ) -> Optional[Text]:
            if line is None:
                return None
            if line.line_num is None:
                return out
            in_arrow = Text("  ")
            out_arrow = Text()
            if config.show_branches:
                if line.line_num in btset:
                    in_arrow = Text("~>", sc(str(line.line_num)))
                if line.branch_target is not None:
                    out_arrow = " " + Text("~>", sc(str(line.branch_target)))
            formatted_line_num = Text(hex(line.line_num)[2:] + ":", line_color)
            return formatted_line_num + " " + in_arrow + " " + out + out_arrow

        part1 = format_part(out1, line1, line_color1, bts1, sc5)
        part2 = format_part(out2, line2, line_color2, bts2, sc6)

        if config.show_source and line2:
            for source_line in line2.source_lines:
                line_format = BasicFormat.SOURCE_OTHER
                if config.source_old_binutils:
                    if source_line and re.fullmatch(r".*\.c(?:pp)?:\d+", source_line):
                        line_format = BasicFormat.SOURCE_FILENAME
                    elif source_line and source_line.endswith("():"):
                        line_format = BasicFormat.SOURCE_FUNCTION
                        try:
                            source_line = cxxfilt.demangle(
                                source_line[:-3], external_only=False
                            )
                        except:
                            pass
                else:
                    # File names and function names
                    if source_line and source_line[0] != "│":
                        line_format = BasicFormat.SOURCE_FILENAME
                        # Function names
                        if source_line.endswith("():"):
                            line_format = BasicFormat.SOURCE_FUNCTION
                            try:
                                source_line = cxxfilt.demangle(
                                    source_line[:-3], external_only=False
                                )
                            except:
                                pass
                padding = " " * 7 if config.show_line_numbers else " " * 2
                output.append(
                    OutputLine(
                        base=None,
                        fmt2=padding + Text(source_line, line_format),
                        key2=source_line,
                        boring=True,
                        is_data_ref=False,
                        line1=None,
                        line2=None,
                    )
                )

        key2 = line2.normalized_original if line2 else None
        boring = False
        if line_prefix == " ":
            boring = True
        elif config.compress and config.compress.same_instr and line_prefix in "irs":
            boring = True

        if config.show_line_numbers:
            if line2 and line2.source_line_num is not None:
                num_color = (
                    BasicFormat.SOURCE_LINE_NUM
                    if sym_color == BasicFormat.NONE
                    else sym_color
                )
                num2 = Text(f"{line2.source_line_num:5}", num_color)
            else:
                num2 = Text(" " * 5)
        else:
            num2 = Text()

        fmt2 = Text(line_prefix, sym_color) + num2 + " " + (part2 or Text())

        output.append(
            OutputLine(
                base=part1,
                fmt2=fmt2,
                key2=key2,
                boring=boring,
                is_data_ref=is_data_ref,
                line1=line1,
                line2=line2,
            )
        )

    output = output[config.skip_lines :]

    score = score_diff_lines(diffed_lines, config, symbol_map)
    max_score = len(lines1) * config.penalty_deletion
    return Diff(lines=output, score=score, max_score=max_score)


def chunk_diff_lines(
    diff: List[OutputLine],
) -> List[Union[List[OutputLine], OutputLine]]:
    """Chunk a diff into an alternating list like A B A B ... A, where:
    * A is a List[OutputLine] of insertions,
    * B is a single non-insertion OutputLine, with .base != None."""
    cur_right: List[OutputLine] = []
    chunks: List[Union[List[OutputLine], OutputLine]] = []
    for output_line in diff:
        if output_line.base is not None:
            chunks.append(cur_right)
            chunks.append(output_line)
            cur_right = []
        else:
            cur_right.append(output_line)
    chunks.append(cur_right)
    return chunks


def compress_matching(
    li: List[Tuple[OutputLine, ...]], context: int
) -> List[Tuple[OutputLine, ...]]:
    ret: List[Tuple[OutputLine, ...]] = []
    matching_streak: List[Tuple[OutputLine, ...]] = []
    context = max(context, 0)

    def flush_matching() -> None:
        if len(matching_streak) <= 2 * context + 1:
            ret.extend(matching_streak)
        else:
            ret.extend(matching_streak[:context])
            skipped = len(matching_streak) - 2 * context
            filler = OutputLine(
                base=Text(f"<{skipped} lines>", BasicFormat.SOURCE_OTHER),
                fmt2=Text(),
                key2=None,
                boring=False,
                is_data_ref=False,
                line1=None,
                line2=None,
            )
            columns = len(matching_streak[0])
            ret.append(tuple([filler] * columns))
            if context > 0:
                ret.extend(matching_streak[-context:])
        matching_streak.clear()

    for line in li:
        if line[0].boring:
            matching_streak.append(line)
        else:
            flush_matching()
            ret.append(line)

    flush_matching()
    return ret


def align_diffs(old_diff: Diff, new_diff: Diff, config: Config) -> TableData:
    headers: Tuple[Text, ...]
    diff_lines: List[Tuple[OutputLine, ...]]
    padding = " " * 7 if config.show_line_numbers else " " * 2

    if config.diff_mode in (DiffMode.THREEWAY_PREV, DiffMode.THREEWAY_BASE):
        old_chunks = chunk_diff_lines(old_diff.lines)
        new_chunks = chunk_diff_lines(new_diff.lines)
        diff_lines = []
        empty = OutputLine(Text(), Text(), None, True, False, None, None)
        assert len(old_chunks) == len(new_chunks), "same target"
        for old_chunk, new_chunk in zip(old_chunks, new_chunks):
            if isinstance(old_chunk, list):
                assert isinstance(new_chunk, list)
                if not old_chunk and not new_chunk:
                    # Most of the time lines sync up without insertions/deletions,
                    # and there's no interdiffing to be done.
                    continue
                differ = difflib.SequenceMatcher(
                    a=old_chunk, b=new_chunk, autojunk=False
                )
                for tag, i1, i2, j1, j2 in differ.get_opcodes():
                    if tag in ["equal", "replace"]:
                        for i, j in zip(range(i1, i2), range(j1, j2)):
                            diff_lines.append((empty, new_chunk[j], old_chunk[i]))
                    if tag in ["insert", "replace"]:
                        for j in range(j1 + i2 - i1, j2):
                            diff_lines.append((empty, new_chunk[j], empty))
                    if tag in ["delete", "replace"]:
                        for i in range(i1 + j2 - j1, i2):
                            diff_lines.append((empty, empty, old_chunk[i]))
            else:
                assert isinstance(new_chunk, OutputLine)
                # old_chunk.base and new_chunk.base have the same text since
                # both diffs are based on the same target, but they might
                # differ in color. Use the new version.
                diff_lines.append((new_chunk, new_chunk, old_chunk))
        diff_lines = [
            (base, new, old if old != new else empty) for base, new, old in diff_lines
        ]
        headers = (
            Text("TARGET"),
            Text(f"{padding}CURRENT ({new_diff.score})"),
            Text(f"{padding}PREVIOUS ({old_diff.score})"),
        )
        current_score = new_diff.score
        max_score = new_diff.max_score
        previous_score = old_diff.score
    elif config.diff_mode in (DiffMode.SINGLE, DiffMode.SINGLE_BASE):
        header = Text("BASE" if config.diff_mode == DiffMode.SINGLE_BASE else "CURRENT")
        diff_lines = [(line,) for line in new_diff.lines]
        headers = (header,)
        # Scoring is disabled for view mode
        current_score = 0
        max_score = 0
        previous_score = None
    else:
        diff_lines = [(line, line) for line in new_diff.lines]
        headers = (
            Text("TARGET"),
            Text(f"{padding}CURRENT ({new_diff.score})"),
        )
        current_score = new_diff.score
        max_score = new_diff.max_score
        previous_score = None
    if config.compress:
        diff_lines = compress_matching(diff_lines, config.compress.context)

    def diff_line_to_table_line(line: Tuple[OutputLine, ...]) -> TableLine:
        cells = [
            (line[0].base or Text(), line[0].line1),
        ]
        for ol in line[1:]:
            cells.append((ol.fmt2, ol.line2))

        return TableLine(
            key=line[0].key2,
            is_data_ref=line[0].is_data_ref,
            cells=tuple(cells),
        )

    return TableData(
        headers=headers,
        current_score=current_score,
        max_score=max_score,
        previous_score=previous_score,
        lines=[diff_line_to_table_line(line) for line in diff_lines],
    )


def debounced_fs_watch(
    targets: List[str],
    outq: "queue.Queue[Optional[float]]",
    config: Config,
    project: ProjectSettings,
) -> None:
    import watchdog.events
    import watchdog.observers

    class WatchEventHandler(watchdog.events.FileSystemEventHandler):
        def __init__(
            self, queue: "queue.Queue[float]", file_targets: List[str]
        ) -> None:
            self.queue = queue
            self.file_targets = file_targets

        def on_modified(self, ev: object) -> None:
            if isinstance(ev, watchdog.events.FileModifiedEvent):
                self.changed(ev.src_path)

        def on_moved(self, ev: object) -> None:
            if isinstance(ev, watchdog.events.FileMovedEvent):
                self.changed(ev.dest_path)

        def should_notify(self, path: str) -> bool:
            for target in self.file_targets:
                if os.path.normpath(path) == target:
                    return True
            if config.make and any(
                path.endswith(suffix) for suffix in project.source_extensions
            ):
                return True
            return False

        def changed(self, path: str) -> None:
            if self.should_notify(path):
                self.queue.put(time.time())

    def debounce_thread() -> NoReturn:
        listenq: "queue.Queue[float]" = queue.Queue()
        file_targets: List[str] = []
        event_handler = WatchEventHandler(listenq, file_targets)
        observer = watchdog.observers.Observer()
        observed = set()
        for target in targets:
            if os.path.isdir(target):
                observer.schedule(event_handler, target, recursive=True)  # type: ignore
            else:
                file_targets.append(os.path.normpath(target))
                target = os.path.dirname(target) or "."
                if target not in observed:
                    observed.add(target)
                    observer.schedule(event_handler, target)  # type: ignore
        observer.start()  # type: ignore
        while True:
            t = listenq.get()
            more = True
            while more:
                delay = t + DEBOUNCE_DELAY - time.time()
                if delay > 0:
                    time.sleep(delay)
                # consume entire queue
                more = False
                try:
                    while True:
                        t = listenq.get(block=False)
                        more = True
                except queue.Empty:
                    pass
            outq.put(t)

    th = threading.Thread(target=debounce_thread, daemon=True)
    th.start()


class Display:
    basedump: str
    mydump: str
    last_refresh_key: object
    config: Config
    emsg: Optional[str]
    last_diff_output: Optional[Diff]
    pending_update: Optional[str]
    ready_queue: "queue.Queue[None]"
    watch_queue: "queue.Queue[Optional[float]]"
    less_proc: "Optional[subprocess.Popen[bytes]]"

    def __init__(self, basedump: str, mydump: str, config: Config) -> None:
        self.config = config
        self.base_lines = process(basedump, config)
        self.mydump = mydump
        self.emsg = None
        self.last_refresh_key = None
        self.last_diff_output = None

    def run_diff(self) -> Tuple[str, object]:
        if self.emsg is not None:
            return (self.emsg, self.emsg)

        my_lines = process(self.mydump, self.config)

        if self.config.diff_mode == DiffMode.SINGLE_BASE:
            diff_output = do_diff(self.base_lines, self.base_lines, self.config)
        elif self.config.diff_mode == DiffMode.SINGLE:
            diff_output = do_diff(my_lines, my_lines, self.config)
        else:
            diff_output = do_diff(self.base_lines, my_lines, self.config)

        last_diff_output = self.last_diff_output or diff_output
        if self.config.diff_mode != DiffMode.THREEWAY_BASE or not self.last_diff_output:
            self.last_diff_output = diff_output

        data = align_diffs(last_diff_output, diff_output, self.config)
        output = self.config.formatter.table(data)

        refresh_key = (
            [line.key2 for line in diff_output.lines],
            diff_output.score,
        )

        return (output, refresh_key)

    def run_less(
        self, output: str
    ) -> "Tuple[subprocess.Popen[bytes], subprocess.Popen[bytes]]":
        # Pipe the output through 'tail' and only then to less, to ensure the
        # write call doesn't block. ('tail' has to buffer all its input before
        # it starts writing.) This also means we don't have to deal with pipe
        # closure errors.
        buffer_proc = subprocess.Popen(
            BUFFER_CMD, stdin=subprocess.PIPE, stdout=subprocess.PIPE
        )
        less_proc = subprocess.Popen(LESS_CMD, stdin=buffer_proc.stdout)
        assert buffer_proc.stdin
        assert buffer_proc.stdout
        buffer_proc.stdin.write(output.encode())
        buffer_proc.stdin.close()
        buffer_proc.stdout.close()
        return (buffer_proc, less_proc)

    def run_sync(self) -> None:
        output, _ = self.run_diff()
        proca, procb = self.run_less(output)
        procb.wait()
        proca.wait()

    def run_async(self, watch_queue: "queue.Queue[Optional[float]]") -> None:
        self.watch_queue = watch_queue
        self.ready_queue = queue.Queue()
        self.pending_update = None
        output, refresh_key = self.run_diff()
        self.last_refresh_key = refresh_key
        dthread = threading.Thread(target=self.display_thread, args=(output,))
        dthread.start()
        self.ready_queue.get()

    def display_thread(self, initial_output: str) -> None:
        proca, procb = self.run_less(initial_output)
        self.less_proc = procb
        self.ready_queue.put(None)
        while True:
            ret = procb.wait()
            proca.wait()
            self.less_proc = None
            if ret != 0:
                # fix the terminal
                os.system("tput reset")
            if ret != 0 and self.pending_update is not None:
                # killed by program with the intent to refresh
                output = self.pending_update
                self.pending_update = None
                proca, procb = self.run_less(output)
                self.less_proc = procb
                self.ready_queue.put(None)
            else:
                # terminated by user, or killed
                self.watch_queue.put(None)
                self.ready_queue.put(None)
                break

    def progress(self, msg: str) -> None:
        # Write message to top-left corner
        sys.stdout.write("\x1b7\x1b[1;1f{}\x1b8".format(msg + " "))
        sys.stdout.flush()

    def update(self, text: str, error: bool) -> None:
        if not error and not self.emsg and text == self.mydump:
            self.progress("Unchanged. ")
            return
        if not error:
            self.mydump = text
            self.emsg = None
        else:
            self.emsg = text
        output, refresh_key = self.run_diff()
        if refresh_key == self.last_refresh_key:
            self.progress("Unchanged. ")
            return
        self.last_refresh_key = refresh_key
        self.pending_update = output
        if not self.less_proc:
            return
        self.less_proc.kill()
        self.ready_queue.get()

    def terminate(self) -> None:
        if not self.less_proc:
            return
        self.less_proc.kill()
        self.ready_queue.get()


def main() -> None:
    args = parser.parse_args()

    # Apply project-specific configuration.
    settings: Dict[str, Any] = {}
    diff_settings.apply(settings, args)  # type: ignore
    project = create_project_settings(settings)

    try:
        config = create_config(args, project)
    except ValueError as e:
        fail(str(e))

    if config.algorithm == "levenshtein":
        try:
            import Levenshtein
        except ModuleNotFoundError as e:
            fail(MISSING_PREREQUISITES.format(e.name))

    if config.show_source:
        try:
            import cxxfilt
        except ModuleNotFoundError as e:
            fail(MISSING_PREREQUISITES.format(e.name))

    if (
        config.diff_mode in (DiffMode.THREEWAY_BASE, DiffMode.THREEWAY_PREV)
        and not args.watch
    ):
        fail("Threeway diffing requires -w.")

    if args.diff_elf_symbol:
        make_target, basecmd, mycmd = dump_elf(
            args.start, args.end, args.diff_elf_symbol, config, project
        )
    elif config.diff_obj:
        make_target, basecmd, mycmd = dump_objfile(
            args.start, args.end, config, project
        )
    else:
        make_target, basecmd, mycmd = dump_binary(args.start, args.end, config, project)

    map_build_target_fn = getattr(diff_settings, "map_build_target", None)
    if map_build_target_fn:
        make_target = map_build_target_fn(make_target=make_target)

    if args.write_asm is not None:
        mydump = run_objdump(mycmd, config, project)
        with open(args.write_asm, "w") as f:
            f.write(mydump)
        print(f"Wrote assembly to {args.write_asm}.")
        sys.exit(0)

    if args.base_asm is not None:
        with open(args.base_asm) as f:
            basedump = f.read()
    elif config.diff_mode != DiffMode.SINGLE:
        basedump = run_objdump(basecmd, config, project)
    else:
        basedump = ""

    mydump = run_objdump(mycmd, config, project)

    display = Display(basedump, mydump, config)

    if args.no_pager or args.format in ("html", "json"):
        print(display.run_diff()[0])
    elif not args.watch:
        display.run_sync()
    else:
        if not args.make and not args.agree:
            yn = input(
                "Warning: watch-mode (-w) enabled without auto-make (-m) or agree-all (-y). "
                "You will have to run make manually. Ok? (Y/n) "
            )
            if yn.lower() == "n":
                return
        if args.make:
            watch_sources = None
            watch_sources_for_target_fn = getattr(
                diff_settings, "watch_sources_for_target", None
            )
            if watch_sources_for_target_fn:
                watch_sources = watch_sources_for_target_fn(make_target)
            watch_sources = watch_sources or project.source_directories
            if not watch_sources:
                fail("Missing source_directories config, don't know what to watch.")
        else:
            watch_sources = [make_target]
        q: "queue.Queue[Optional[float]]" = queue.Queue()
        debounced_fs_watch(watch_sources, q, config, project)
        display.run_async(q)
        last_build = 0.0
        try:
            while True:
                t = q.get()
                if t is None:
                    break
                if t < last_build:
                    continue
                last_build = time.time()
                if args.make:
                    display.progress("Building...")
                    ret = run_make_capture_output(make_target, project)
                    if ret.returncode != 0:
                        display.update(
                            ret.stderr.decode("utf-8-sig", "replace")
                            or ret.stdout.decode("utf-8-sig", "replace"),
                            error=True,
                        )
                        continue
                mydump = run_objdump(mycmd, config, project)
                display.update(mydump, error=False)
        except KeyboardInterrupt:
            display.terminate()


if __name__ == "__main__":
    main()
