#!/bin/bash

# SPDX-FileCopyrightText: © 2024 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

# Usage: preprocess [flags] -- [compile command minus input file...] [single input file]
# Flags: -v OOT_VERSION (required)
# Preprocess a C file to:
# * Re-encode from UTF-8 to EUC-JP
#   (the repo uses UTF-8 for text encoding, but the strings in the ROM are encoded in EUC-JP)
# * Replace `#pragma increment_block_number` (see preprocess_pragma)

set -e
set -o pipefail

if [ "${VERBOSE-}" ]
then
    set -x
fi

for i in `seq ${#@}`
do
    if [[ "${!i}" = '--' ]]
    then
        # flags before --
        flags=("${@:1:$(($i - 1))}")
        # compile command, betwen -- and the input source file
        compilecmd="${@:$(($i + 1)):$((${#@} - $i - 1))}"
        # The last argument, the input source file to be compiled
        srcfile="${@: -1}"
        break
    fi
done

if [ "${VERBOSE-}" ]
then
    echo flags="${flags[@]}"
    echo compilecmd="$compilecmd"
    echo srcfile="$srcfile"
fi

while getopts "v:" opt "${flags[@]}"
do
    case $opt in
        v)
            OOT_VERSION=$OPTARG
            ;;
        ?)
            echo "Error: Bad flags"
            exit 1
            ;;
    esac
done

if [[ "${!OPTIND}" != '--' ]]
then
    echo "Error: Positional arguments in flags not allowed"
    exit 1
fi

if [ -z "${OOT_VERSION-}" ]
then
    echo Missing -v
    exit
fi

# Create a temporary directory, and remove it on script exit
# We use a temp dir instead of a temp file because ido_block_numbers.py and fix_bss.py
# need the symbol table .T file from IDO, which is always named like the input file.
# So we use a file named like the original input file, inside a temp dir.
tempdir=`mktemp -d`
tempfile=$tempdir/`basename $srcfile`
trap "rm -rf $tempdir" EXIT

# Preprocess pragmas and re-encode from UTF-8 to EUC-JP
{
    printf '#line 1 "%s"\n' "$srcfile"  # linemarker
    ./tools/preprocess_pragmas $OOT_VERSION "$srcfile" < "$srcfile"
} | iconv -f UTF-8 -t EUC-JP > "$tempfile"

# Also include the source file's directory to have the include path as if we compiled the original source.
# Pass the processed temporary file for compilation.
$compilecmd -I `dirname $srcfile` $tempfile
