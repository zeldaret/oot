#!/usr/bin/env python3
#
#   Patches kaleido bss size in relocations for matching builds.
#

import sys

with open(sys.argv[1], "r+") as reloc_sfile:
    contents = reloc_sfile.read()
    contents = contents.replace(".word _ovl_kaleido_scopeSegmentBssSize\n", ".word 0x10\n")
    reloc_sfile.seek(0)
    reloc_sfile.write(contents)
    reloc_sfile.truncate()
