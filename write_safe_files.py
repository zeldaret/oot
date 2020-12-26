#!/usr/bin/python3

# Complete file list producer v0.7
# Written by ProjectRevoTPP

import os
from glob import glob
import sys

def holecount(file):
    with open(file, 'r', encoding = 'utf-8') as infile:
        contents = infile.readlines()
    asm_count = 0
    for i, line in enumerate(contents):
        if(line.count("GLOBAL_ASM") > 0 and (i + 1 == len(contents) or contents[i+1].count("#endif") == 0)):
            asm_count += 1
    return asm_count

def noncount(file):
    with open(file, 'r', encoding = 'utf-8') as infile:
        contents = infile.readlines()
    noncount = 0
    for i, line in enumerate(contents):
        if(line.count("NON_") > 0):
            noncount += 1
    return noncount

def holecount_all(src):
    for subdir, dirs, files in os.walk(src):
        for filename in files:
            filepath = subdir + os.sep + filename
            if(not filename.endswith('.c')):
                continue
            holes = holecount(filepath)
            nonmatches = noncount(filepath)
            if(holes > 0 and nonmatches > 0):
                print(filename, holes, nonmatches)
    return 1

# get file encoding type
def get_encoding_type(file):
    with open(file, 'rb') as f:
        rawdata = f.read()
    return detect(rawdata)['encoding']

outfile = open(sys.argv[1], "w")
outfile.write("# This file is auto-generated. DO NOT MODIFY!\n\n")
outfile.write("SAFE_C_FILES :=    \\\n")
for directory in os.walk("src"):
  for filename in glob(os.path.join(directory[0], "*.c")):
    infile = open(filename, "r", encoding="ascii", errors="surrogateescape")
    # Open content.
    contents = infile.read()
    # Set the counts.
    nonm_count = contents.count("NON_MATCHING")
    noneq_count = contents.count("NON_EQUIVALENT")
    global_asm_count = contents.count("GLOBAL_ASM")
    # NOTE: As of now there is no distinction between unattempted files and unfinished ones.
    if nonm_count + noneq_count == global_asm_count :
      outfile.write("    build/")
      outfile.write(os.path.splitext(filename)[0])
      outfile.write(".o    \\\n")
    infile.close()
outfile.close()
