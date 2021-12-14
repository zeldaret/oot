#!/usr/bin/env python3
import argparse
import os
import struct

import xml.etree.ElementTree as XmlTree

#Enums
CODEC_VADPCM = 0
CODEC_S8 = 1
CODEC_S16_INMEM = 2
CODEC_SMALL_VADPCM = 3
CODEC_REVERB = 4
CODEC_S16 = 5

MEDIUM_RAM = 0
MEDIUM_UNK = 1
MEDIUM_CART = 2
MEDIUM_DD = 3

#Script variables
soundfonts = []
samplebanks = []

current_books = []
current_loops = []

#Extended class defs
class SerializableBlock:
    def __init__(self):
        self.id = ""
        self.address = -1

    def serializeTo(self, output):
        return 0

class Ser_Envelope(SerializableBlock):
    def __init__(self, name):
        self.data = []
        self.id = name

    def getSerialSize(self):
        #TODO
        #Include padding!!
        return 0

    def serializeTo(self, output):
        #TODO

class Ser_PCMBook(SerializableBlock):
    def __init__(self, order, predCount, name):
        self.order = order
        self.predictorCount = predCount
        self.tableSize = order * predCount * 8
        self.table = [0] * self.tableSize
        self.id = name

        self.paddingSize = 0
        mod16 = ((self.tableSize*2) + 8) % 16
        if mod16 > 0:
            self.paddingSize = 16 - mod16

    def getSerialSize(self):
        return 8 + (self.tableSize * 2) + self.paddingSize

    def serializeTo(self, output):
        output.write(struct.pack(">ii", self.order, self.predictorCount))
        for i in range(self.tableSize):
            output.write(struct.pack(">h", self.table[i]))
        if self.passingSize > 0:
            for i in range(self.paddingSize):
                output.write(struct.pack(">x"))
        return self.getSerialSize()

class Ser_PCMLoop(SerializableBlock):
    def __init__(self, name):
        self.loopStart = -1
        self.loopEnd = -1
        self.loopCount = 0
        self.id = name

    def serializeTo(self, output):
        output.write(struct.pack(">IIiI", self.loopStart, self.loopEnd, self.loopCount, 0))
        return 0x10

class Ser_WaveInfo(SerializableBlock):
    def __init__(self, name):
        self.codec = CODEC_VADPCM
        self.medium = MEDIUM_CART
        self.u2 = 0
        self.waveSize = 0
        self.waveOffset = -1
        self.loopBlock = None
        self.bookBlock = None
        self.id = name

        self.audiotable_size = 0
        self.bank_name = "" #To find file
        self.idx = -1

    def isADPCM(self):
        if self.codec is CODEC_VADPCM:
            return True
        if self.codec is CODEC_SMALL_VADPCM:
            return True
        return False

    def serializeTo(self, output):
        loopAddr = 0
        bookAddr = 0
        if self.loopBlock is not None:
            loopAddr = self.loopBlock.address
        if self.bookBlock is not None:
            bookAddr = self.bookBlock.address
        outflags = ((self.codec & 0xf) << 4) | ((self.medium & 0x3) << 2) 
        output.write(struct.pack(">BBHIII", outflags, self.u2, self.waveSize, self.waveOffset, loopAddr, bookAddr))
        return 0x10

class Ser_SFX(SerializableBlock):
    def __init__(self, name):
        self.wave = None
        self.tune = 1.0f
        self.id = name

    def serializeTo(self, output):
        if self.wave is None:
            return 0
        output.write(struct.pack(">If", self.wave.address, self.tune))
        return 0x8

class Ser_Percussion(SerializableBlock):
    def __init__(self, name):
        self.decay = 0
        self.pan = 0x40
        self.wave = None
        self.tune = 1.0f
        self.envelope = None
        self.id = name

    def serializeTo(self, output):
        if self.envelope is None:
            return 0
        if self.wave is None:
            return 0
        output.write(struct.pack(">BBxxIfI", self.decay, self.pan, self.wave.address, self.tune, self.envelope.address))
        return 0x10

