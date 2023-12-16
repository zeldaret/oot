#!/usr/bin/env python3

import argparse
import hashlib
import io
import math
import os
import pathlib
import struct
import sys

import xml.etree.ElementTree as XmlTree

from audio_common import Soundbank, SampleHeader, padding16, loadSoundData, \
    Soundfont, align

# Script variables
debug_mode = False
match_mode = None

bank_lookup = {}
banks = []
font_lookup = {}

last_font_match_sizes = {
    "ocarina" :    0x12B60,
    "ocarina1_0" : 0x3940,
    "majora" :     0x3F0
}

audiobank_sizes = {
    "ocarina" :    0x2BDC0,
    "ocarina1_0" : 0x1CA50,
    "majora" :     0x263F0
}

class DrumOffsetTable:
    def __init__(self):
        self.off_list = []
        self.addr = -1

    def serializeTo(self, output):
        sz = 0
        for off in self.off_list:
            output.write(struct.pack(">I", off))
            sz += 4
        return sz

class DummyBlock:
    def __init__(self, size_in_bytes):
        self.size = size_in_bytes
        self.addr = -1

    def serializeTo(self, output):
        output.write(b"\x00"*self.size)
        return self.size

class GarbageBlock:
    def __init__(self):
        self.data = []
        self.addr = -1

    def serializeTo(self, output):
        if self.data:
            for i in range(len(self.data)):
                output.write(struct.pack("B", self.data[i]))
        return len(self.data)

def checkMatch(refData, checkData, nameStr):
    # Sees if match. If so, print message saying so. If not, give offset of first mismatched byte
    # Return boolean (so can count)
    if nameStr is None:
        nameStr = "ANON_CHECK"
    if refData is None:
        print(f"MATCH {nameStr}: Please provide reference data for matching")
        return False
    if checkData is None:
        print(f"MATCH {nameStr}: Please provide target data for matching")
        return False

    offset = 0
    rlen = len(refData)
    tlen = len(checkData)
    maxlen = min(rlen, tlen)

    # Obviously if lengths don't match, there's not a match, but I still want to check offset
    for i in range(maxlen):
        if refData[i] != checkData[i]:
            print(f"MATCH {nameStr}: Mismatch found @ 0x{offset:08x}")
            return False
        offset += 1

    if rlen != tlen:
        print(f"MATCH {nameStr}: Mismatch found @ 0x{offset:08x}")
        return False

    print(f"MATCH {nameStr}: Target matches reference!")
    return True

def orderWaveBlocksInstOrder(font, ser_blocks, base_addr):
    slist = []

    slots = font.instSlotCount()
    for i in range(slots):
        if i in font.instIdxLookup:
            inst = font.instIdxLookup[i]
            if inst.keyLowSample and inst.keyLowSample not in slist:
                slist.append(inst.keyLowSample)
            if inst.keyMedSample and inst.keyMedSample not in slist:
                slist.append(inst.keyMedSample)
            if inst.keyHighSample and inst.keyHighSample not in slist:
                slist.append(inst.keyHighSample)

    slots = font.percSlotCount()
    for i in range(slots):
        if i in font.percIdxLookup:
            drum = font.percIdxLookup[i]
            if drum.sample and drum.sample not in slist:
                slist.append(drum.sample)

    slots = font.sfxSlotCount()
    for i in range(slots):
        if i in font.sfxIdxLookup:
            sfx = font.sfxIdxLookup[i]
            if sfx.sample and sfx.sample not in slist:
                slist.append(sfx.sample)

    for sample in slist:
        sample.addr = -1
        if sample.loop:
            sample.loop.addr = -1
        if sample.book:
            sample.book.addr = -1

    block_size = 16
    current_addr = base_addr
    for sample in slist:
        ser_blocks.append(sample)
        sample.addr = current_addr
        current_addr += block_size

        # Add book if not added
        if sample.book and sample.book.addr < 0:
            ser_blocks.append(sample.book)
            sample.book.addr = current_addr
            current_addr += sample.book.order * sample.book.predictorCount * 16 + 8
            current_addr = align(current_addr, 16)

        if sample.loop and sample.loop.addr < 0:
            ser_blocks.append(sample.loop)
            sample.loop.addr = current_addr
            if sample.loop.count != 0:
                current_addr += 48
            else:
                current_addr += 16

    return current_addr

