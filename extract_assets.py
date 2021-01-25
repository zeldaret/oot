#!/usr/bin/python3
import os
from shutil import copyfile
from multiprocessing import Pool
from multiprocessing import cpu_count

def Extract(xmlPath, outputPath):
	ExtractFile(xmlPath, outputPath, 1, 0)	

def ExtractScene(xmlPath, outputPath):
	ExtractFile(xmlPath, outputPath, 1, 1)

def ExtractFile(xmlPath, outputPath, genSrcFile, incFilePrefix):
	execStr = "tools/ZAPD/ZAPD.out e -eh -i %s -b baserom/ -o %s -gsf %i -ifp %i -sm tools/ZAPD/SymbolMap_OoTMqDbg.txt" % (xmlPath, outputPath, genSrcFile, incFilePrefix)

	print(execStr)
	os.system(execStr)

def ExtractFunc(fullPath):
	outPath = ("assets/" + fullPath.split("assets/xml/")[1]).split(".xml")[0]

	if (fullPath.startswith("assets/xml/scenes/")):
		ExtractScene(fullPath, outPath)
	else:
		Extract(fullPath, outPath)

def main():
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


    #os.system("make resources")

if __name__ == "__main__":
    main()
