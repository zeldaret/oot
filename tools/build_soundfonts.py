#!/usr/bin/env python3
import argparse
import os
import struct

import xml.etree.ElementTree as XmlTree

from audio_common import *

#Script variables
debug_mode = False
bank_lookup = {}

def checkMatch(refData, checkData, nameStr):
	#Sees if match. If so, print message saying so. If not, give offset of first mismatched byte
	#Return boolean (so can count)
	if nameStr is None:
		nameStr = "ANON_CHECK"
	if refData is None:
		print("MATCH " + nameStr + ": Please provide reference data for matching")
		return False
	if checkData is None:
		print("MATCH " + nameStr + ": Please provide target data for matching")
		return False
	
	offset = 0
	rlen = len(refData)
	tlen = len(checkData)
	maxlen = min(rlen, tlen)
	#Obviously if lengths don't match, there's not a match, but I still want to check offset
	
	for i in range(maxlen):
		if refData[i] != checkData[i]:
			print("MATCH " + nameStr + ": Mismatch found @ 0x" + f'{offset:08x}')
			return False
		offset += 1

	if rlen != tlen:
		print("MATCH " + nameStr + ": Mismatch found @ 0x" + f'{offset:08x}')
		return False
	
	print("MATCH " + nameStr + ": Target matches reference!")
	return True

def compileFont(font, output):
	#TODO
	return False

def getBankbinName(idx):
	return "audiotable_" + str(idx)
	
def printBank2csv(path, bank):
	csvstream = open(path, 'w')
	csvstream.write('#Index,Name,Codec,Medium,u2,OffsetInBank,Length,FrameCount,Tuning\n')
	
	samplelist = bank.orderSamples()
	for sample in samplelist:
		csvstream.write(str(sample.idx) + ',')
		csvstream.write(sample.name + ',')
		csvstream.write(toCodecName(sample.codec) + ',')
		csvstream.write(toMedium(sample.medium) + ',')
		csvstream.write(str(sample.u2) + ',')
		csvstream.write('0x' + f'{sample.offsetInBank:08x}' + ',')
		csvstream.write('0x' + f'{sample.length:08x}' + ',')
		csvstream.write(str(sample.frameCount) + ',')
		csvstream.write(str(sample.tuning) + '\n')
	
	csvstream.close()

def processBanks(sampledir, builddir):
	xmltree = XmlTree.parse(os.path.join(sampledir, "Banks.xml"))
	xmlroot = xmltree.getroot()
	
	if builddir is not None:
		if not os.path.isdir(builddir):
			os.makedirs(builddir)
	
	if xmlroot.tag == "SampleBanks":
		e_banks = xmlroot
	else:
		e_banks = xmlroot.find("SampleBanks")
	if e_banks is None:
		print("Banks.xml does not appear to be valid")
		return
	elist_bank = e_banks.findall("SampleBank")

	i = 0
	audiotable_paths = []
	for e_bank in elist_bank:
		bankname = e_bank.get("Name")
		if bankname is None:
			bankname = str(i) + "REF"
			bank_lookup[bankname] = bank_lookup[e_bank.get("Reference")]
			print("Bank reference discovered:",bankname)
		else:
			print("Bank discovered:",bankname)
			mybank = Soundbank()
			mybank.name = bankname
			mybank.fromXML(e_bank)
			bank_lookup[bankname] = mybank

			mybank.idx = i
			bankdir = os.path.join(sampledir, bankname)
			#print("Bank Directory:",bankdir)

			current_books = []
			current_loops = []
			
			for file in os.listdir(bankdir):
				if file.endswith(".aifc"):
					samplename = file[:-5]
					mysample = SampleHeader()
					mybank.samplesByName[samplename] = mysample
					mysample.name = samplename
					#print("Sample found:",mysample.name)

					#load from aifc
					mysample.loadInfoFromAIF(os.path.join(bankdir,file))
					#mysample.updateSize()
					
					#If book or loop is identical to previous in bank, merge.
					#This is annoying because it rarely happens, and is slow to check, but it DOES happen
					blmerge = False
					if mysample.book is not None:
						for book in current_books:
							if book.booksEqual(mysample.book):
								blmerge = True
								mysample.book = book
								break
							if not blmerge:
								current_books.append(mysample.book)
						
					blmerge = False
					if mysample.loop is not None:
						for loop in current_loops:
							if loop.loopsEqual(mysample.loop):
								blmerge = True
								mysample.loop = loop
								break
							if not blmerge:
								current_loops.append(mysample.loop)
					
			#Now, assign offsets/ calculate sizes for samples
			sorted_samples = mybank.orderSamples()
			print("Bank", mybank.idx, ":", len(sorted_samples), "samples found")
			
			if len(sorted_samples) > 0:
				output = None
				if builddir is not None:
					binpath = os.path.join(builddir, getBankbinName(mybank.idx))
					output = open(binpath, "wb")
					audiotable_paths.append(binpath)
				
				j = 0
				offset = 0
				for sample in sorted_samples:
					sample.idx = j
					j += 1
					sample.offsetInBank = offset
					#Need to add padding as well...
					offset += sample.length
					padding = padding16(offset)
					offset += padding
						
					if output is not None:
						print("Writing sample:",sample.name)
						aifc_path = os.path.join(bankdir, sample.name + ".aifc")
						output.write(loadSoundData(aifc_path)[8:8+sample.length])
						if padding > 0:
							output.write(struct.pack(str(padding) + "x"))
						
				if output is not None:
					output.close()				
			else:
				#If no aifc files were found, look for raw bin
				for file in os.listdir(bankdir):
					if file.endswith(".bin"):
						audiotable_paths.append(os.path.join(bankdir,file))
						break
				
		i+=1
	
	#Build audiotable (if requested)
	if builddir is not None:
		binpath = os.path.join(builddir, "audiotable")
		output = open(binpath, "wb")
		for bankpath in audiotable_paths:
			input = open(bankpath, "rb")
			output.write(input.read())
			input.close()
		output.close()
		
		#Code table
		output = open(os.path.join(builddir, "audiotable_tbl"), "wb")
		bnk_ordered = sorted(bank_lookup.items())
		output.write(struct.pack(">H14x", len(bnk_ordered)))
		i = 0
		offset = 0
		for bnk_pair in bnk_ordered:
			mybank = bnk_pair[1]
			if mybank.idx == i:
				if debug_mode:
					#Print csv stating what samples are in bank.
					printBank2csv(os.path.join(builddir, getBankbinName(mybank.idx) + "_contents.csv"), mybank)
				banklen = mybank.calculateSize()
				output.write(struct.pack(">LL", offset, banklen))
				offset += banklen
			else:
				output.write(struct.pack("8x"))
			output.write(struct.pack(">BB6x", mybank.medium, mybank.cachePolicy))
		output.close()
		
