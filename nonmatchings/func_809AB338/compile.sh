#!/usr/bin/env bash
INPUT="$(readlink -f "$1")"
OUTPUT="$(readlink -f "$3")"
cd /home/fig/repo/oot
/opt/qemu/qemu-irix -L tools/ido7.1_compiler tools/ido7.1_compiler/usr/bin/cc -c -G 0 -non_shared -Xfullwarn -Xcpluscomm -Iinclude -Isrc -Wab,-r4300_mul -woff 649,838 -mips2 -O2 "$INPUT" -o "$OUTPUT"
