#!/bin/bash
set -e

# This script can be used when you want to test locally the amount of warnings produced by your changes before doing a PR.

DIR="$(dirname "$(readlink -f "$0")")"
cd "$DIR/../.."

make distclean
make -j4 setup 2> tools/warnings_count/warnings_setup_new.txt
make -j4 all 2> tools/warnings_count/warnings_build_new.txt

python3 tools/warnings_count/compare_warnings.py tools/warnings_count/warnings_setup_current.txt tools/warnings_count/warnings_setup_new.txt
python3 tools/warnings_count/compare_warnings.py tools/warnings_count/warnings_build_current.txt tools/warnings_count/warnings_build_new.txt