def main():
	#TODO
	if args.debug is not None:
		if args.debug:
			debug_mode = True
	
	outpath = args.outpath
	inpath = args.inpath
	sampledir = args.sampledir
	
	if debug_mode:
		print("DEBUG MODE:")
		print("Input Directory:",inpath)
		print("Output Directory:",outpath)
		print("Sample Directory:",sampledir)
		
	#Check for directories' existance
	if args.single:
		if not os.path.isfile(inpath):
			print("ERROR: Input file \""+inpath+"\" does not exist!")
			return 1		
	else:
		if not os.path.isdir(inpath):
			print("ERROR: Input path \""+inpath+"\" is not a valid directory!")
			return 1
	
	if not os.path.isdir(sampledir):
		print("ERROR: Sample path \""+sampledir+"\" is not a valid directory!")
		return 1	
	
	if not os.path.isdir(outpath):
		os.makedirs(outpath)	
	
	#Process banks and build sample info blocks
	bankbuilddir = None
	if args.buildbank:
		bankbuilddir = os.path.join(outpath, 'audiotable')
	processBanks(sampledir, bankbuilddir)
	
	#Check bank matches (if requested)
	if debug_mode and args.buildbank:
		#Find reference files.
		mydir = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
		bankdat_path = os.path.join(mydir, 'bank.bin')
		banktbl_path = os.path.join(mydir, 'bankdef.bin')
		print("Extracted audiotable ref:",bankdat_path)
		print("Extracted bank table ref:",banktbl_path)		
		banktbl = loadBankDefTable(banktbl_path)
	
		#Iterate
		banklist = sorted(bank_lookup.items())
		matchcount = 0
		bankcount = 0
		for item in banklist:
			bank = item[1]
			tblrec = banktbl[bank.idx]
			if tblrec.length < 1:
				continue
			bankcount += 1
			binoutpath = os.path.join(bankbuilddir, getBankbinName(bank.idx))
			if os.path.isfile(binoutpath):
				with open(bankdat_path, 'rb') as f:
					f.seek(tblrec.offset)
					refdat = f.read(tblrec.length)
				with open(binoutpath, 'rb') as f:
					checkdat = f.read()
				if checkMatch(refdat, checkdat, 'Bank ' + str(bank.idx)):
					matchcount += 1
				
		print(str(matchcount), 'of', str(bankcount), 'banks matched.')
			
		#Check audiotable itself
		binoutpath = os.path.join(bankbuilddir, 'audiotable')
		with open(bankdat_path, 'rb') as f:
			refdat = f.read()
		with open(binoutpath, 'rb') as f:
			checkdat = f.read()
		if checkMatch(refdat, checkdat, 'audiotable'):
			print('SUCCESS: audiotable matches!')
		else:
			print('ERROR: audiotable does not match!')
			
		#I have no idea if this works to free memory, but Imma do it anyway
		refdat = None
		checkdat = None
	
	#Read in font(s)
	#compile font(s)
	#match
	
	return 0


#Args
#build_soundfonts.py inpath outpath sampledef --ref [path] --single --sf2 [path]
parser = argparse.ArgumentParser()
parser.add_argument("inpath", help="Input path. If --single, this should be a font xml. If batch, this should be a directory of font xmls.")
parser.add_argument("outpath", help="Output path. This should be the directory where target bins are written.")
parser.add_argument("sampledir", help="Path to file containing sound samples.")
#parser.add_argument("--ref", help="Path to directory(batch)/file(single) containing binary font file to match.")
parser.add_argument("--debug", action="store_true", help="Flag for debug mode (increased verbosity, output matching)")
parser.add_argument("--single", action="store_true", help="Use this flag if only want to build a single font (inputting one xml file)")
parser.add_argument("--buildbank", action="store_true", help="Use this flag to build bank files as well as fonts.")
#parser.add_argument("--sf2", help="If sf2 export is desired, path to directory to write sf2 file(s).")
args = parser.parse_args()

if __name__ == "__main__":
	main()
