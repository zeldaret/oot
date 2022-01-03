#!/usr/bin/env python3
import argparse
import os
import struct

import xml.etree.ElementTree as XmlTree

from audio_common import *

#Script variables
debug_mode = False
bank_lookup = {}
font_lookup = {}

class DrumOffsetTable:
	def __init__(self):
		self.off_list = []
		self.addr = -1
		
	def serializeTo(self, output):
		sz = 0
		for off in self.off_list:
			output.write(struct.pack(">L",off))
			sz += 4
		return sz
class DummyBlock:
	def __init__(self, size_in_bytes):
		self.size = size_in_bytes
		self.addr = -1	
		
	def serializeTo(self, output):
		output.write(struct.pack(self.size + "x"))
		return self.size

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

def orderWaveBlocks(font, ser_blocks, base_addr):
	#Extract all used blocks from the font (ugh)
	s_dict = {}
	for inst in font.instruments:
		if inst.keyLowSample:
			if inst.keyLowSample.idx not in s_dict:
				s_dict[inst.keyLowSample.idx] = inst.keyLowSample
		if inst.keyMedSample:
			if inst.keyMedSample.idx not in s_dict:
				s_dict[inst.keyMedSample.idx] = inst.keyMedSample	
		if inst.keyHighSample:
			if inst.keyHighSample.idx not in s_dict:
				s_dict[inst.keyHighSample.idx] = inst.keyHighSample

	for drum in font.percussion:
		if drum.sample:
			if drum.sample.idx not in s_dict:
				s_dict[drum.sample.idx] = drum.sample

	for sfx in font.soundEffects:
		if sfx.sample:
			if sfx.sample.idx not in s_dict:
				s_dict[sfx.sample.idx] = sfx.sample	

	dict_items = sorted(s_dict.items())
	for item in dict_items:
		#Clear Addresses
		sample = item[1]
		sample.addr = -1
		if sample.loop:
			sample.loop.addr = -1
		if sample.book:
			sample.book.addr = -1
			
	#Iterate again, this time using blank addresses to check for addition
	current_addr = base_addr
	for item in dict_items:
		sample = item[1]
		ser_blocks.append(sample)
		sample.addr = current_addr
		current_addr += 16
		
		#Add book if not added
		if sample.book and (sample.book.addr < 0):
			ser_blocks.append(sample.book)
			sample.book.addr = current_addr
			current_addr += sample.book.order * sample.book.predictorCount * 16
			current_addr = align(current_addr)
			
		if sample.loop and (sample.loop.addr < 0):
			ser_blocks.append(sample.loop)
			sample.loop.addr = current_addr
			if sample.loop.count != 0:
				current_addr += 48
			else:
				current_addr += 16
				
	return current_addr

def orderEnvelopeBlocks(font, ser_blocks, base_addr):
	envlist = []
	
	for inst in font.instruments:
		if inst.envelope:
			if not inst.envelope in envlist:
				inst.envelope.addr = -1	
				envlist.append(inst.envelope)
				
	for drum in font.percussion:
		if drum.envelope:
			if not drum.envelope in envlist:
				drum.envelope.addr = -1	
				envlist.append(drum.envelope)
	
	current_addr = base_addr
	for env in envlist:
		ser_blocks.append(env)
		env.addr = current_addr
		current_addr += env.serialSize()
		current_addr = align(current_addr)
	
	return current_addr

