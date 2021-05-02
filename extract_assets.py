#!/usr/bin/env python3

import argparse
from multiprocessing import Pool, cpu_count, Event
import os

# Returns True if outFile doesn't exists
# or if inFile has been modified after the last modification of outFile
def checkTouchedFile(inFile: str, outFile: str) -> bool:
    if not os.path.exists(outFile):
        return True
    return os.path.getmtime(inFile) > os.path.getmtime(outFile)

def Extract(xmlPath, outputPath, outputSourcePath):
    ExtractFile(xmlPath, outputPath, outputSourcePath, 1, 0)

def ExtractScene(xmlPath, outputPath, outputSourcePath):
    ExtractFile(xmlPath, outputPath, outputSourcePath, 1, 1)

def ExtractFile(xmlPath, outputPath, outputSourcePath, genSrcFile, incFilePrefix):
    if globalAbort.is_set():
        # Don't extract if another file wasn't extracted properly.
        return

    execStr = "tools/ZAPD/ZAPD.out e -eh -i %s -b baserom/ -o %s -osf %s -gsf %i -ifp %i -rconf tools/ZAPDConfigs/MqDbg/Config.xml" % (xmlPath, outputPath, outputSourcePath, genSrcFile, incFilePrefix)
    if globalUnaccounted:
        execStr += " -wu"

    print(execStr)
    exitValue = os.system(execStr)
    if exitValue != 0:
        globalAbort.set()
        print("\n")
        print("Error when extracting from file " + xmlPath, file=os.sys.stderr)
        print("Aborting...", file=os.sys.stderr)
        print("\n")

def ExtractFunc(fullPath):
    *pathList, xmlName = fullPath.split(os.sep)
    objectName = os.path.splitext(xmlName)[0]

    outPath = os.path.join("assets", *pathList[2:], objectName)
    outSourcePath = outPath

    isScene = fullPath.startswith("assets/xml/scenes/")
    if isScene:
        objectName += "_scene"

    if not globalForce:
        cFile = os.path.join(outPath, objectName + ".c")
        hFile = os.path.join(outPath, objectName + ".h")
        if not checkTouchedFile(fullPath, cFile) and not checkTouchedFile(fullPath, hFile):
            return

    if isScene:
        ExtractScene(fullPath, outPath, outSourcePath)
    else:
        Extract(fullPath, outPath, outSourcePath)

def initializeWorker(force: bool, abort, unaccounted: bool):
    global globalForce
    global globalAbort
    global globalUnaccounted
    globalForce = force
    globalAbort = abort
    globalUnaccounted = unaccounted

def main():
    parser = argparse.ArgumentParser(description="baserom asset extractor")
    parser.add_argument("-s", "--single", help="asset path relative to assets/, e.g. objects/gameplay_keep")
    parser.add_argument("-f", "--force", help="Force the extraction of every xml instead of checking the touched ones.", action="store_true")
    parser.add_argument("-u", "--unaccounted", help="Enables ZAPD unaccounted detector warning system.", action="store_true")
    args = parser.parse_args()

    abort = Event()

    asset_path = args.single
    if asset_path is not None:
        # Always force if -s is used.
        initializeWorker(True, abort, args.unaccounted)
        fullPath = os.path.join("assets", "xml", asset_path + ".xml")
        ExtractFunc(fullPath)
    else:
        xmlFiles = []
        for currentPath, folders, files in os.walk(os.path.join("assets", "xml")):
            for file in files:
                fullPath = os.path.join(currentPath, file)
                if file.endswith(".xml"):
                    xmlFiles.append(fullPath)

        numCores = cpu_count()
        print("Extracting assets with " + str(numCores) + " CPU cores.")
        with Pool(numCores,  initializer=initializeWorker, initargs=(args.force, abort, args.unaccounted)) as p:
            p.map(ExtractFunc, xmlFiles)

    if abort.is_set():
        exit(1)

if __name__ == "__main__":
    main()
