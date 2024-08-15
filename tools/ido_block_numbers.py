#!/usr/bin/env python3

# SPDX-FileCopyrightText: © 2024 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

# IDO symbol table parser for BSS ordering debugging. The compiler will assign
# "block numbers" or "dense numbers" to symbols in order as it encounters them
# in the source file, and the BSS section is sorted by this block number mod 256.
# This script dumps the compiler-generated symbol table so you can see which
# block numbers are assigned to each symbol.
#
# Resources:
#   https://hackmd.io/@Roman971/BJ2DOyhBa
#   https://github.com/decompals/ultralib/blob/main/tools/mdebug.py
#   https://www.cs.unibo.it/~solmi/teaching/arch_2002-2003/AssemblyLanguageProgDoc.pdf
#   https://github.com/decompals/IDO/blob/main/IDO_7.1/dist/compiler_eoe/usr/include/sym.h
#   https://github.com/Synray/ido-ucode-utils

from __future__ import annotations

import argparse
from dataclasses import dataclass
import itertools
from pathlib import Path
import platform
import struct
import subprocess
import shlex
import sys
from typing import Optional, Tuple


class Header:
    SIZE = 0x60

    def __init__(self, data):
        (
            self.magic,
            self.vstamp,
            self.ilineMax,
            self.cbLine,
            self.cbLineOffset,
            self.idnMax,
            self.cbDnOffset,
            self.ipdMax,
            self.cbPdOffset,
            self.isymMax,
            self.cbSymOffset,
            self.ioptMax,
            self.cbOptOffset,
            self.iauxMax,
            self.cbAuxOffset,
            self.issMax,
            self.cbSsOffset,
            self.issExtMax,
            self.cbSsExtOffset,
            self.ifdMax,
            self.cbFdOffset,
            self.crfd,
            self.cbRfdOffset,
            self.iextMax,
            self.cbExtOffset,
        ) = struct.unpack(">2H23I", data)


class FileDescriptor:
    SIZE = 0x48

    def __init__(self, data):
        (
            self.adr,
            self.rss,
            self.issBase,
            self.cbSs,
            self.isymBase,
            self.csym,
            self.ilineBase,
            self.cline,
            self.ioptBase,
            self.copt,
            self.ipdFirst,
            self.cpd,
            self.iauxBase,
            self.caux,
            self.rfdBase,
            self.crfd,
            self.flags,
            self.cbLineOffset,
            self.cbLine,
        ) = struct.unpack(">10I2H7I", data)


class Symbol:
    SIZE = 0xC

    def __init__(self, data):
        (
            self.iss,
            self.value,
            self.flags,
        ) = struct.unpack(">3I", data)

    def symbol_type(self):
        symbol_types = {
            0: "nil",
            1: "global",
            2: "static",
            3: "param",
            4: "local",
            5: "label",
            6: "proc",
            7: "block",
            8: "end",
            9: "member",
            10: "typedef",
            11: "file",
            14: "staticproc",
            15: "constant",
            26: "struct",
            27: "union",
            28: "enum",
            34: "indirect",
        }
        return symbol_types[self.flags >> 26]

    def symbol_storage_class(self):
        symbol_storage_classes = {
            0: "nil",
            1: "text",
            2: "data",
            3: "bss",
            4: "register",
            5: "abs",
            6: "undefined",
            8: "bits",
            9: "dbx",
            10: "regimage",
            11: "info",
        }
        return symbol_storage_classes[(self.flags >> 21) & 0x1F]


class ExternalSymbol:
    SIZE = 0x10

    def __init__(self, data):
        (
            self.flags,
            self.ifd,
        ) = struct.unpack(">2H", data[0:4])
        self.asym = Symbol(data[4:])


def read_entry(data, base, offset, size):
    start = base + offset * size
    return data[start : start + size]


def read_string(data, start):
    size = 0
    while data[start + size] != 0:
        size += 1
    return data[start : start + size].decode("ascii")


@dataclass
class SymbolTableEntry:
    symbol: Optional[Symbol]
    name: str
    extern: bool