def orderWaveBlocksBankOrder(font, ser_blocks, base_addr):
    # Extract all used blocks from the font (ugh)
    s_dict = {}
    for inst in font.instruments:
        if inst.keyLowSample and inst.keyLowSample.idx not in s_dict:
            s_dict[inst.keyLowSample.idx] = inst.keyLowSample
        if inst.keyMedSample and inst.keyMedSample.idx not in s_dict:
            s_dict[inst.keyMedSample.idx] = inst.keyMedSample
        if inst.keyHighSample and inst.keyHighSample.idx not in s_dict:
            s_dict[inst.keyHighSample.idx] = inst.keyHighSample

    for drum in font.percussion:
        if drum.sample and drum.sample.idx not in s_dict:
            s_dict[drum.sample.idx] = drum.sample

    for sfx in font.soundEffects:
        if sfx.sample and sfx.sample.idx not in s_dict:
            s_dict[sfx.sample.idx] = sfx.sample

    dict_items = sorted(s_dict.items())
    for item in dict_items:
        # Clear Addresses
        sample = item[1]
        sample.addr = -1
        if sample.loop:
            sample.loop.addr = -1
        if sample.book:
            sample.book.addr = -1

    # Iterate again, this time using blank addresses to check for addition
    block_size = 16
    current_addr = base_addr
    for item in dict_items:
        sample = item[1]
        ser_blocks.append(sample)
        sample.addr = current_addr
        current_addr += block_size

        # Add book if not added
        if sample.book and (sample.book.addr < 0):
            ser_blocks.append(sample.book)
            sample.book.addr = current_addr
            current_addr += (sample.book.order * sample.book.predictorCount * 16) + 8
            current_addr = align(current_addr, 16)

        if sample.loop and (sample.loop.addr < 0):
            ser_blocks.append(sample.loop)
            sample.loop.addr = current_addr
            if sample.loop.count != 0:
                current_addr += 48
            else:
                current_addr += 16

    return current_addr

def orderWaveBlocksMatchOrder(font, ser_blocks, base_addr):
    slist = []

    for stuple in font.sampleOrder:
        fname = stuple[1]
        if fname in font.bank1.samplesByName:
            slist.append(font.bank1.samplesByName[fname])

    for sample in slist:
        sample.addr = -1
        if sample.loop:
            sample.loop.addr = -1
        if sample.book:
            sample.book.addr = -1

    block_size = 16

    current_addr = base_addr
    for sample in slist:
        ser_blocks.append(sample)
        sample.addr = current_addr
        current_addr += block_size

        # Add book if not added
        if sample.book and sample.book.addr < 0:
            ser_blocks.append(sample.book)
            sample.book.addr = current_addr
            current_addr += sample.book.order * sample.book.predictorCount * 16 + 8
            current_addr = align(current_addr, 16)

        if sample.loop and sample.loop.addr < 0:
            ser_blocks.append(sample.loop)
            sample.loop.addr = current_addr
            if sample.loop.count != 0:
                current_addr += 48
            else:
                current_addr += 16

    return current_addr

def orderEnvelopeBlocks(font, ser_blocks, base_addr):
    # Scan inst and perc to make sure all envelopes are in font map
    for inst in font.instruments:
        if inst.envelope and not inst.envelope.name in font.envelopes:
            font.envelopes[inst.envelope.name] = inst.envelope

    for drum in font.percussion:
        if drum.envelope and not drum.envelope.name in font.envelopes:
            font.envelopes[drum.envelope.name] = drum.envelope

    # Nab envelopes from font
    eitems = sorted(font.envelopes.items())

    current_addr = base_addr
    for eitem in eitems:
        env = eitem[1]
        ser_blocks.append(env)
        env.addr = current_addr
        current_addr += env.serialSize()
        current_addr = align(current_addr, 16)

    return current_addr

