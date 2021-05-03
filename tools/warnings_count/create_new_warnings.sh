#!/bin/bash

# This script can be used when you want to test locally the amount of warnings produced by your changes before doing a PR.

make distclean
make -j4 setup 2> tools/warnings_count/warnings_setup_new.txt
make -j4 2> tools/warnings_count/warnings_build_new.txt
