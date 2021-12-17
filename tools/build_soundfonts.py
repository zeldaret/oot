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
    if font is None:
        print("How am I supposed to compile nothing, bro?")
        return

    #Order elements and assign addresses.
    #Calculate size of initial offset table...
    offtbl_size = 8 + len(font.instruments * 4)
    #Round up to 16
    szmod = offtbl_size % 16
    if szmod > 0:
        offtbl += 16 - szmod

    #I have no idea if this is gonna work.
    serialize_queue = []

    #Go through wave info blocks
    pos = offtbl_size
    wavoff_map = {}
    for inst in font.instruments:
        if not (inst.midWave.waveOffset in wavoff_map):
            wavoff_map[inst.midWave.waveOffset] = inst.midWave
        if inst.loWave is not None:
            if not (inst.loWave.waveOffset in wavoff_map):
                wavoff_map[inst.loWave.waveOffset] = inst.loWave
        if inst.hiWave is not None:
            if not (inst.hiWave.waveOffset in wavoff_map):
                wavoff_map[inst.hiWave.waveOffset] = inst.hiWave

    for perc in font.percussion:
        if not (perc.wave.waveOffset in wavoff_map):
            wavoff_map[perc.wave.waveOffset] = perc.wave

    for sfx in font.soundeffects:
        if not (sfx.wave.waveOffset in wavoff_map):
            wavoff_map[sfx.wave.waveOffset] = sfx.wave

    wavoff_list = wavoff_map.keys()
    wavoff_list.sort() #Juuuust in case
    for wavoff in wavoff_list:
        waveinfo = wavoff_map[wavoff]
        #Assign address to info block
        waveinfo.address = pos
        serialize_queue.append(waveinfo)
        pos += 16
        #Check if ADPCM book has already been assigned, assign if not
        #(Note that ADPCM books are padded to 16 bytes!)
        if waveinfo.bookBlock is not None:
            if waveinfo.bookBlock.address < 0:
                #Needs to be written
                waveinfo.bookBlock.address = pos
                serialize_queue.append(waveinfo.bookBlock)
                pos += waveinfo.getSerialSize()

        #Check if loop has already been assigned, assign if not
        if waveinfo.loopBlock is not None:
            if waveinfo.loopBlock.address < 0:
                #Needs to be written
                waveinfo.loopBlock.address = pos
                serialize_queue.append(waveinfo.loopBlock)
                pos += 16
                if waveinfo.loopBlock.loopCount != 0:
                    #Also has the last 16 PCM samples
                    pos += 32

    #Go through envelopes
    #I think these are just the order they appear in patches...
    for inst in font.instruments:
        if inst.envelope.address < 0:
            #New one. Needs to be written.
            inst.envelope.address = pos
            serialize_queue.append(inst.envelope)
            pos += inst.envelope.getSerialSize()

    for perc in font.percussion:
        if perc.envelope.address < 0:
            #New one. Needs to be written.
            perc.envelope.address = pos
            serialize_queue.append(perc.envelope)
            pos += perc.envelope.getSerialSize()

    #Do instruments
    for inst in font.instruments:
        #Instruments can be mapped to multiple indices.
        #So, we'll still do an address check.
        if inst.address < 0:
            inst.address = pos
            pos += 32

    #Do percussion
    for perc in font.percussion:
        if perc.address < 0:
            perc.address = pos
            pos += 16

    #Perc Table
    perc_tbl = Ser_PercTable()
    perc_tbl.address = 0
    if len(font.percussion) > 0:
        perc_tbl.address = pos
        for perc in font.percussion:
            perc_tbl.offsets.append(perc.address)
        serialize_queue.append(perc_tbl)
        pos += perc_tbl.getPaddingSize() + (len(perc_tbl.offsets) * 4)

    #SFX
    sfx_tbl_off = 0
    if len(font.soundeffects) > 0:
        sfx_tbl_off = pos
        for sfx in font.soundeffects:
            sfx.address = pos
            serialize_queue.append(perc_tbl)
            pos += 8

    #Now actually serialize
    #Offset table...
    needs_padding = ((pos % 16) != 0)
    output.write(struct.pack(">I", perc_tbl.address))
    output.write(struct.pack(">I", sfx_tbl_off))
    pos = 8
    for inst in font.instruments:
        output.write(struct.pack(">I", inst.address))
        pos += 4

    while (pos % 16) != 0:
        output.write(struct.pack(">I", 0))
        pos += 4

    for s_element in serialize_queue:
        written = s_element.serializeTo(output)
        if written == 0:
            print(f"ERROR: Failed to write block starting at 0x{s_element.address:0>8x}")
            return

    #Not sure if need to be padded to 16 for whole file? Assuming so.
    if needs_padding:
        output.write(struct.pack(">L", 0))

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
    xmltree = xml.parse(os.path.join(sampledir, "Banks.xml"))
    xmlroot = xmltree.getroot()

    e_banks = xmlroot.find("SampleBanks")
    elist_bank = e_banks.findAll("SampleBank")

    i = 0
	audiotable_paths = []
    for e_bank in elist_bank:
        bankname = e_bank.get("Name")
        if bankname is None:
			bankname = str(i) + "REF"
			bank_lookup[bankname] = bank_lookup[e_bank.get("Reference")]
        else:
            mybank = Soundbank()
			mybank.name = bankname
            bank_lookup[bankname] = mybank

            mybank.idx = i
            bankdir = os.path.join(sampledir, bankname)

			current_books = []
			current_loops = []
            for file in os.listdir(bankdir):
                if file.endswith(".aifc"):
                    samplename = file[:-5]
                    mysample = SampleHeader()
					mybank.samplesByName[samplename] = mysample
					mysample.name = samplename

                    #load from aifc
					mysample.loadInfoFromAIF(file)
					#mysample.updateSize()
					
					#If book or loop is identical to previous in bank, merge.
					#This is annoying because it rarely happens, and is slow to check, but it DOES happen
					blmerge = False
					for book in current_books:
						if book.booksEqual(mysample.book):
							blmerge = True
							mysample.book = book
							break
					if not blmerge:
						current_books.append(mysample.book)
						
					blmerge = False
					for loop in current_loops:
						if loop.loopsEqual(mysample.loop):
							blmerge = True
							mysample.loop = loop
							break
					if not blmerge:
						current_loops.append(mysample.loop)
					
			#Now, assign offsets/ calculate sizes for samples
			sorted_samples = mybank.orderSamples()
			print("Bank", mybank.idx, ":", len(sorted_samples), "found")
			
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
					
				if output is not None:
					aifc_path = os.path.join(bankdir, sample.name + ".aifc")
					output.write(loadSoundData(aifc_path))
					if padding > 0:
						output.write(struct.pack(str(padding) + "x"))
					
			if output is not None:
				output.close()
        i++
	
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
		output.write(">H14x", len(bnk_ordered))
		i = 0
		offset = 0
		for bnk_pair in bnk_ordered:
			mybank = bnk_pair[1]
			if mybank.idx == i:
				if debug_mode:
					#Print csv stating what samples are in bank.
					printBank2csv(os.path.join(builddir, getBankbinName(mybank.idx) + "_contents.csv"), mybank)
				banklen = mybank.calculateSize()
				output.write(">LL", offset, banklen)
				offset += banklen
			else:
				output.write("8x")
			output.write(">BB6x", mybank.medium, mybank.cache)
		output.close()
		
def main():
    #TODO
	if debug is not None:
		if debug:
			debug_mode = True
	
    #Process banks and build sample info blocks
	bankbuilddir = None
	if buildbank:
		bankbuilddir = os.path.join(outpath, 'audiotable')
	processBanks(sampledir, bankbuilddir)
	
	#Check bank matches (if requested)
	if debug_mode and buildbank:
		#Find reference files.
		bankdat_path = './bank.bin'
		banktbl_path = './bankdef.bin'
		banktbl = loadBankDefTable(banktbl_path)
	
		#Iterate
		banklist = sorted(bank_lookup.items())
		matchcount = 0
		bankcount = 0
		for bank in banklist:
			tblrec = banktbl[bank.idx]
			if tblrec.length < 1:
				continue
			bankcount += 1
			binoutpath = os.path.join(bankbuilddir, getBankbinName(bank.idx))
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