def compileFont(font, output, audiobank_off=0):
    # Blocks appear to be in the following order:
    # Wave Info (In order they appear in bank)
    #   ADPCM Book (If not identical to one in previous wave)
    #   Loop (If not identical to one in previous wave)
    # Envelopes (Seem to be in order they are referenced?)
    # Instruments (NOT in index order. Probably order they were added.)
    # Drums (Usually in index order, but I don't think that's guaranteed)
    # Drum Offset Table
    # SFX Table (By index - 0L if empty slot)

    # Starts after head offset table
    ser_blocks = []

    # Get used slot counts
    icount = font.instSlotCount()
    pcount = font.percSlotCount()
    xcount = font.sfxSlotCount()

    # Calculate head offset table size
    current_pos = (2 + icount) * 4
    current_pos = align(current_pos, 16)

    # Wave blocks
    if match_mode:
        if font.sampleOrder and len(font.sampleOrder) > 0:
            current_pos = orderWaveBlocksMatchOrder(font, ser_blocks, current_pos)
        else:
            current_pos = orderWaveBlocksBankOrder(font, ser_blocks, current_pos)
    else:
        current_pos = orderWaveBlocksBankOrder(font, ser_blocks, current_pos)

    # Envelope blocks
    current_pos = orderEnvelopeBlocks(font, ser_blocks, current_pos)

    # Instrument blocks
    block_size = 32
    for inst in font.instruments:
        ser_blocks.append(inst)
        inst.addr = current_pos
        current_pos += block_size

    # Drum blocks
    block_size = 16

    if pcount > 0:
        for drum in font.percussion:
            ser_blocks.append(drum)
            drum.addr = current_pos
            current_pos += block_size

        # Drum offset table
        drum_offtbl = DrumOffsetTable()
        drum_offtbl.addr = current_pos

        for i in range(pcount):
            if i in font.percIdxLookup:
                drum_offtbl.off_list.append(font.percIdxLookup[i].addr)
            else:
                drum_offtbl.off_list.append(0)
            current_pos += 4

        current_pos = align(current_pos, 16)
        ser_blocks.append(drum_offtbl)
    else:
        drum_offtbl = DrumOffsetTable()
        drum_offtbl.addr = 0

    # SFX table
    block_size = 8

    if xcount > 0:
        sfx_tbl_pos = current_pos

        for i in range(xcount):
            if i in font.sfxIdxLookup:
                mysfx = font.sfxIdxLookup[i]
                mysfx.addr = current_pos
                ser_blocks.append(mysfx)
            else:
                dummysfx = DummyBlock(block_size)
                dummysfx.addr = current_pos
                ser_blocks.append(dummysfx)
            current_pos += block_size
    else:
        sfx_tbl_pos = 0

    # If in match mode, insert garbage data
    if match_mode:
        for item in font.unusedDat.items():
            dat_off = item[0]
            unused_data = item[1]
            sblock = GarbageBlock()
            sblock.data = bytes(unused_data)
            sblock.addr = dat_off - audiobank_off

            # Insert :(
            ct = len(ser_blocks)
            inserted = False
            mysize = len(unused_data)

            for i in range(ct):
                ser_block = ser_blocks[i]
                if ser_block.addr >= sblock.addr:
                    if not inserted:
                        ser_blocks.insert(i, sblock)
                        inserted = True
                    else:
                        ser_block.addr += mysize

            if inserted:
                ser_blocks[ct].addr += mysize # Last block that was pushed down
            else:
                # Append
                ser_blocks.append(sblock)

    # Serialize the head offset table
    output.write(struct.pack(">II", drum_offtbl.addr, sfx_tbl_pos))
    wpos = 8
    for i in range(icount):
        if i in font.instIdxLookup:
            myinst = font.instIdxLookup[i]
            output.write(struct.pack(">I", myinst.addr))
        else:
            output.write(struct.pack("4x"))
        wpos += 4

    # Write everything else
    for block in ser_blocks:
        # Pad if needed
        padding = block.addr - wpos
        if padding > 0:
            output.write(b"\x00"*padding)
            wpos += padding
        # Serialize block
        wpos += block.serializeTo(output)

    # Pad to end, if needed
    padding = align(wpos, 16) - wpos
    if padding > 0:
        output.write(b"\x00"*padding)
        wpos += padding

    return wpos

