#!/usr/bin/env python3

import argparse
from multiprocessing import Pool, cpu_count, Event, Manager, ProcessError
import os
import json
import time
import signal

EXTRACTED_ASSETS_NAMEFILE = ".extracted-assets.json"

def SignalHandler(sig, frame):
    print(f'Signal {sig} received. Aborting...')
    mainAbort.set()
    # Don't exit immediately to update the extracted assets file.

def ExtractFile(xmlPath, outputPath, outputSourcePath):
    if globalAbort.is_set():
        # Don't extract if another file wasn't extracted properly.
        return

    execStr = "tools/ZAPD/ZAPD.out e -eh -i %s -b baserom/ -o %s -osf %s -gsf 1 -rconf tools/ZAPDConfigs/MqDbg/Config.xml" % (xmlPath, outputPath, outputSourcePath)
    
    if "overlays" in xmlPath:
        execStr += " --static"
    
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

    if fullPath in globalExtractedAssetsTracker:
        timestamp = globalExtractedAssetsTracker[fullPath]["timestamp"]
        modificationTime = int(os.path.getmtime(fullPath))
        if modificationTime < timestamp:
            # XML has not been modified since last extraction.
            return

    currentTimeStamp = int(time.time())

    ExtractFile(fullPath, outPath, outSourcePath)

    if not globalAbort.is_set():
        # Only update timestamp on succesful extractions
        if fullPath not in globalExtractedAssetsTracker:
            globalExtractedAssetsTracker[fullPath] = globalManager.dict()
        globalExtractedAssetsTracker[fullPath]["timestamp"] = currentTimeStamp

def initializeWorker(abort, unaccounted: bool, extractedAssetsTracker: dict, manager):
    global globalAbort
    global globalUnaccounted
    global globalExtractedAssetsTracker
    global globalManager
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
    if os.path.exists(EXTRACTED_ASSETS_NAMEFILE) and not args.force:
        with open(EXTRACTED_ASSETS_NAMEFILE, encoding='utf-8') as f:
            extractedAssetsTracker.update(json.load(f, object_hook=manager.dict))

    asset_path = args.single
    if asset_path is not None:
        fullPath = os.path.join("assets", "xml", asset_path + ".xml")
        if not os.path.exists(fullPath):
            print(f"Error. File {fullPath} doesn't exists.", file=os.sys.stderr)
            exit(1)

        initializeWorker(mainAbort, args.unaccounted, extractedAssetsTracker, manager)
        # Always extract if -s is used.
        if fullPath in extractedAssetsTracker:
            del extractedAssetsTracker[fullPath]
        ExtractFunc(fullPath)
    else:
        xmlFiles = []
        for currentPath, _, files in os.walk(os.path.join("assets", "xml")):
            for file in files:
                fullPath = os.path.join(currentPath, file)
                if file.endswith(".xml"):
                    xmlFiles.append(fullPath)

        try:
            numCores = cpu_count()
            print("Extracting assets with " + str(numCores) + " CPU cores.")
            with Pool(numCores,  initializer=initializeWorker, initargs=(mainAbort, args.unaccounted, extractedAssetsTracker, manager)) as p:
                p.map(ExtractFunc, xmlFiles)
        except (ProcessError, TypeError):
            print("Warning: Multiprocessing exception ocurred.", file=os.sys.stderr)
            print("Disabling mutliprocessing.", file=os.sys.stderr)

            initializeWorker(mainAbort, args.unaccounted, extractedAssetsTracker, manager)
            for singlePath in xmlFiles:
                ExtractFunc(singlePath)

    with open(EXTRACTED_ASSETS_NAMEFILE, 'w', encoding='utf-8') as f:
        serializableDict = dict()
        for xml, data in extractedAssetsTracker.items():
            serializableDict[xml] = dict(data)
        json.dump(dict(serializableDict), f, ensure_ascii=False, indent=4)

    if mainAbort.is_set():
        exit(1)

if __name__ == "__main__":
    main()