def parse_symbol_table(data: bytes) -> list[SymbolTableEntry]:
    header = Header(data[0 : Header.SIZE])

    # File descriptors
    fds = []
    for i in range(header.ifdMax):
        fds.append(
            FileDescriptor(read_entry(data, header.cbFdOffset, i, FileDescriptor.SIZE))
        )

    # Symbol identifiers ("dense numbers")
    entries = []
    for i in range(header.idnMax):
        ifd, isym = struct.unpack(">II", read_entry(data, header.cbDnOffset, i, 8))

        if isym == 0xFFFFF:
            sym = None
            sym_name = ""
            extern = False
        else:
            extern = ifd == 0x7FFFFFFF
            if extern:
                ext = ExternalSymbol(
                    read_entry(data, header.cbExtOffset, isym, ExternalSymbol.SIZE)
                )
                sym = ext.asym
                sym_name = read_string(data, header.cbSsExtOffset + sym.iss)
            else:
                fd = fds[ifd]
                sym = Symbol(
                    read_entry(
                        data, header.cbSymOffset, fd.isymBase + isym, Symbol.SIZE
                    )
                )
                sym_name = read_string(data, header.cbSsOffset + fd.issBase + sym.iss)

        entries.append(SymbolTableEntry(sym, sym_name, extern))

    return entries


def print_symbol_table(symbol_table: list[SymbolTableEntry]):
    print(f"block [mod 256]: linkage  type        class      name")
    for i, entry in enumerate(symbol_table):
        if not entry.symbol:
            # TODO: is this always a string?
            st = "string"
            sc = ""
        else:
            st = entry.symbol.symbol_type()
            sc = entry.symbol.symbol_storage_class()
        print(
            f'{i:>9} [{i%256:>3}]: {"extern" if entry.extern else "":<7}  {st:<10}  {sc:<9}  {entry.name:<40}'
        )


@dataclass
class UcodeOp:
    opcode: int
    opcode_name: str
    mtype: int
    dtype: int
    lexlev: int
    i1: int
    args: list[int]
    string: Optional[bytes]


@dataclass
class UcodeOpInfo:
    opcode: int
    name: str
    length: int
    has_const: bool


