#!/usr/bin/env python3

import argparse
import json
import os
import signal
import time
import multiprocessing
from pathlib import Path

from tools import version_config


EXTRACTED_ASSETS_FILENAME = ".extracted-assets.json"


def SignalHandler(sig, frame):
    print(f'Signal {sig} received. Aborting...')
    mainAbort.set()
    # Don't exit immediately to update the extracted assets file.

def ExtractFile(assetConfig, outputPath, outputSourcePath):
    xmlPath = assetConfig.xml_path
    version = globalVersionConfig.version
    if globalAbort.is_set():
        # Don't extract if another file wasn't extracted properly.
        return

    zapdPath = Path("tools") / "ZAPD" / "ZAPD.out"
    configPath = Path("tools") / "ZAPDConfigs" / "MqDbg" / "Config.xml"

    Path(outputPath).mkdir(parents=True, exist_ok=True)
    Path(outputSourcePath).mkdir(parents=True, exist_ok=True)

    # TODO: Extract assets from the correct version instead of the Debug ROM
    execStr = f"{zapdPath} e -eh -i {xmlPath} -b extracted/gc-eu-mq-dbg/baserom -o {outputPath} -osf {outputSourcePath} -gsf 1 -rconf {configPath} --cs-float both {ZAPDArgs}"

    if "/code/" in xmlPath:
        assert assetConfig.start_offset is not None
        assert assetConfig.end_offset is not None

        execStr += f" --start-offset 0x{assetConfig.start_offset:X}"
        execStr += f" --end-offset 0x{assetConfig.end_offset:X}"
    elif "/overlays/" in xmlPath:
        assert assetConfig.start_offset is not None
        assert assetConfig.end_offset is not None

        overlayName = os.path.splitext(os.path.basename(xmlPath))[0]
        baseAddress = globalVersionConfig.dmadata_segments[overlayName].vram + assetConfig.start_offset

        execStr += f" --base-address 0x{baseAddress:X}"
        execStr += f" --start-offset 0x{assetConfig.start_offset:X}"
        execStr += f" --end-offset 0x{assetConfig.end_offset:X}"
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

def ExtractFunc(assetConfig):
    fullPath = assetConfig.xml_path
    *pathList, xmlName = fullPath.split(os.sep)
    objectName = os.path.splitext(xmlName)[0]

    version = globalVersionConfig.version
    outPath = os.path.join("extracted", version, "assets", *pathList[2:], objectName)
    outSourcePath = outPath

    if fullPath in globalExtractedAssetsTracker:
        timestamp = globalExtractedAssetsTracker[fullPath]["timestamp"]
        modificationTime = int(os.path.getmtime(fullPath))
        if modificationTime < timestamp:
            # XML has not been modified since last extraction.
            return

    currentTimeStamp = int(time.time())

    ExtractFile(assetConfig, outPath, outSourcePath)

    if not globalAbort.is_set():
        # Only update timestamp on succesful extractions
        if fullPath not in globalExtractedAssetsTracker:
            globalExtractedAssetsTracker[fullPath] = globalManager.dict()
        globalExtractedAssetsTracker[fullPath]["timestamp"] = currentTimeStamp

def initializeWorker(versionConfig, abort, unaccounted: bool, extractedAssetsTracker: dict, manager):
    global globalVersionConfig
    global globalAbort
    global globalUnaccounted
    global globalExtractedAssetsTracker
    global globalManager
    globalVersionConfig = versionConfig
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
    parser.add_argument("-v", "--oot-version", help="OOT game version", default="gc-eu-mq-dbg")
    parser.add_argument("-s", "--single", help="Asset path relative to assets/, e.g. objects/gameplay_keep")
    parser.add_argument("-f", "--force", help="Force the extraction of every xml instead of checking the touched ones (overwriting current files).", action="store_true")
    parser.add_argument("-j", "--jobs", help="Number of cpu cores to extract with.")
    parser.add_argument("-u", "--unaccounted", help="Enables ZAPD unaccounted detector warning system.", action="store_true")
    parser.add_argument("-Z", help="Pass the argument on to ZAPD, e.g. `-ZWunaccounted` to warn about unaccounted blocks in XMLs. Each argument should be passed separately, *without* the leading dash.", metavar="ZAPD_ARG", action="append")
    args = parser.parse_args()

    version = args.oot_version
    versionConfig = version_config.load_version_config(args.oot_version)

    global ZAPDArgs
    ZAPDArgs = processZAPDArgs(args.Z) if args.Z else ""

    global mainAbort
    mainAbort = multiprocessing.Event()
    manager = multiprocessing.Manager()
    signal.signal(signal.SIGINT, SignalHandler)

    extracted_assets_filename = os.path.join("extracted", version, EXTRACTED_ASSETS_FILENAME)
    extractedAssetsTracker = manager.dict()
    if os.path.exists(extracted_assets_filename) and not args.force:
        with open(extracted_assets_filename, encoding='utf-8') as f:
            extractedAssetsTracker.update(json.load(f, object_hook=manager.dict))

    asset_path = args.single
    if asset_path is not None:
        fullPath = os.path.join("assets", "xml", asset_path + ".xml")
        if not os.path.exists(fullPath):
            print(f"Error. File {fullPath} does not exist.", file=os.sys.stderr)
            exit(1)

        assetConfig = None
        for asset in versionConfig.assets:
            if asset.xml_path == fullPath:
                assetConfig = asset
                break
        else:
            print(f"Error. Asset {fullPath} not found in config.", file=os.sys.stderr)
            exit(1)

        initializeWorker(versionConfig, mainAbort, args.unaccounted, extractedAssetsTracker, manager)
        # Always extract if -s is used.
        if fullPath in extractedAssetsTracker:
            del extractedAssetsTracker[fullPath]
        ExtractFunc(assetConfig)
    else:
        class CannotMultiprocessError(Exception):
            pass

        try:
            numCores = int(args.jobs or 0)
            if numCores <= 0:
                numCores = 1
            print("Extracting assets with " + str(numCores) + " CPU core" + ("s" if numCores > 1 else "") + ".")
            try:
                mp_context = multiprocessing.get_context("fork")
            except ValueError as e:
                raise CannotMultiprocessError() from e
            with mp_context.Pool(numCores, initializer=initializeWorker, initargs=(versionConfig, mainAbort, args.unaccounted, extractedAssetsTracker, manager)) as p:
                p.map(ExtractFunc, versionConfig.assets)
        except (multiprocessing.ProcessError, TypeError, CannotMultiprocessError):
            print("Warning: Multiprocessing exception ocurred.", file=os.sys.stderr)
            print("Disabling mutliprocessing.", file=os.sys.stderr)

            initializeWorker(versionConfig, mainAbort, args.unaccounted, extractedAssetsTracker, manager)
            for assetConfig in versionConfig.assets:
                ExtractFunc(assetConfig)

    with open(extracted_assets_filename, 'w', encoding='utf-8') as f:
        serializableDict = dict()
        for xml, data in extractedAssetsTracker.items():
            serializableDict[xml] = dict(data)
        json.dump(dict(serializableDict), f, ensure_ascii=False, indent=4)

    if mainAbort.is_set():
        exit(1)

if __name__ == "__main__":
    main()
