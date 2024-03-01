#!/bin/bash
# The repo uses UTF-8 for text encoding, but the strings in the ROM are encoded in EUC-JP.
# This means for matching the source must be re-encoded to EUC-JP before IDO compiles it.
# This is conceptually equivalent to `gcc --finput-charset=UTF-8 --fexec-charset=EUC-JP`,
# except IDO has no equivalent arguments.
# Usage: reencode.sh [compile command minus input file...] [single input file]

set -e

# The last argument, the input source file to be compiled
srcfile="${@: -1}"

# Create a temporary file, and remove it on script exit
tempfile=`mktemp`_oot.c
trap "rm -f $tempfile" EXIT

# Re-encode from UTF-8 to EUC-JP
{
    printf '#line 1 "%s"\n' "$srcfile"  # linemarker
    cat "$srcfile"
} | iconv -f UTF-8 -t EUC-JP > "$tempfile"

# All arguments but the last, forming the compile command
# Also include the source file's directory to have the include path as if we compiled the original source.
# Pass the EUC-JP encoded temporary file for compilation.
"${@:1:$# - 1}" -I `dirname $srcfile` $tempfile
