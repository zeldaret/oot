#!/bin/bash

# This script should only be used when we need to modify the accepted amount of warnings.

make distclean
make setup 2> tools/warnings_count/warnings_setup_current.txt
make 2> tools/warnings_count/warnings_build_current.txt
