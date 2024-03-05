#!/bin/bash
set -eu -o pipefail

if [ "${VERBOSE-}" ]
then
echo "$VERSION"
echo "$DISASM_DIR"
echo "$DISASM_BASEROM"
echo "$PYTHON"
echo "$AS_CMD"
echo "$LD"
set -x
fi

DISASM_DATA_DIR="tools/disasm/$VERSION"
DISASM_FLAGS="--custom-suffix _unknown --sequential-label-names --no-use-fpccsr --no-cop0-named-registers"
DISASM_FLAGS="$DISASM_FLAGS --config-dir $DISASM_DATA_DIR --symbol-addrs $DISASM_DATA_DIR/functions.txt --symbol-addrs $DISASM_DATA_DIR/variables.txt"

echo Disassembling...
cmd="$PYTHON tools/disasm/disasm.py $DISASM_FLAGS $DISASM_BASEROM -o $DISASM_DIR --split-functions $DISASM_DIR/functions"
echo "$cmd"
$cmd || (
    echo
    echo Error on disassembling.
    false
)
echo Disassembling done.

echo Assembling text,data,rodata,bss sections together for each file...
for filebase in `find $DISASM_DIR -name '*.s' | sed -E -n 's/\.(text|data|rodata|bss)\.s$//p' | sort | uniq`
do
    printf '%s    \r' "$filebase"
    files=
    for section in text data rodata bss
    do
        file="$filebase.$section.s"
        if [ -e $file ]
        then
            files="$files $file"
        fi
    done
    iconv_cmd="iconv -f UTF-8 -t EUC-JP $files"
    asfile_cmd="$AS_CMD -o $filebase.o --"
    ( $iconv_cmd | $asfile_cmd ) || (
        echo
        echo Error on assembling:
        echo "$filebase"
        echo Command line:
        echo "$iconv_cmd | $asfile_cmd"
        false
    )
done
echo

echo All done!