def linkFontToBank(font):
    # This links the sound info to the font
    if not font.bankNames:
        return

    bname = font.bankNames[0]
    if not bname:
        return

    if bname in bank_lookup:
        mybank = bank_lookup[bname]
        font.bankIdx1 = mybank.idx
    else:
        # Try to isolate index from name...
        if bname[:1].isnumeric():
            firstunderscore = bname.find('_')
            bidx = int(bname[:firstunderscore])
            mybank = banks[bidx]
            font.bankIdx1 = bidx
            if not mybank:
                print(f"WARNING: Could not find bank match {bname} for font: {font.name}", file=sys.stderr)
                return
        else:
            print(f"WARNING: Could not find bank match {bname} for font: {font.name}", file=sys.stderr)
            return

    if not mybank:
        print(f"WARNING: Could not find bank match {bname} for font: {font.name}", file=sys.stderr)
        return

    # Check for apparent bank if in match mode
    if match_mode and len(font.apparent_banks) > 0:
        abname = font.apparent_banks[0]
        if abname in bank_lookup:
            abank = bank_lookup[abname]
            font.bankIdx1 = abank.idx
        else:
            # Try to isolate index from name...
            if abname[:1].isnumeric():
                firstunderscore = abname.find('_')
                abidx = int(abname[:firstunderscore])
                abank = banks[abidx]
                font.bankIdx1 = abidx
                if not abank:
                    print(f"WARNING: Could not find bank match {abname} for font: {font.name}", file=sys.stderr)
            else:
                print(f"WARNING: Could not find bank match {abname} for font: {font.name}", file=sys.stderr)

    # Link bank and samples
    font.bank1 = mybank
    for inst in font.instruments:
        if inst.keyLowName:
            inst.keyLowSample = mybank.getSample(inst.keyLowName)
            if inst.keyLowSample is not None and inst.keyLowPitch < 0.0:
                inst.keyLowPitch = inst.keyLowSample.tuning
        if inst.keyMedName:
            inst.keyMedSample = mybank.getSample(inst.keyMedName)
            if inst.keyMedSample is not None and inst.keyMedPitch < 0.0:
                inst.keyMedPitch = inst.keyMedSample.tuning
        if inst.keyHighName:
            inst.keyHighSample = mybank.getSample(inst.keyHighName)
            if inst.keyHighSample is not None and inst.keyHighPitch < 0.0:
                inst.keyHighPitch = inst.keyHighSample.tuning

    for drum in font.percussion:
        if drum.sampleName:
            drum.sample = mybank.getSample(drum.sampleName)
            if drum.sample is not None and drum.pitch < 0.0:
                drum.pitch = drum.sample.tuning

    for sfx in font.soundEffects:
        if sfx.sampleName:
            sfx.sample = mybank.getSample(sfx.sampleName)
            if sfx.sample is not None and sfx.pitch < 0.0:
                sfx.pitch = sfx.sample.tuning

