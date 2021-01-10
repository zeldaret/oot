#!/usr/bin/python3
import os
import argparse
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

xmlFiles = []

for currentPath, folders, files in os.walk("assets"):
	for file in files:
		fullPath = os.path.join(currentPath, file)
		if file.endswith(".xml") and currentPath.startswith("assets/xml"):
			outPath = ("assets/" + fullPath.split("assets/xml/")[1]).split(".xml")[0]
			xmlFiles.append(fullPath)

parser = argparse.ArgumentParser(description="Extract a single object")
parser.add_argument('name', help="name of the object, not including object_")
# parser.add_argument('-j', metavar = 'cores', dest = 'nc', help = 'number of cores to run on', default = 1)

# argsname = "geldb"

if __name__ == "__main__":

	args = parser.parse_args()

	# numCores = cpu_count()
	# print("Extracting assets with " + str(numCores) + " CPU cores.")
	#p = Pool(numCores)
	#p.map(ExtractFunc, xmlFiles)
	Extract("assets/xml/objects/object_" + args.name + ".xml", "assets/objects/object_" + args.name)
	# Extract("assets/xml/scenes/indoors/" + args.name + ".xml", "assets/scenes/indoors/" + args.name)

	#os.system("make resources")