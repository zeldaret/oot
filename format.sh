#!/usr/bin/env bash

FORMAT_VER="11"
FORMAT_OPTS="-i -style=file"
TIDY_OPTS="-p . --fix --fix-errors"
COMPILER_OPTS="-fno-builtin -std=gnu90 -Iinclude -Isrc -D_LANGUAGE_C -DNON_MATCHING"

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

if (( $# > 0 )); then
    echo "Formatting file(s) $*"
    echo "Running clang-format..."
    ${CLANG_FORMAT} ${FORMAT_OPTS} "$@"
    echo "Running clang-tidy..."
    clang-tidy ${TIDY_OPTS} "$@" -- ${COMPILER_OPTS} &> /dev/null
    echo "Adding missing final new lines..."
    add_final_newline "$@"
    echo "Done formatting file(s) $*"
    exit
fi

echo "Formatting C files. This will take a bit"
echo "Running clang-format..."
${CLANG_FORMAT} ${FORMAT_OPTS} src/**/*.c
echo "Running clang-tidy..."
clang-tidy ${TIDY_OPTS} src/**/*.c -- ${COMPILER_OPTS} &> /dev/null
echo "Adding missing final new lines..."
find src/ -type f -name "*.c" -exec bash -c 'add_final_newline "$@"' bash {} +
find assets/xml/ -type f -name "*.xml" -exec bash -c 'add_final_newline "$@"' bash {} +
echo "Done formatting all files."