def getFileName(idx=None, name=""):
    name = "%02d_%s" % (idx, name) if idx is not None else name
    return ''.join('_' if c not in 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_' else c for c in name)

def readFonts(dirpath):
    for fname in os.listdir(dirpath):
        if fname.endswith(".xml"):
            readFont(os.path.join(dirpath, fname))

def readFont(filepath):
    filename = os.path.basename(filepath)
    if debug_mode:
        print("Reading soundfont xml: ", filename)
    fontname = filename[:-4]
    myfont = Soundfont()

    xmltree = XmlTree.parse(filepath)
    xmlroot = xmltree.getroot()
    if xmlroot.tag == "Soundfont":
        sfnode = xmlroot
    else:
        sfnode = xmlroot.find("Soundfont")

    if sfnode is None:
        print(f"ERROR - could not find Soundfont definition in: {filename}", file=sys.stderr)
        exit(1)

    myfont.fromXML(sfnode)

    # Resolve font name, and index if part of name
    if fontname[:1].isnumeric():
        spaceidx = fontname.find('_')
        if spaceidx >= 0:
            myfont.idx = int(fontname[:spaceidx])
            fontname = fontname[spaceidx + 1:]

    font_lookup[fontname] = myfont
    myfont.name = fontname

    # Link samples
    linkFontToBank(myfont)

def printBank2csv(path, bank):
    csvstream = open(path, 'w')
    csvstream.write('# Index,Name,Codec,Medium,u2,OffsetInBank,Length,FrameCount,Tuning\n')

    samplelist = bank.samples
    for sample in samplelist:
        csvstream.write(f"{sample.idx},")
        csvstream.write(f"{sample.name.replace(',', '')},")
        csvstream.write(f"{toCodecID(sample.codec)},")
        csvstream.write(f"{toMedium(sample.medium)},")
        csvstream.write(f"{sample.u2},")
        csvstream.write(f"0x{sample.offsetInBank:0>8x},")
        csvstream.write(f"0x{sample.length:0>8x},")
        csvstream.write(f"{sample.frameCount},")
        csvstream.write(f"{sample.tuning}\n")

    csvstream.close()

def splitSampleName(filepath):
    rawname = filepath
    # Chop extension
    if filepath.endswith(".aifc"):
        rawname = filepath[:-5]

    # Check for number
    inum = -1
    sname = rawname
    if rawname[:1].isnumeric():
        # Find the first space
        firstunderscore = rawname.find('_')
        if firstunderscore >= 0:
            istr = rawname[:firstunderscore]
            sname = rawname[firstunderscore + 1:]
            inum = int(istr)

    # Return number, name
    return inum, sname

def get_sym_name(name):
    result = ''
    for c in name:
        # Only keep letters, digits, and underscores
        if c in 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890_':
            result += c
        # Replace everything else with underscores
        else:
            result += '_'

    # Symbols can't start with numbers
    if result[0:1] in '1234567890':
        result = '_' + result

    return result

def onerow(romaddr, size, medium, cachePolicy, instrumentCount, percussionCount, effectCount):
    return b"    {0x%08x, %d, %d, %d, 0x%04x, 0x%04x, 0x%04x}," % (
        romaddr, size, medium, cachePolicy, instrumentCount, percussionCount, effectCount
    )

def processBanks(sampledir, builddir, tabledir, quiet):
    xmltree = XmlTree.parse(os.path.join(sampledir, "Banks.xml"))
    xmlroot = xmltree.getroot()

    if builddir is not None:
        os.makedirs(builddir, exist_ok=True)

    if xmlroot.tag == "SampleBanks":
        e_banks = xmlroot
    else:
        e_banks = xmlroot.find("SampleBanks")
    if e_banks is None:
        print("Banks.xml does not appear to be valid", file=sys.stderr)
        return
    elist_bank = e_banks.findall("SampleBank")

    os.makedirs("assets/samplebanks", exist_ok=True)

    banklens = {}
    for i, e_bank in enumerate(elist_bank):
        bankname = e_bank.get("Name")
        if bankname is None:
            bankname = f"{i} - REF"
            mybank = bank_lookup[e_bank.get("Reference")]
            bank_lookup[bankname] = mybank
            if not quiet:
                print("Bank reference discovered:", bankname)
            banks.append(mybank)
            continue

        if not quiet:
            print("Bank discovered:", bankname)

        mybank = Soundbank()
        mybank.idx = i
        mybank.name = bankname
        mybank.fromXML(e_bank)

        banks.append(mybank)
        bank_lookup[bankname] = mybank

        bankdir = os.path.join(sampledir, bankname)

        current_books = []
        current_loops = []
        index_map = {}
        max_idx = -1
        need_index = []

        for fname in os.listdir(bankdir):
            if fname.endswith(".aifc"):
                si, samplename = splitSampleName(fname)
                if samplename in mybank.samplesByName:
                    print("WARNING: Duplicate sample key found:", samplename, file=sys.stderr)

                mysample = SampleHeader()
                mysample.name = samplename
                mysample.idx = si
                mysample.fileName = fname

                mybank.samplesByName[samplename] = mysample

                if si < 0:
                    need_index.append(mysample)
                else:
                    index_map[si] = mysample
                    if si > max_idx:
                        max_idx = si

                # load from aifc
                mysample.loadInfoFromAif(os.path.join(bankdir, fname))

                # If book or loop is identical to previous in bank, merge.
                blmerge = False
                if mysample.book is not None:
                    for book in current_books:
                        if book.booksEqual(mysample.book):
                            blmerge = True
                            mysample.book = book
                            break
                    if not blmerge:
                        current_books.append(mysample.book)

                # Note: this loop could be removed to decrease complexity.
                if not match_mode:
                    # Looks like original tool does not merge (the very rare, but existing) identical loops
                    blmerge = False
                    if mysample.loop is not None:
                        for loop in current_loops:
                            if loop.loopsEqual(mysample.loop):
                                blmerge = True
                                mysample.loop = loop
                                break
                        if not blmerge:
                            current_loops.append(mysample.loop)

        # Assign indices to yet unindexed samples.
        # Note: this should only be used when modding.
        nextidx = 0
        for asample in need_index:
            while nextidx in index_map:
                nextidx += 1
            asample.idx = nextidx
            index_map[nextidx] = asample
            max_idx = max(max_idx, nextidx)
            nextidx += 1

        # Order samples, inserts the sample or None into the list.
        for idx in range(max_idx+1):
            mybank.samples.append(index_map.get(idx))

        if not quiet:
            print(f"Bank {mybank.idx}: {len(mybank.samples)} samples found")

        # Now, assign offsets/calculate sizes for samples

        if mybank.samples:
            output = io.BytesIO()
            offset = 0
            for j, sample in enumerate(mybank.samples):
                sample.idx = j
                sample.offsetInBank = offset
                # Need to add padding as well...
                offset += sample.length
                padding = padding16(offset)
                offset += padding

                if not quiet:
                    print("Writing sample:", sample.name)

                aifc_path = os.path.join(bankdir, sample.fileName)
                output.write(loadSoundData(aifc_path)[8:8 + sample.length])
                output.write(b"\x00"*padding)

            output = bytes(output.getbuffer())
            if builddir and not mybank.idx and match_mode:
                # There appears to be a buffer clearing bug in the original authoring tool
                # that only affects the end of bank 0.
                # Must replicate to get a match

                if hashlib.md5(output).hexdigest() != "fd7246e41d2a2e04d076bcd4a693828c":
                    print("WARNING: --match=ocarina enabled, but this is not an original 0_Sound_Effects.", file=sys.stderr)
                    print("This means you probably modified or added some .aifc sounds.", file=sys.stderr)
                    print("You should likely remove the --match=ocarina flag to keep a working sound system.", file=sys.stderr)

                # Grab the 32-byte value at offset -0x10000 and place it at
                # the last four bytes.
                output = output[:-4] + output[-0x10004:][:4]
        else:
            # If no aifc files were found, look for a raw .bin file.
            for fname in os.listdir(bankdir):
                if fname.endswith(".bin"):
                    output = open(os.path.join(bankdir, fname), "rb").read()
                    break

        banklens[mybank.idx] = len(output)
        fname = getFileName(name=mybank.name)
        buf = hexdump(output, "bank_"+bankname)
        open("assets/samplebanks/"+fname+".c", "wb").write(buf)

    # Code table
    lrows = []
    offset = 0
    for i, bnk_pair in enumerate(sorted(bank_lookup.items())):
        mybank = bnk_pair[1]
        if mybank.idx == i:
            if debug_mode:
                # Print csv stating what samples are in bank.
                printBank2csv(os.path.join(tabledir, getBankbinName(mybank.idx) + "_contents.csv"), mybank)
            banklen = mybank.calculateSize() or banklens[mybank.idx]
            lrows.append((offset, banklen, mybank.medium, mybank.cachePolicy, 0, 0, 0))
            offset += banklen
        else:
            lrows.append((0, 0, mybank.medium, mybank.cachePolicy, 0, 0, 0))

    l = [
        b"AudioTable gSampleBankTable = {",
        b"    %d, 0, 0x00000000, {0, 0, 0, 0, 0, 0, 0, 0}, {" % len(bank_lookup),
        b"    "+onerow(*lrows[0]),
        b"    }",
        b"};",
        b"AudioTableEntry gSampleBankTableEntries[] = {",
    ]
    for row in lrows[1:]:
        l.append(onerow(*row))
    l.append(b"};\n")

    open("assets/misc/sounds/sample_bank_table.h", "wb").write(b"\n".join(l))

def write_soundfont_define(font, fontcount, filename):
    width = int(math.log10(fontcount)) + 1
    index = str(font.idx).zfill(width)

    with open(filename, "w") as f:
        f.write("#   Soundfont file constants\n")
        f.write(f"#   ID: {font.idx}\n")
        f.write(f"#   Name: {font.name}\n")
        f.write("\n##### INSTRUMENTS #####\n")

        for instrument in font.instruments:
            if instrument is None:
                continue

            f.write(f".define FONT{index}_INSTR_{instrument.enum} {instrument.idx}\n")

        f.write("\n##### DRUMS #####\n")
        for drum in font.percussion:
            if drum is None:
                continue

            f.write(f".define FONT{index}_DRUM_{drum.enum} {drum.idx}\n")

        f.write("\n##### EFFECTS #####\n")
        for effect in font.soundEffects:
            if effect is None:
                continue

            f.write(f".define FONT{index}_EFFECT_{effect.enum} {effect.idx}\n")

def hexdump(buf, varname):
    l = [
        b"unsigned char %s[] = {\n" % varname.encode(),
    ]
    for idx in range(0, len(buf), 16):
        l.append(b"    " + b" ".join(
            b"0x%02x," % ch for ch in buf[idx:idx+min(len(buf)-idx, 16)]
        ) + b"\n")
    l.append(b"};\n")
    return b"".join(l)

def main(args):
    global debug_mode
    global match_mode

    if args.debug and not args.quiet:
        debug_mode = True
    match_mode = args.match

    outpath = args.outpath
    inpath = args.inpath
    sampledir = args.sampledir

    if debug_mode:
        print("DEBUG MODE:")
        print("Input Directory:", inpath)
        print("Output Directory:", outpath)
        print("Sample Directory:", sampledir)
        print("Match Mode:", match_mode)

    # Check for directories' existence
    if args.single:
        if not os.path.isfile(inpath):
            print(f"ERROR: Input file \"{inpath}\" does not exist!", file=sys.stderr)
            return 1
    else:
        if not os.path.isdir(inpath):
            print(f"ERROR: Input path \"{inpath}\" is not a valid directory!", file=sys.stderr)
            return 1

    if not os.path.isdir(sampledir):
        print(f"ERROR: Sample path \"{sampledir}\" is not a valid directory!", file=sys.stderr)
        return 1

    if not os.path.isdir(outpath):
        os.makedirs(outpath)

    # Process banks and build sample info blocks
    bankbuilddir = None
    tablebuilddir = os.path.join(outpath, 'data')
    if args.build_bank:
        bankbuilddir = os.path.join(outpath, 'samplebanks')
    processBanks(sampledir, bankbuilddir, tablebuilddir, args.quiet)

    if debug_mode and args.build_bank and match_mode:
        # Find reference files.
        bankdat_path = os.path.join("baserom", "Audiotable")
        print("Extracted audiotable ref:", bankdat_path)

        # Iterate
        matchcount = 0
        checked = []

        for item in sorted(bank_lookup.items()):
            bank = item[1]
            if bank.idx in checked:
                print("Bank references already checked bank:", bank.idx)
                continue
            binoutpath = os.path.join(bankbuilddir, getBankbinName(bank.idx))
            if os.path.isfile(binoutpath):
                with open(binoutpath, 'rb') as f:
                    checkdat = f.read()
                if checkMatch(refdat, checkdat, f'Bank {bank.idx}'):
                    matchcount += 1
            else:
                print(f"Bank {bank.idx} found as bin. No need to check.")
                matchcount += 1
            checked.append(bank.idx)

        print(f"{matchcount} of {len(checked)} banks matched.")

        # Check audiotable itself
        binoutpath = os.path.join(bankbuilddir, 'audiotable')
        with open(bankdat_path, 'rb') as f:
            refdat = f.read()
        with open(binoutpath, 'rb') as f:
            checkdat = f.read()
        if checkMatch(refdat, checkdat, 'audiotable'):
            print('SUCCESS: audiotable matches!')
        else:
            print('ERROR: audiotable does not match!')

        refdat = None
        checkdat = None

    # Read in font(s)
    if args.single:
        readFont(inpath)
    else:
        readFonts(inpath)

    # compile font(s)

    os.makedirs(os.path.join(outpath, 'soundfonts'), exist_ok=True)

    fonts = sorted(font_lookup.values(), key=lambda x: x.idx)
    fontbufs, aboff = {}, 0
    for font in fonts:
        output = io.BytesIO()
        fontbufs[font.idx] = output
        compileFont(font, output, aboff)
        aboff += output.tell()

        if match_mode and font.idx == len(fonts)-1:
            if match_mode not in last_font_match_sizes:
                if not args.quiet:
                    print(f"Match string \'{match_mode}\' not recognized! Ignoring...")
            else:
                padding = last_font_match_sizes[match_mode] - output.tell()
                output.write(b"\x00"*padding)

        fontsym = font.symbol if font.symbol else font.name
        fname = getFileName(font.idx, font.name)
        buf = hexdump(output.getbuffer(), get_sym_name(fontsym))
        open("assets/soundfonts/"+fname+".c", "wb").write(buf)

        os.makedirs(args.outinclude, exist_ok=True)
        inc_filename = os.path.join(args.outinclude, f"{font.idx}.inc")
        write_soundfont_define(font, len(fonts), inc_filename)

    # write audiobank & code table (and match banks one by one)
    current_pos = 0

    lfonts = []
    for font in fonts:
        fontsize = fontbufs[font.idx].tell()
        myentry = font.getTableEntry()
        myentry.offset = current_pos
        myentry.length = fontsize
        current_pos += fontsize
        lfonts.append(myentry)

    l = [
        b"#ifdef AUDIOHEADER",
        b"",
        b"#define NUM_SOUNDFONTS %d" % len(lfonts),
        b"#define SFX_SOUNDFONT_1_SIZE %d" % lfonts[0].length,
        b"#define SFX_SOUNDFONT_2_SIZE %d" % lfonts[1].length,
        b"",
        b"#else",
        b"",
        b"AudioTable gSoundFontTable = {",
        b"    %d, 0, 0x00000000, {0, 0, 0, 0, 0, 0, 0, 0}, {" % len(fonts),
        b"    "+onerow(*lfonts[0].serialize()),
        b"    }",
        b"};",
        b"AudioTableEntry gSoundFontTableEntries[] = {",
    ]
    for font in lfonts[1:]:
        l.append(onerow(*font.serialize()))
    l.append(b"};\n\n#endif\n")

    open("assets/misc/sounds/sound_font_table.h", "wb").write(b"\n".join(l))

    # match audiobank
    if debug_mode and match_mode:
        font_matches = 0
        print(f"{font_matches} of {len(fonts)} fonts matched.")

        # load table for matching
        og_font_dat = open(os.path.join('baserom', 'Audiobank'), "rb").read()

        # TODO This match check doesn't work anymore.
        # with open(audiobank_tbl_tmp, "rb") as audiobank_file:
        #     abdat = audiobank_file.read()

        # checkMatch(og_font_dat, abdat, "audiobank")

    return 0

if __name__ == "__main__":
    # Args
    parser = argparse.ArgumentParser(add_help=False)
    parser.add_argument("inpath", type=pathlib.Path, help="Input path. If --single, this should be a font xml. If batch, this should be a directory of font xmls.")
    parser.add_argument("outpath", type=pathlib.Path, help="Output path. This should be the directory where target bins are written.")
    parser.add_argument("outinclude", type=pathlib.Path, help="Output path for generated include headers.")
    parser.add_argument("sampledir", type=pathlib.Path, help="Path to file containing sound samples.")
    parser.add_argument("--match", help="Aim to build match to original ROM (less efficient, more bookkeeping). Recognized values: ocarina, ocarina1_0, majora")
    parser.add_argument("--debug", action="store_true", help="Flag for debug mode (increased verbosity, output matching)")
    parser.add_argument("--single", action="store_true", help="Use this flag if only want to build a single font (inputting one xml file)")
    parser.add_argument("--build-bank", action="store_true", help="Use this flag to build bank files as well as fonts. Highly recommended.")
    parser.add_argument("--quiet", "-q", action="store_true", help="Suppresses output to standard out.")
    parser.add_argument("--help", "-h", "-?", action="help", help="Show this help message and exit.")
    args = parser.parse_args()
    main(args)
