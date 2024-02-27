#!/bin/bash

set -e

srcfile="${@: -1}"

tempfile=`mktemp --tmpdir oot_XXXXXXXX.c`

iconv -f UTF-8 -t EUC-JP -o "$tempfile" "$srcfile"

"${@:1:$# - 1}" -I `dirname $srcfile` $tempfile

rm $tempfile
