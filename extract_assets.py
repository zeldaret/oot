#!/usr/bin/env python3

import argparse
from multiprocessing import Pool, cpu_count, Event, Manager
import os
import json
import time
import signal

EXTRACTED_ASSETS_NAMEFILE = ".extracted-assets.json"

def SignalHandler(sig, frame):
    print(f'Signal {sig} received. Aborting...')
    mainAbort.set()
    # Don't exit immediately to update the extracted assets file.

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
        if fullPath in globalExtractedAssetsTracker:
            timestamp = globalExtractedAssetsTracker[fullPath]["timestamp"]
            modificationTime = int(os.path.getmtime(fullPath) * (10**9))
            if modificationTime < timestamp:
                # XML has not been modified since last extraction.
                return

    currentTimeStamp = time.time_ns()

    if isScene:
        ExtractScene(fullPath, outPath, outSourcePath)
    else:
        Extract(fullPath, outPath, outSourcePath)

    if not globalAbort.is_set():
        # Only update timestamp on succesful extractions
        if fullPath not in globalExtractedAssetsTracker:
            globalExtractedAssetsTracker[fullPath] = globalManager.dict()
        globalExtractedAssetsTracker[fullPath]["timestamp"] = currentTimeStamp

def initializeWorker(force: bool, abort, unaccounted: bool, extractedAssetsTracker: dict, manager):
    global globalForce
    global globalAbort
    global globalUnaccounted
    global globalExtractedAssetsTracker
    global globalManager
    globalForce = force
    globalAbort = abort
    globalUnaccounted = unaccounted
    globalExtractedAssetsTracker = extractedAssetsTracker
    globalManager = manager

def main():
    parser = argparse.ArgumentParser(description="baserom asset extractor")
    parser.add_argument("-s", "--single", help="asset path relative to assets/, e.g. objects/gameplay_keep")
    parser.add_argument("-f", "--force", help="Force the extraction of every xml instead of checking the touched ones.", action="store_true")
    parser.add_argument("-u", "--unaccounted", help="Enables ZAPD unaccounted detector warning system.", action="store_true")
    args = parser.parse_args()

    global mainAbort
    mainAbort = Event()
    manager = Manager()
    signal.signal(signal.SIGINT, SignalHandler)

    extractedAssetsTracker = manager.dict()
    if os.path.exists(EXTRACTED_ASSETS_NAMEFILE):
        with open(EXTRACTED_ASSETS_NAMEFILE) as f:
            extractedAssetsTracker.update(json.load(f, object_hook=manager.dict))

    asset_path = args.single
    if asset_path is not None:
        # Always force if -s is used.
        initializeWorker(True, mainAbort, args.unaccounted, extractedAssetsTracker, manager)
        fullPath = os.path.join("assets", "xml", asset_path + ".xml")
        ExtractFunc(fullPath)
    else:
        xmlFiles = []
        for currentPath, _, files in os.walk(os.path.join("assets", "xml")):
            for file in files:
                fullPath = os.path.join(currentPath, file)
                if file.endswith(".xml"):
                    xmlFiles.append(fullPath)

        numCores = cpu_count()
        print("Extracting assets with " + str(numCores) + " CPU cores.")
        with Pool(numCores,  initializer=initializeWorker, initargs=(args.force, mainAbort, args.unaccounted, extractedAssetsTracker, manager)) as p:
            p.map(ExtractFunc, xmlFiles)

    with open(EXTRACTED_ASSETS_NAMEFILE, 'w', encoding='utf-8') as f:
        serializableDict = dict()
        for xml, data in extractedAssetsTracker.items():
            serializableDict[xml] = dict(data)
        json.dump(dict(serializableDict), f, ensure_ascii=False, indent=4)

    if mainAbort.is_set():
        exit(1)

if __name__ == "__main__":
    main()
