#!/bin/sh

NM=$1
ELF=$2

# dmadata_syms contents look like:
# ffffffff80015850 T _dmadataSegmentTextStart
# 00000000 A _dmadataSegmentTextSize
# 00011a40 A _dmadataSegmentRomStart
# ffffffff8001b920 T _dmadataSegmentRoDataEnd
dmadata_syms=`$NM $ELF --no-sort --radix=x --format=bsd | grep dmadata`

_dmadataSegmentRomStart=`echo "$dmadata_syms" | grep '\b_dmadataSegmentRomStart\b' | cut -d' ' -f1`

echo 0x"$_dmadataSegmentRomStart"
