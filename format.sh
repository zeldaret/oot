#!/usr/bin/env bash

# Clang-Format version and options (see .clang-format for rules applied)
# Version 11 is used when available for more consistency between contributors
FORMAT_VER="11"
FORMAT_OPTS="-i -style=file"

# Clang-Tidy options (see .clang-tidy for checks enabled)
TIDY_OPTS="-p . --fix --fix-errors"

# Compiler options used with Clang-Tidy
# Normal warnings are disabled with -Wno-everything to focus only on tidying
INCLUDES="-Iinclude -Isrc -Ibuild -I."
DEFINES="-D_LANGUAGE_C -DNON_MATCHING"
COMPILER_OPTS="-fno-builtin -std=gnu90 -m32 -Wno-everything ${INCLUDES} ${DEFINES}"

TIDY_VERSION_REGEX="LLVM version ([0-9]+)"

# https://backreference.org/2010/05/23/sanitizing-files-with-no-trailing-newline/index.html
# "gets the last character of the file pipes it into read, which will exit with
# a nonzero exit code if it encounters EOF before newline (so, if the last
# character of the file isn't a newline). If read exits nonzero, then append a
# newline onto the file using echo (if read exits 0, that satisfies the ||, so
# the echo command isn't run)." (https://stackoverflow.com/a/34865616)
function add_final_newline () {
    for file in "$@"
    do
        tail -c1 $file | read -r _ || echo >> $file
    done
}
export -f add_final_newline

shopt -s globstar

if [ $(command -v clang-format-${FORMAT_VER}) ]
then
    CLANG_FORMAT="clang-format-${FORMAT_VER}"
else
    if [ $(command -v clang-format) ]
    then
        CLANG_FORMAT="clang-format"
    else
        echo "Neither clang-format nor clang-format-${FORMAT_VER} found. Exiting."
        exit 1
    fi
fi

if [ $(command -v clang-tidy) ]
then
    CLANG_TIDY="clang-tidy"
else
    echo "clang-tidy not found. Exiting."
    exit 1
fi

# Try to detect the clang-tidy version and add --fix-notes for version 13+
# This is used to ensure all fixes are applied properly in recent versions
if [[ $(${CLANG_TIDY} --version) =~ $TIDY_VERSION_REGEX ]]; then
    if (( ${BASH_REMATCH[1]} >= 13 )); then
        TIDY_OPTS="${TIDY_OPTS} --fix-notes"
    fi
fi

if (( $# > 0 )); then
    echo "Formatting file(s) $*"
    echo "Running clang-format..."
    ${CLANG_FORMAT} ${FORMAT_OPTS} "$@"
    echo "Running clang-tidy..."
    ${CLANG_TIDY} ${TIDY_OPTS} "$@" -- ${COMPILER_OPTS} &> /dev/null
    echo "Adding missing final new lines..."
    add_final_newline "$@"
    echo "Done formatting file(s) $*"
    exit
fi

echo "Formatting C files. This will take a bit"
echo "Running clang-format..."
${CLANG_FORMAT} ${FORMAT_OPTS} src/**/*.c
echo "Running clang-tidy..."
${CLANG_TIDY} ${TIDY_OPTS} src/**/*.c -- ${COMPILER_OPTS} &> /dev/null
echo "Adding missing final new lines..."
find src/ -type f -name "*.c" -exec bash -c 'add_final_newline "$@"' bash {} +
find assets/xml/ -type f -name "*.xml" -exec bash -c 'add_final_newline "$@"' bash {} +
echo "Done formatting all files."