def compileFont(font, output):
	#Blocks appear to be in the following order:
	#   Wave Info (In order they appear in bank)
	#      ADPCM Book (If not identical to one in previous wave)
	#      Loop (If not identical to one in previous wave)
	#Envelopes (Seem to be in order they are referenced?)
	#Instruments (NOT in index order. Probably order they were added.)
	#Drums (Usually in index order, but I don't think that's guaranteed)
	#Drum Offset Table
	#SFX Table (By index - 0L if empty slot)
	
	#Starts after head offset table
	ser_blocks = []
	
	#Get used slot counts
	icount = font.instSlotCount()
	pcount = font.percSlotCount()
	xcount = font.sfxSlotCount()
	
	#Calculate head offset table size
	current_pos = 8 + (icount*4)
	current_pos = align(current_pos)
	
	#Wave blocks
	current_pos = orderWaveBlocks(font, ser_blocks, current_pos)
	
	#Envelope blocks
	current_pos = orderEnvelopeBlocks(font, ser_blocks, current_pos)
	
	#Instrument blocks
	for inst in font.instruments:
		ser_blocks.append(inst)
		inst.addr = current_pos
		current_pos += 32
		
	#Drum blocks
	for drum in font.percussion:
		ser_blocks.append(drum)
		drum.addr = current_pos
		current_pos += 16	
	
	#Drum offset table
	drum_offtbl = DrumOffsetTable()
	drum_offtbl.addr = current_pos
	for i in range(pcount):
		if i in font.percIdxLookup:
			drum_offtbl.off_list.append(font.percIdxLookup[i].addr)
		else:
			drum_offtbl.off_list.append(0)
		current_pos += 4
	current_pos = align(current_pos)
	ser_blocks.append(drum_offtbl)
	
	#SFX table
	sfx_tbl_pos = current_pos
	for i in range(xcount):
		if i in font.sfxIdxLookup:
			mysfx = font.sfxIdxLookup[i]
			mysfx.addr = current_pos
			ser_blocks.append(mysfx)
		else:
			dummysfx = DummyBlock(8)
			dummysfx.addr = current_pos
			ser_blocks.append(dummysfx)
		current_pos += 8
	
	#Serialize the head offset table
	output.write(struct.pack(">LL", drum_offtbl.addr, sfx_tbl_pos))
	wpos = 8
	for i in range(icount):
		if i in font.instIdxLookup:
			myinst = font.instIdxLookup[i]
			output.write(struct.pack(">L", myinst.addr))
		else:
			output.write(struct.pack("4x"))
		wpos += 4
	
	#Write everything else
	for block in ser_blocks:
		#Pad if needed
		padding = block.addr - wpos
		if padding > 0:
			output.write(struct.pack(padding + "x"))
			wpos += padding
		#Serialize block
		#I feel like this is interpreter abuse, but I don't care
		wpos += block.serializeTo(output)
		
	#Pad to end, if needed
	padding = align(wpos) - wpos
	if padding > 0:
		output.write(struct.pack(padding + "x"))
		wpos += padding
		
	return wpos
	
def linkFontToBank(font):
	#This links the sound info to the font
	if not font.bankNames:
		return
	
	bname = font.bankNames[0]
	if not bname:
		return
	
	mybank = bank_lookup[bname]
	if not mybank:
		return
	
	font.bank1 = mybank
	for inst in font.instruments:
		if inst.keyLowName:
			inst.keyLowSample = mybank.samplesByName[inst.keyLowName]
		if inst.keyMedName:
			inst.keyMedSample = mybank.samplesByName[inst.keyMedName]	
		if inst.keyHighName:
			inst.keyHighSample = mybank.samplesByName[inst.keyHighName]	
			
	for drum in font.percussion:
		if drum.sampleName:
			drum.sample = mybank.samplesByName[drum.sampleName]
			
	for sfx in font.soundEffects:
		if sfx.sampleName:
			sfx.sample = mybank.samplesByName[sfx.sampleName]		

def getBankbinName(idx):
	return "audiotable_" + str(idx)

def getFontbinName(idx):
	return "audiobank_" + f"{idx:0>3d}"

def readFonts(dirpath):
	for file in os.listdir(dirpath):
		if file.endswith(".xml"):
			readFont(os.path.join(dirpath, file))
			