UCODE_OP_INFO = [
    UcodeOpInfo(0x00, "abs", 2, False),
    UcodeOpInfo(0x01, "add", 2, False),
    UcodeOpInfo(0x02, "adj", 4, False),
    UcodeOpInfo(0x03, "aent", 4, False),
    UcodeOpInfo(0x04, "and", 2, False),
    UcodeOpInfo(0x05, "aos", 2, False),
    UcodeOpInfo(0x06, "asym", 4, False),
    UcodeOpInfo(0x07, "bgn", 4, False),
    UcodeOpInfo(0x08, "bgnb", 2, False),
    UcodeOpInfo(0x09, "bsub", 2, False),
    UcodeOpInfo(0x0A, "cg1", 2, False),
    UcodeOpInfo(0x0B, "cg2", 2, False),
    UcodeOpInfo(0x0C, "chkh", 2, False),
    UcodeOpInfo(0x0D, "chkl", 2, False),
    UcodeOpInfo(0x0E, "chkn", 2, False),
    UcodeOpInfo(0x0F, "chkt", 2, False),
    UcodeOpInfo(0x10, "cia", 4, True),
    UcodeOpInfo(0x11, "clab", 4, False),
    UcodeOpInfo(0x12, "clbd", 2, False),
    UcodeOpInfo(0x13, "comm", 4, True),
    UcodeOpInfo(0x14, "csym", 4, False),
    UcodeOpInfo(0x15, "ctrl", 4, False),
    UcodeOpInfo(0x16, "cubd", 2, False),
    UcodeOpInfo(0x17, "cup", 4, False),
    UcodeOpInfo(0x18, "cvt", 4, False),
    UcodeOpInfo(0x19, "cvtl", 2, False),
    UcodeOpInfo(0x1A, "dec", 2, False),
    UcodeOpInfo(0x1B, "def", 4, False),
    UcodeOpInfo(0x1C, "dif", 4, False),
    UcodeOpInfo(0x1D, "div", 2, False),
    UcodeOpInfo(0x1E, "dup", 2, False),
    UcodeOpInfo(0x1F, "end", 2, False),
    UcodeOpInfo(0x20, "endb", 2, False),
    UcodeOpInfo(0x21, "ent", 4, False),
    UcodeOpInfo(0x22, "ueof", 2, False),
    UcodeOpInfo(0x23, "equ", 2, False),
    UcodeOpInfo(0x24, "esym", 4, False),
    UcodeOpInfo(0x25, "fill", 4, False),
    UcodeOpInfo(0x26, "fjp", 2, False),
    UcodeOpInfo(0x27, "fsym", 4, False),
    UcodeOpInfo(0x28, "geq", 2, False),
    UcodeOpInfo(0x29, "grt", 2, False),
    UcodeOpInfo(0x2A, "gsym", 4, False),
    UcodeOpInfo(0x2B, "hsym", 4, False),
    UcodeOpInfo(0x2C, "icuf", 4, False),
    UcodeOpInfo(0x2D, "idx", 2, False),
    UcodeOpInfo(0x2E, "iequ", 4, False),
    UcodeOpInfo(0x2F, "igeq", 4, False),
    UcodeOpInfo(0x30, "igrt", 4, False),
    UcodeOpInfo(0x31, "ijp", 2, False),
    UcodeOpInfo(0x32, "ilda", 6, False),
    UcodeOpInfo(0x33, "ildv", 4, False),
    UcodeOpInfo(0x34, "ileq", 4, False),
    UcodeOpInfo(0x35, "iles", 4, False),
    UcodeOpInfo(0x36, "ilod", 4, False),
    UcodeOpInfo(0x37, "inc", 2, False),
    UcodeOpInfo(0x38, "ineq", 4, False),
    UcodeOpInfo(0x39, "init", 6, True),
    UcodeOpInfo(0x3A, "inn", 4, False),
    UcodeOpInfo(0x3B, "int", 4, False),
    UcodeOpInfo(0x3C, "ior", 2, False),
    UcodeOpInfo(0x3D, "isld", 4, False),
    UcodeOpInfo(0x3E, "isst", 4, False),
    UcodeOpInfo(0x3F, "istr", 4, False),
    UcodeOpInfo(0x40, "istv", 4, False),
    UcodeOpInfo(0x41, "ixa", 2, False),
    UcodeOpInfo(0x42, "lab", 4, False),
    UcodeOpInfo(0x43, "lbd", 2, False),
    UcodeOpInfo(0x44, "lbdy", 2, False),
    UcodeOpInfo(0x45, "lbgn", 2, False),
    UcodeOpInfo(0x46, "lca", 4, True),
    UcodeOpInfo(0x47, "lda", 6, False),
    UcodeOpInfo(0x48, "ldap", 2, False),
    UcodeOpInfo(0x49, "ldc", 4, True),
    UcodeOpInfo(0x4A, "ldef", 4, False),
    UcodeOpInfo(0x4B, "ldsp", 2, False),
    UcodeOpInfo(0x4C, "lend", 2, False),
    UcodeOpInfo(0x4D, "leq", 2, False),
    UcodeOpInfo(0x4E, "les", 2, False),
    UcodeOpInfo(0x4F, "lex", 2, False),
    UcodeOpInfo(0x50, "lnot", 2, False),
    UcodeOpInfo(0x51, "loc", 2, False),
    UcodeOpInfo(0x52, "lod", 4, False),
    UcodeOpInfo(0x53, "lsym", 4, False),
    UcodeOpInfo(0x54, "ltrm", 2, False),
    UcodeOpInfo(0x55, "max", 2, False),
    UcodeOpInfo(0x56, "min", 2, False),
    UcodeOpInfo(0x57, "mod", 2, False),
    UcodeOpInfo(0x58, "mov", 4, False),
    UcodeOpInfo(0x59, "movv", 2, False),
    UcodeOpInfo(0x5A, "mpmv", 4, False),
    UcodeOpInfo(0x5B, "mpy", 2, False),
    UcodeOpInfo(0x5C, "mst", 2, False),
    UcodeOpInfo(0x5D, "mus", 4, False),
    UcodeOpInfo(0x5E, "neg", 2, False),
    UcodeOpInfo(0x5F, "neq", 2, False),
    UcodeOpInfo(0x60, "nop", 2, False),
    UcodeOpInfo(0x61, "not", 2, False),
    UcodeOpInfo(0x62, "odd", 2, False),
    UcodeOpInfo(0x63, "optn", 4, False),
    UcodeOpInfo(0x64, "par", 4, False),
    UcodeOpInfo(0x65, "pdef", 4, False),
    UcodeOpInfo(0x66, "pmov", 4, False),
    UcodeOpInfo(0x67, "pop", 2, False),
    UcodeOpInfo(0x68, "regs", 4, False),
    UcodeOpInfo(0x69, "rem", 2, False),
    UcodeOpInfo(0x6A, "ret", 2, False),
    UcodeOpInfo(0x6B, "rlda", 4, False),
    UcodeOpInfo(0x6C, "rldc", 4, True),
    UcodeOpInfo(0x6D, "rlod", 4, False),
    UcodeOpInfo(0x6E, "rnd", 4, False),
    UcodeOpInfo(0x6F, "rpar", 4, False),
    UcodeOpInfo(0x70, "rstr", 4, False),
    UcodeOpInfo(0x71, "sdef", 4, False),
    UcodeOpInfo(0x72, "sgs", 4, False),
    UcodeOpInfo(0x73, "shl", 2, False),
    UcodeOpInfo(0x74, "shr", 2, False),
    UcodeOpInfo(0x75, "sign", 2, False),
    UcodeOpInfo(0x76, "sqr", 2, False),
    UcodeOpInfo(0x77, "sqrt", 2, False),
    UcodeOpInfo(0x78, "ssym", 4, True),
    UcodeOpInfo(0x79, "step", 2, False),
    UcodeOpInfo(0x7A, "stp", 2, False),
    UcodeOpInfo(0x7B, "str", 4, False),
    UcodeOpInfo(0x7C, "stsp", 2, False),
    UcodeOpInfo(0x7D, "sub", 2, False),
    UcodeOpInfo(0x7E, "swp", 4, False),
    UcodeOpInfo(0x7F, "tjp", 2, False),
    UcodeOpInfo(0x80, "tpeq", 2, False),
    UcodeOpInfo(0x81, "tpge", 2, False),
    UcodeOpInfo(0x82, "tpgt", 2, False),
    UcodeOpInfo(0x83, "tple", 2, False),
    UcodeOpInfo(0x84, "tplt", 2, False),
    UcodeOpInfo(0x85, "tpne", 2, False),
    UcodeOpInfo(0x86, "typ", 4, False),
    UcodeOpInfo(0x87, "ubd", 2, False),
    UcodeOpInfo(0x88, "ujp", 2, False),
    UcodeOpInfo(0x89, "unal", 2, False),
    UcodeOpInfo(0x8A, "uni", 4, False),
    UcodeOpInfo(0x8B, "vreg", 4, False),
    UcodeOpInfo(0x8C, "xjp", 8, False),
    UcodeOpInfo(0x8D, "xor", 2, False),
    UcodeOpInfo(0x8E, "xpar", 2, False),
    UcodeOpInfo(0x8F, "mtag", 2, False),
    UcodeOpInfo(0x90, "alia", 2, False),
    UcodeOpInfo(0x91, "ildi", 4, False),
    UcodeOpInfo(0x92, "isti", 4, False),
    UcodeOpInfo(0x93, "irld", 4, False),
    UcodeOpInfo(0x94, "irst", 4, False),
    UcodeOpInfo(0x95, "ldrc", 4, False),
    UcodeOpInfo(0x96, "msym", 4, False),
    UcodeOpInfo(0x97, "rcuf", 4, False),
    UcodeOpInfo(0x98, "ksym", 4, False),
    UcodeOpInfo(0x99, "osym", 4, False),
    UcodeOpInfo(0x9A, "irlv", 2, False),
    UcodeOpInfo(0x9B, "irsv", 2, False),
]


