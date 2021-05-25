#!/bin/bash
set -e

# This script should only be used when we need to modify the accepted amount of warnings.

DIR="$(dirname "$(readlink -f "$0")")"
cd "$DIR/../.."

make distclean
make setup 2> tools/warnings_count/warnings_setup_current.txt
make all 2> tools/warnings_count/warnings_build_current.txt
