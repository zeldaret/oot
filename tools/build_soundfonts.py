#!/usr/bin/env python3
import argparse
import os
import struct

import xml.etree.ElementTree as XmlTree

from audio_common import *

#Script variables
bank_lookup = {}

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
	return "audiotable_" + str(idx) + ".bin"

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

            for file in os.listdir(bankdir):
                if file.endswith(".aifc"):
                    samplename = file[:-5]
                    mysample = SampleHeader()
					mybank.samplesByName[samplename] = mysample
					mysample.name = samplename

                    #load from aifc
					mysample.loadInfoFromAIFF(file)
					mysample.updateSize()
					
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
				padding = 0
				mod16 = offset % 16
				if mod16 != 0:
					padding = 16 - mod16
					offset += padding
					
				if output is not None:
					aifc_path = os.path.join(bankdir, sample.name + ".aifc")
					output.write(loadADPCMData(aifc_path))
					
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
	

def main():
    #TODO
    #Process banks and build sample info blocks
	#Check bank matches (if requested)
    #Read in font(s)
    #compile font(s)
    #match

    #dump sf2, if selected
    #For now, I mostly put this in here as a note to myself to add it if I have time.

#Args
#build_soundfonts.py inpath outpath sampledef --ref [path] --single --sf2 [path]
parser = argparse.ArgumentParser()
parser.add_argument("inpath", help="Input path. If --single, this should be a font xml. If batch, this should be a directory of font xmls.")
parser.add_argument("outpath", help="Output path. If --single, this will be the path for the font binary. If batch, this will be the directory where the individual fonts and Audiobank will be written.")
parser.add_argument("sampledir", help="Path to file containing sound samples.")
parser.add_argument("--ref", help="Path to directory(batch)/file(single) containing binary font file to match.")
parser.add_argument("--single", action="store_true", help="Use this flag if only want to build a single font (inputting one xml file)")
parser.add_argument("--buildbank", action="store_true", help="Use this flag to build bank files as well as fonts.")
parser.add_argument("--sf2", help="If sf2 export is desired, path to directory to write sf2 file(s).")
args = parser.parse_args()

if __name__ == "__main__":
    main()