def parse_ucode(ucode: bytes) -> list[UcodeOp]:
    ops = []
    pos = 0
    while pos < len(ucode):
        opcode = ucode[pos]
        mtype = ucode[pos + 1] >> 5
        dtype = ucode[pos + 1] & 0x1F
        lexlev = int.from_bytes(ucode[pos + 2 : pos + 4], "big")
        i1 = int.from_bytes(ucode[pos + 4 : pos + 8], "big")
        pos += 8

        info = UCODE_OP_INFO[opcode]
        size = 4 * info.length

        args = []
        for _ in range(info.length - 2):
            args.append(int.from_bytes(ucode[pos : pos + 4], "big"))
            pos += 4

        string = None
        if info.has_const:
            string_length = int.from_bytes(ucode[pos : pos + 4], "big")
            pos += 8
            if dtype in (9, 12, 13, 14, 16) or info.name == "comm":
                string = ucode[pos : pos + string_length]
                pos += (string_length + 7) & ~7

        ops.append(UcodeOp(opcode, info.name, mtype, dtype, lexlev, i1, args, string))
    return ops


def print_ucode(ucode: list[UcodeOp]):
    for op in ucode:
        args = " ".join(f"0x{arg:X}" for arg in op.args)
        print(
            f"{op.opcode_name:<4} mtype={op.mtype:X} dtype={op.dtype:X} lexlev={op.lexlev} i1={op.i1} args={args}",
            end="",
        )
        if op.string is not None:
            print(f" string={op.string!r}", end="")
        print()


