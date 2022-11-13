#!/usr/bin/env python3

import argparse
import json
import os
import signal
import time
import multiprocessing


EXTRACTED_ASSETS_NAMEFILE = ".extracted-assets.json"


def SignalHandler(sig, frame):
    print(f'Signal {sig} received. Aborting...')
    mainAbort.set()
    # Don't exit immediately to update the extracted assets file.

def ExtractFile(xmlPath, outputPath, outputSourcePath):
    if globalAbort.is_set():
        # Don't extract if another file wasn't extracted properly.
        return

    execStr = f"tools/ZAPD/ZAPD.out e -eh -i {xmlPath} -b baserom/ -o {outputPath} -osf {outputSourcePath} -gsf 1 -rconf tools/ZAPDConfigs/MqDbg/Config.xml {ZAPDArgs}"

    if "overlays" in xmlPath:
        execStr += " --static"

    if globalUnaccounted:
        execStr += " -Wunaccounted"

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

def processZAPDArgs(argsZ):
    badZAPDArg = False
    for z in argsZ:
        if z[0] == '-':
            print(f'error: argument "{z}" starts with "-", which is not supported.', file=os.sys.stderr)
            badZAPDArg = True

    if badZAPDArg:
        exit(1)

    ZAPDArgs = " ".join(f"-{z}" for z in argsZ)
    print("Using extra ZAPD arguments: " + ZAPDArgs)
    return ZAPDArgs

def main():
    parser = argparse.ArgumentParser(description="baserom asset extractor")
    parser.add_argument("-s", "--single", help="asset path relative to assets/, e.g. objects/gameplay_keep")
    parser.add_argument("-f", "--force", help="Force the extraction of every xml instead of checking the touched ones, and text (overwriting current files).", action="store_true")
    parser.add_argument("-j", "--jobs", help="Number of cpu cores to extract with.")
    parser.add_argument("-u", "--unaccounted", help="Enables ZAPD unaccounted detector warning system.", action="store_true")
    parser.add_argument("-Z", help="Pass the argument on to ZAPD, e.g. `-ZWunaccounted` to warn about unaccounted blocks in XMLs. Each argument should be passed separately, *without* the leading dash.", metavar="ZAPD_ARG", action="append")
    args = parser.parse_args()

    global ZAPDArgs
    ZAPDArgs = processZAPDArgs(args.Z) if args.Z else ""

    global mainAbort
    mainAbort = multiprocessing.Event()
    manager = multiprocessing.Manager()
    signal.signal(signal.SIGINT, SignalHandler)

    extractedAssetsTracker = manager.dict()
    if os.path.exists(EXTRACTED_ASSETS_NAMEFILE) and not args.force:
        with open(EXTRACTED_ASSETS_NAMEFILE, encoding='utf-8') as f:
            extractedAssetsTracker.update(json.load(f, object_hook=manager.dict))

    asset_path = args.single
    if asset_path is not None:
        fullPath = os.path.join("assets", "xml", asset_path + ".xml")
        if not os.path.exists(fullPath):
            print(f"Error. File {fullPath} does not exist.", file=os.sys.stderr)
            exit(1)

        initializeWorker(mainAbort, args.unaccounted, extractedAssetsTracker, manager)
        # Always extract if -s is used.
        if fullPath in extractedAssetsTracker:
            del extractedAssetsTracker[fullPath]
        ExtractFunc(fullPath)
    else:
        extract_text_path = "assets/text/message_data.h"
        extract_staff_text_path = "assets/text/message_data_staff.h"

        # Only extract text if the header does not already exist, or if --force was passed
        if not args.force:
            if os.path.isfile(extract_text_path):
                extract_text_path = None
            if os.path.isfile(extract_staff_text_path):
                extract_staff_text_path = None

        if extract_text_path is not None or extract_staff_text_path is not None:
            print("Extracting text")
            from tools import msgdis
            msgdis.extract_all_text(extract_text_path, extract_staff_text_path)

        xmlFiles = []
        for currentPath, _, files in os.walk(os.path.join("assets", "xml")):
            for file in files:
                fullPath = os.path.join(currentPath, file)
                if file.endswith(".xml"):
                    xmlFiles.append(fullPath)

        try:
            numCores = int(args.jobs or 0)
            if numCores <= 0:
                numCores = 1
            print("Extracting assets with " + str(numCores) + " CPU core" + ("s" if numCores > 1 else "") + ".")
            with multiprocessing.get_context("fork").Pool(numCores,  initializer=initializeWorker, initargs=(mainAbort, args.unaccounted, extractedAssetsTracker, manager)) as p:
                p.map(ExtractFunc, xmlFiles)
        except (multiprocessing.ProcessError, TypeError):
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
