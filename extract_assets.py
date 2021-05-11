#!/usr/bin/env python3

import argparse
import os
from shutil import copyfile
from multiprocessing import Pool
from multiprocessing import cpu_count

def ExtractFile(xmlPath, outputPath, outputSourcePath):
    execStr = "tools/ZAPD/ZAPD.out e -eh -i %s -b baserom/ -o %s -osf %s -gsf 1 -rconf tools/ZAPDConfigs/MqDbg/Config.xml" % (xmlPath, outputPath, outputSourcePath)

    print(execStr)
    os.system(execStr)

def ExtractFunc(fullPath):
    print(fullPath)
    outPath = ("assets/" + fullPath.split("assets/xml/")[1]).split(".xml")[0]
    outSourcePath = ("assets/" + fullPath.split("assets/xml/")[1]).split(".xml")[0]

    ExtractFile(fullPath, outPath, outSourcePath)

def main():
    parser = argparse.ArgumentParser(description="baserom asset extractor")
    parser.add_argument("-s", "--single", help="asset path relative to assets/, e.g. objects/gameplay_keep")
    args = parser.parse_args()

    asset_path = args.single
    if asset_path is not None:
        if asset_path.endswith("/"):
            asset_path = asset_path[0:-1]
        ExtractFunc(f"assets/xml/{asset_path}.xml")
    else:
        xmlFiles = []
        for currentPath, folders, files in os.walk("assets"):
                for file in files:
                        fullPath = os.path.join(currentPath, file)
                        if file.endswith(".xml") and currentPath.startswith("assets/xml/"):
                                outPath = ("assets/" + fullPath.split("assets/xml/")[1]).split(".xml")[0]
                                xmlFiles.append(fullPath)

        numCores = cpu_count()
        print("Extracting assets with " + str(numCores) + " CPU cores.")
        p = Pool(numCores)
        p.map(ExtractFunc, xmlFiles)

if __name__ == "__main__":
    main()