def generate_make_log(oot_version: str) -> list[str]:
    is_macos = platform.system() == "Darwin"
    make = "gmake" if is_macos else "make"
    make_command_line = [
        make,
        "--always-make",
        "--dry-run",
        f"VERSION={oot_version}",
    ]
    return subprocess.check_output(make_command_line).decode("utf-8").splitlines()


def find_compiler_command_line(
    make_log: list[str], filename: Path
) -> Optional[list[str]]:
    found = 0
    for line in make_log:
        parts = line.split()
        if "-o" in parts and str(filename) in parts:
            compiler_command_line = parts
            found += 1

    if found != 1:
        return None

    return compiler_command_line


def run_cfe(
    command_line: list[str], keep_files: bool
) -> Tuple[list[SymbolTableEntry], list[UcodeOp]]:
    # Assume command line is of the form:
    # python3 tools/preprocess.py [COMPILER] [COMPILER_ARGS] [INPUT_FILE]
    input_file = Path(command_line[-1])
    rest = command_line[:-1]

    stem = input_file.stem
    symbol_table_file = Path(f"{stem}.T")
    ucode_file = Path(f"{stem}.B")

    try:
        # Invoke compiler
        # -Hf stops compilation after cfe so we can inspect the symbol table
        subprocess.run(rest + ["-Hf", input_file], check=True)

        # Read symbol table
        symbol_table = parse_symbol_table(symbol_table_file.read_bytes())
        ucode = parse_ucode(ucode_file.read_bytes())
        return (symbol_table, ucode)
    finally:
        # Cleanup
        if not keep_files:
            symbol_table_file.unlink(missing_ok=True)
            ucode_file.unlink(missing_ok=True)


def main():
    parser = argparse.ArgumentParser(
        description="Dump IDO symbol table for debugging BSS ordering"
    )
    parser.add_argument("filename", metavar="FILE", type=Path, help="C source file")
    parser.add_argument(
        "-v",
        "--oot-version",
        type=str,
        default="gc-eu-mq-dbg",
        help="OOT version (default: gc-eu-mq-dbg)",
    )
    parser.add_argument(
        "--print-ucode", action="store_true", help="Print cfe ucode output"
    )
    parser.add_argument(
        "--keep-files",
        action="store_true",
        help="Keep temporary files (symbol table and ucode)",
    )

    args = parser.parse_args()

    print(f"Running make to find compiler command line ...", file=sys.stderr)
    make_log = generate_make_log(args.oot_version)

    command_line = find_compiler_command_line(make_log, args.filename)
    if command_line is None:
        print(
            f"Error: could not determine compiler command line for {filename}",
            file=sys.stderr,
        )
        sys.exit(1)
    print(f"Compiler command: {shlex.join(command_line)}", file=sys.stderr)

    symbol_table, ucode = run_cfe(command_line, args.keep_files)
    print_symbol_table(symbol_table)
    if args.print_ucode:
        print_ucode(ucode)


if __name__ == "__main__":
    main()
