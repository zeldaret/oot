#!/usr/bin/env python3

import argparse
import csv
import git
import os
import re

parser = argparse.ArgumentParser(description="Computes current progress throughout the whole project.")
parser.add_argument("-m", "--matching", dest='matching', action='store_true',
                    help="Output matching progress instead of decompilation progress")
parser.add_argument("-c", "--csv", dest="csv", action="store_true",
                    help="Output results in CSV format")
args = parser.parse_args()

NON_MATCHING_PATTERN = r"#ifdef\s+NON_MATCHING.*?#pragma\s+GLOBAL_ASM\s*\(\s*\"(.*?)\"\s*\).*?#endif"

def GetNonMatchingFunctions(files):
    functions = []

    for file in files:
        with open(file) as f:
            functions += re.findall(NON_MATCHING_PATTERN, f.read(), re.DOTALL)

    return functions

def ReadAllLines(fileName):
    lineList = list()
    with open(fileName) as f:
        lineList = f.readlines()

    return lineList

def GetFiles(path, ext):
    files = []
    
    for r, d, f in os.walk(path):
        for file in f:
            if file.endswith(ext):
                files.append(os.path.join(r, file))

    return files

nonMatchingFunctions = GetNonMatchingFunctions(GetFiles("src", ".c")) if not args.matching else []

def GetNonMatchingSize(path):
    size = 0

    asmFiles = GetFiles(path, ".s")

    for asmFilePath in asmFiles:
        if asmFilePath not in nonMatchingFunctions:
            asmLines = ReadAllLines(asmFilePath)

            for asmLine in asmLines:
                if (asmLine.startswith("/*")):
                    size += 4

    return size


mapFile = ReadAllLines("build/z64.map")
src = 0
code = 0
boot = 0
ovl = 0
asm = 0

for line in mapFile:
    lineSplit =  list(filter(None, line.split(" ")))

    if (len(lineSplit) == 4 and lineSplit[0].startswith(".")):
        section = lineSplit[0]
        size = int(lineSplit[2], 16)
        objFile = lineSplit[3]

        if (section == ".text"):
            if (objFile.startswith("build/src")):
                src += size
            elif (objFile.startswith("build/asm")):
                asm += size

            if (objFile.startswith("build/src/code") or objFile.startswith("build/src/libultra_code")):
                code += size
            elif (objFile.startswith("build/src/boot") or objFile.startswith("build/src/libultra_boot")):
                boot += size
            elif (objFile.startswith("build/src/overlays")):
                ovl += size

nonMatchingASM = GetNonMatchingSize("asm/non_matchings")
nonMatchingASMBoot = GetNonMatchingSize("asm/non_matchings/boot")
nonMatchingASMCode = GetNonMatchingSize("asm/non_matchings/code") + GetNonMatchingSize("asm/non_matchings/libultra_code")
nonMatchingASMOvl = GetNonMatchingSize("asm/non_matchings/overlays")

src -= nonMatchingASM
code -= nonMatchingASMCode
boot -= nonMatchingASMBoot
ovl -= nonMatchingASMOvl
asm += nonMatchingASM

bootSize = 31408 # decompilable code only
codeSize = 1004128 # .text section except rsp bins (1.00mb)
ovlSize = 2812000 # .text sections
handwritten = 5840 # boot only

asm -= handwritten

total = src + asm
srcPct = 100 * src / total
asmPct = 100 * asm / total
codePct = 100 * code / codeSize
bootPct = 100 * boot / bootSize
ovlPct = 100 * ovl / ovlSize
compiled_bytes = total
bytesPerHeartPiece = compiled_bytes / 80

if args.csv:
    version = 1
    git_object = git.Repo().head.object
    timestamp = str(git_object.committed_date)
    git_hash = git_object.hexsha
    csv_list = [str(version), timestamp, git_hash, str(code), str(codeSize), str(boot), str(bootSize), str(ovl), str(ovlSize), str(src), str(asm), str(len(nonMatchingFunctions))]
    print(",".join(csv_list))
else:
    adjective = "decompiled" if not args.matching else "matched"

    print(str(total) + " total bytes of decompilable code\n")
    print(str(src) + " bytes " + adjective + " in src " + str(srcPct) + "%\n")
    print(str(boot) + "/" + str(bootSize) + " bytes " + adjective + " in boot " + str(bootPct) + "%\n")
    print(str(code) + "/" + str(codeSize) + " bytes " + adjective + " in code " + str(codePct) + "%\n")
    print(str(ovl) + "/" + str(ovlSize) + " bytes " + adjective + " in overlays " + str(ovlPct) + "%\n")
    print("------------------------------------\n")

    heartPieces = int(src / bytesPerHeartPiece)
    rupees = int(((src % bytesPerHeartPiece) * 100) / bytesPerHeartPiece)

    if (rupees > 0):
        print("You have " + str(heartPieces) + "/80 heart pieces and " + str(rupees) + " rupee(s).\n")
    else:
        print("You have " + str(heartPieces) + "/80 heart pieces.\n")