class Ser_Instrument(SerializableBlock):
    def __init__(self, name):
        self.loMaxNote = 0
        self.hiMinNote = 127
        self.decay = 0
        self.envelope = None
        self.loWave = None
        self.midWave = None
        self.hiWave = None
        self.loTune = 1.0f
        self.midTune = 1.0f
        self.hiTune = 1.0f
        self.id = name

    def serializeTo(self, output):
        if self.envelope is None:
            return 0
        output.write(struct.pack(">xBBBI", self.loMaxNote, self.hiMinNote, self.decay, self.envelope.address))

        if self.loWave is None:
            output.write(struct.pack(">L", 0))
        else:
            output.write(struct.pack(">If", self.loWave.address, self.loTune))

        if self.midWave is None:
            return 0
        output.write(struct.pack(">If", self.midWave.address, self.midTune))

        if self.hiWave is None:
            output.write(struct.pack(">L", 0))
        else:
            output.write(struct.pack(">If", self.hiWave.address, self.hiTune))

        return 0x20

class Ser_Font:
    def __init__(self, name):
        self.id = name
        self.instruments = []
        self.percussion = []
        self.soundeffects = []
        self.envelopes = {}

class Ser_PercTable(SerializableBlock):
    def __init__(self):
        self.id = "perc_tbl"
        self.offsets = []

    def getPaddingSize(self):
        mysize = len(self.offsets) * 4
        mod16 = mysize % 16
        if mod16 > 0:
            return 16 - mod16
        return 0

    def serializeTo(self, output):
        for offset in self.offsets:
            output.write(struct.pack(">I", offset))
        paddingSize = self.getPaddingSize()
        for i in range(paddingSize):
            output.write(struct.pack(">x"))
        return (len(self.offsets) * 4) + paddingSize

class Ser_SampleBank():
    def __init__(self, name):
        self.id = name
        self.idx = -1
        self.samples = {} #Maps index to info block (because can be read in random order)
        self.size = 0

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

#Extracts number from start of name string
def extractIndexNumber(namestr):
    #TODO

def readFontXml(filepath):
    #TODO
    xmltree = xml.parse(filepath)
    xmlroot = xmltree.getroot()

    e_font = xmlroot.find("SoundFont")
    font = Ser_Font(e_font.get("Name"))

    #Get bank index
    xml_element = e_font.find("SampleBanks")
    xml_element = xml_element.find("Bank")
    bank_idx = extractIndexNumber(xml_element.get("Name"))

    #Read envelopes
    e_envs = e_font.find("Envelopes")
    elist_env = e_envs.findall("Envelope")
    for e_env in elist_env:

    
    #Read instruments
    e_insts = e_font.find("Instruments")

    #Read drums

    #Read sfx


def readFontXmls(dirpath):
    #TODO Fix this - list order not guaranteed
    for file in os.listdir(xml_dir):
        if file.endswith(".xml"):
            soundfonts.add(readFontXml(os.path.join(xml_dir, file)))

def booksEqual(book1, book2):
    #TODO
    return false

def loopsEqual(loop1, loop2):
    #TODO
    return false

def loadSampleInfo(sample_info):
    #TODO
    #Gets all the info needed from the aifc

    #Don't forget to check against existing loop and adpcm blocks and merge if identical

def processBanks(sampledir, buildbanks):
    #TODO
    xmltree = xml.parse(os.path.join(sampledir, "Banks.xml"))
    xmlroot = xmltree.getroot()

    e_banks = xmlroot.find("SampleBanks")
    elist_bank = e_banks.findAll("SampleBank")
    bankdict = {}

    i = 0
    for e_bank in elist_bank:
        bankname = e_bank.get("Name")
        if bankname is None:
            samplebanks.append(bankdict[e_bank.get("Reference")])
        else:
            mybank = Ser_SampleBank(bankname)
            bankdict[bankname] = mybank
            samplebanks.append(mybank)

            mybank.idx = i
            bankdir = os.path.join(sampledir, bankname)

            for file in os.listdir(bankdir):
                if file.endswith(".aifc"):
                    samplename = file[:-5]
                    mysample = Ser_WaveInfo(samplename)
                    mysample.idx = extractIndexNumber(samplename)
                    mysample.bank_name = bankname
                    mybank.samples[mysample.idx] = mysample

                    #load from aifc
                    #Update bank size and offset

            #Assign offsets (since samples may not be added in order)

        i++

def main():
    #TODO
    #Process banks and build sample info blocks
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