def readFont(filepath):
	filename = os.path.basename(filepath)
	if debug_mode:
		print("Reading soundfont xml:",filename)
	fontname = filename[:-4]
	myfont = Soundfont()
	
	xmltree = XmlTree.parse(filepath)
	xmlroot = xmltree.getroot()
	if xmlroot.tag == "Soundfont":
		sfnode = xmlroot
	else:
		sfnode = xmlroot.find("Soundfont")	
	
	if sfnode is None:
		print("ERROR - could not find Soundfont definition in:",filename)
		return
	myfont.fromXML(sfnode)
	
	#Resolve font name, and index if part of name
	if fontname[0:1].isnumeric():
		firstspace = fontname.find(' ')
		if firstspace >= 0:
			myfont.idx = int(fontname[:firstspace])
			fontname = fontname[firstspace+1:]
			nextspace = fontname.find(' ')
			if nextspace >= 0:
				fontname = fontname[nextspace+1:]
	font_lookup[fontname] = myfont
	myfont.name = fontname	
	
	#Link samples
	linkFontToBank(myfont)
	
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
	
def splitSampleName(filepath):
	rawname = filepath
	#Chop extension
	if filepath.endswith(".aifc"):
		rawname = filepath[:-5]
	
	#Check for number
	inum = -1
	sname = rawname
	firstchar = rawname[0:1]
	if firstchar.isnumeric():
		#Find the first space
		firstspace = rawname.find(' ')
		if firstspace >= 0:
			istr = rawname[:firstspace]
			sname = rawname[firstspace+1:]
			inum = int(istr)
		
	#Return number, name
	return (inum, sname)

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
			audiotable_paths.append(None)
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
			index_map = {}
			max_idx = -1
			
			for file in os.listdir(bankdir):
				if file.endswith(".aifc"):
					tup = splitSampleName(file)
					si = tup[0]
					samplename = tup[1]
					mysample = SampleHeader()
					mybank.samplesByName[samplename] = mysample
					mysample.name = samplename
					mysample.idx = si
					mysample.fileName = file
					index_map[si] = mysample
					#print("Sample found:",mysample.name)
					
					if si > max_idx:
						max_idx = si

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
					
			#Order samples.
			c = 0
			while c <= max_idx:
				if c in index_map:
					mysample = index_map[c]
					mybank.samples.append(mysample)
				else:
					mybank.samples.append(None)
				c += 1
			
			#Now, assign offsets/ calculate sizes for samples
			sorted_samples = mybank.samples
			print("Bank", mybank.idx, ":", len(sorted_samples), "samples found")
			
			binpath = os.path.join(builddir, getBankbinName(mybank.idx))
			if len(sorted_samples) > 0:
				output = None
				if builddir is not None:
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
						aifc_path = os.path.join(bankdir, sample.fileName)
						output.write(loadSoundData(aifc_path)[8:8+sample.length])
						if padding > 0:
							output.write(struct.pack(str(padding) + "x"))
						
				if output is not None:
					output.close()	
					output = None
					
				if (builddir is not None) and (mybank.idx == 0):
					#There appears to be a buffer clearing bug in the original authoring tool
					#  that only affects the end of bank 0.
					#Must replicate to get a match	
					filesize = os.path.getsize(binpath)
					temppath = binpath + ".tmp"
					os.rename(binpath, temppath)
					with open(temppath, "rb") as input:
						output = open(binpath, "wb")
						bug_trg = filesize - 4
						bug_src = bug_trg - 0x10000
						output.write(input.read(bug_src))
						bug_word = input.read(4)
						output.write(bug_word)	
						output.write(input.read(0xfffc))
						output.write(bug_word)	
						output.close()	
						output = None	
					os.remove(temppath)
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
			if bankpath is None:
				continue
			if debug_mode:
				print("Writing bank:",bankpath)
			filesize = os.path.getsize(bankpath)
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
				if banklen <= 0:
					#Check for bin.
					banklen = os.path.getsize(audiotable_paths[mybank.idx])
				output.write(struct.pack(">LL", offset, banklen))
				offset += banklen
			else:
				output.write(struct.pack("8x"))
			output.write(struct.pack(">BB6x", mybank.medium, mybank.cachePolicy))
			i+=1
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
		checked = []
		for item in banklist:
			bank = item[1]
			if bank.idx in checked:
				print("Bank references already checked bank:", bank.idx)
				continue
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
			else:
				print("Bank", bank.idx,"found as bin. No need to check.")
				matchcount += 1
			checked.append(bank.idx)
				
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
	if args.single:
		readFont(inpath)	
	else:
		readFonts(inpath)
	
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
