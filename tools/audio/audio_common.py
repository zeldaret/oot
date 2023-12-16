#!/usr/bin/env python3

import math
import struct

import xml.etree.ElementTree as XmlTree

class AifReader:
    def __init__(self, filepath):
        self.path = filepath
        self.sections = {}
        self.appl_sections = []
        self.total_size = 0
        self.is_aifc = False

        f = open(filepath, 'rb')

        #Read header
        assert f.read(4) == b"FORM"
        self.total_size = struct.unpack(">L", f.read(4))

        typebuf = f.read(4)
        assert typebuf in (b"AIFF", b"AIFC")
        self.is_aifc = typebuf == b"AIFC"

        #Scan chunks and map
        offset = 12

        while True:
            magicno = f.read(4)
            if not magicno or len(magicno) < 4:
                break
            secmagic = magicno.decode('utf-8')
            secsize, = struct.unpack(">L", f.read(4))
            offset += 8
            if secmagic == "APPL":
                self.appl_sections.append((offset, secsize))
            else:
                self.sections[secmagic] = offset, secsize
            f.seek(offset + secsize)
            offset += secsize

        f.close()

    def loadData(self, offset, size):
        with open(self.path, 'rb') as f:
            f.seek(offset)
            return f.read(size)

    def loadSectionData(self, magicno):
        section_loc = self.sections[magicno]
        if section_loc is None:
            return
        return self.loadData(section_loc[0], section_loc[1])

    def loadApplSectionData(self, idx):
        if idx < 0 or idx >= len(self.appl_sections):
            return
        section_loc = self.appl_sections[idx]
        if section_loc is None:
            return
        return self.loadData(section_loc[0], section_loc[1])

class AifcWriter:
    def __init__(self, out):
        self.out = out
        self.sections = []
        self.total_size = 0

    def add_section(self, tp, data):
        assert isinstance(tp, bytes)
        assert isinstance(data, bytes)
        self.sections.append((tp, data))
        self.total_size += align(len(data), 2) + 8

    def add_custom_section(self, tp, data):
        self.add_section(b"APPL", b"stoc" + self.pstring(tp) + data)

    def pstring(self, data):
        return bytes([len(data)]) + data + (b"" if len(data) % 2 else b"\0")

    def finish(self):
        # total_size isn't used, and is regularly wrong. In particular, vadpcm_enc
        # preserves the size of the input file...
        self.total_size += 4
        self.out.write(b"FORM" + struct.pack(">I", self.total_size) + b"AIFC")
        for (tp, data) in self.sections:
            self.out.write(tp + struct.pack(">I", len(data)))
            self.out.write(data)
            if len(data) % 2:
                self.out.write(b"\0")

#Util Functions 1
def tryStr2Num(val):
    try:
        return int(val)
    except:
        try:
            return float(val)
        except:
            return val

def loadSoundData(aif_path):
    aif_reader = AifReader(aif_path)
    snd_data = aif_reader.loadSectionData('SSND')

    if snd_data is None:
        #It SHOULD be SSND, but just in case, check for a CSND
        snd_data = aif_reader.loadSectionData('CSND')

    return snd_data

def toNote(note):
    tone = (note + 9) % 12
    octave = str(math.floor((((note + 9) / 12) + 1)))

    tone_str = {
        0: "C",
        1: "C♯",
        2: "D",
        3: "D♯",
        4: "E",
        5: "F",
        6: "F♯",
        7: "G",
        8: "G♯",
        9: "A",
        10: "A♯",
        11: "B"
    }.get(tone)

    return "{0}{1}".format(tone_str, octave)

def parseNoteName(noteName):
    #tone_str = noteName[0]
    #oct_str = noteName[1:]
    #if noteName[1] == '♯':
    #   tone_str = noteName[0:2]
    #   oct_str = noteName[2:]

    #This works if oct_str is never more than one digit/char
    tone_str = noteName[:-1]
    oct_str = noteName[-1:]

    tone = {
        'C' : 0,
        'C♯': 1,
        'D' : 2,
        'D♯': 3,
        'E' : 4,
        'F' : 5,
        'F♯': 6,
        'G' : 7,
        'G♯': 8,
        'A' : 9,
        'A♯': 10,
        'B' : 11,
    }.get(tone_str)

    #Returns the N64 note, which is MIDI - 21
    oct = int(oct_str) - 1
    return ((oct * 12) + tone) - 9

def toMedium(medium):
    return {
        0: "RAM",
        2: "Cartridge",
        3: "Disk Drive",
        "RAM": 0,
        "Cartridge": 2,
        "Disk Drive": 3
    }.get(medium)

def toCachePolicy(policy):
    return {
        0: "Permanent",
        1: "Persistent",
        2: "Temporary",
        3: "Any",
        4: "AnyNoSyncLoad",
        "Permanent" : 0,
        "Persistent" : 1,
        "Temporary" : 2,
        "Any" : 3,
        "AnyNoSyncLoad" : 4
    }.get(policy)

def toCodecID(codec):
    return {
        0: b"ADP9",
        1: b"HPCM",
        2: b"NONE",
        3: b"ADP5",
        4: b"RVRB",
        5: b"NONE",
        b"VAPC":0,
        b"ADP9":0,
        b"HPCM":1,
        b"NONE":2,
        b"ADP5":3,
        b"RVRB":4,
        b"NONE":5
    }.get(codec)

def toCodecName(codec):
    return {
        0: b"Nintendo ADPCM 9-byte frame format",
        1: b"Half-frame PCM",
        2: b"not compressed",
        3: b"Nintendo ADPCM 5-byte frame format",
        4: b"Nintendo Reverb format",
        5: b"not compressed"
    }.get(codec)

def parse_f80(data):
    exp_bits, mantissa_bits = struct.unpack(">HQ", data)
    sign_bit = exp_bits & 2 ** 15
    exp_bits ^= sign_bit
    sign = -1 if sign_bit else 1
    if exp_bits == mantissa_bits == 0:
        return sign * 0.0
    assert exp_bits != 0, "sample rate is a denormal"
    assert exp_bits != 0x7FFF, "sample rate is infinity/nan"
    mant = float(mantissa_bits) / 2 ** 63
    return sign * mant * pow(2, exp_bits - 0x3FFF)

def serialize_f80(num):
    num = float(num)
    f64, = struct.unpack(">Q", struct.pack(">d", num))
    f64_sign_bit = f64 & 2 ** 63
    if num == 0.0:
        if f64_sign_bit:
            return b"\x80" + b"\0" * 9
        else:
            return b"\0" * 10
    exponent = (f64 ^ f64_sign_bit) >> 52
    assert exponent != 0, "can't handle denormals"
    assert exponent != 0x7FF, "can't handle infinity/nan"
    exponent -= 1023
    f64_mantissa_bits = f64 & (2 ** 52 - 1)
    f80_sign_bit = f64_sign_bit << (80 - 64)
    f80_exponent = (exponent + 0x3FFF) << 64
    f80_mantissa_bits = 2 ** 63 | (f64_mantissa_bits << (63 - 52))
    f80 = f80_sign_bit | f80_exponent | f80_mantissa_bits
    return struct.pack(">HQ", f80 >> 64, f80 & (2 ** 64 - 1))

def align(val, al):
    return (val + (al - 1)) & -al

def padding16(val):
    mod16 = val & 0xF
    if mod16 > 0:
        return 16 - mod16
    return 0

#Audio Class Definitions
class PCMLoop:
    def __init__(self):
        self.start = -1
        self.end = -1
        self.count = 0
        self.predictorState = []
        self.addr = -1

    def parseFrom(self, input, baseOffset, offset, usedFontData):
        totalSize = 16
        self.start, self.end, self.count, originalLength = struct.unpack(">LLll", input[0:16])
        assert originalLength == 0
        if self.count != 0:
            self.predictorState = struct.unpack(">16h", input[16:])
            totalSize += 32
        usedFontData.append((self, baseOffset + offset, baseOffset + offset + totalSize))
        return totalSize

    def serializeTo(self, output):
        wcount = 16
        #Start and end are in sample frames, so just keep 32-bit regardless of target.
        output.write(struct.pack(">IIiI", self.start, self.end, self.count, 0))
        if self.count != 0:
            for i in range(16):
                output.write(struct.pack(">h", self.predictorState[i]))
                wcount += 2
        return wcount

    def loopsEqual(self, other):
        if other is None:
            return False
        if not isinstance(other, PCMLoop):
            return False
        if self.start != other.start:
            return False
        if self.end != other.end:
            return False
        if self.count != other.count:
            return False
        if self.count != 0:
            if self.predictorState != other.predictorState:
                return False
        return True

class PCMBook:
    def __init__(self):
        self.order = 0
        self.predictorCount = 0
        self.predictors = []
        self.addr = -1

    def entryCount(self):
        return self.order * self.predictorCount * 8

    def calculatePadding(self):
        totalSize = 8 + (self.entryCount() * 2)
        padding = 16 - (totalSize % 16)
        if padding > 15:
            padding = 0
        return padding

    def parseFrom(self, input, baseOffset, offset, usedData):
        totalSize = 8
        self.order, self.predictorCount = struct.unpack(">LL", input[0:8])
        self.predictors = []
        predictorSize = self.order * 8
        predictorBytes = predictorSize * 2
        usedData.append(
            (self,
             baseOffset + offset,
             baseOffset + offset + 8 + (predictorSize * self.predictorCount * 2)))

        for _ in range(self.predictorCount):
            self.predictors.append(struct.unpack(f">{predictorSize}h", input[totalSize:totalSize + predictorBytes]))
            totalSize += predictorBytes

        return totalSize

    def serializeTo(self, output):
        wcount = 8
        output.write(struct.pack(">LL", self.order, self.predictorCount))
        predictorSize = self.order * 8
        for i in range(self.predictorCount):
            for j in range(predictorSize):
                output.write(struct.pack(">h", self.predictors[i][j]))
                wcount += 2
        return wcount

    def booksEqual(self, other):
        if other is None:
            return False
        if not isinstance(other, PCMBook):
            return False
        if self.predictorCount != other.predictorCount:
            return False
        if self.order != other.order:
            return False

        predictorSize = self.order * 8
        for i in range(self.predictorCount):
            for j in range(predictorSize):
                if self.predictors[i][j] != other.predictors[i][j]:
                    return False
        return True

class SampleHeader:
    def __init__(self):
        self.codec = 0
        self.medium = 0
        self.bank = 0
        self.u2 = 0
        self.length = 0
        self.offsetInBank = -1
        self.loopOffset = -1
        self.bookOffset = -1
        self.loop = None
        self.book = None
        self.addr = -1
        self.name = ''
        self.idx = -1

        #Storage for reading aiff/aifc
        self.tuning = 1.0
        self.frameCount = 0
        self.fileName = ''

    def updateReferences(self):
        if self.loop is not None:
            self.loopOffset = self.loop.addr
        if self.book is not None:
            self.bookOffset = self.book.addr

    def parseFrom(self, datafile, input, name, banks, baseOffset, offset, tuning, usedData):
        modes, self.u2, self.length, self.offsetInBank, self.loopOffset, self.bookOffset = struct.unpack(">bbHLLL", input)

        self.name = f"SampleHeader{offset:0>8x}"
        self.offset = baseOffset + offset
        self.codec = (modes >> 4) & 0xF
        assert self.codec == 0 or self.codec == 3

        bankIndex = (modes & 0xC) >> 2
        self.bank = banks[bankIndex]
        self.tuning = tuning
        assert bankIndex == 0 or bankIndex == 1

        assert self.length % 2 == 0

        usedData.append((self, baseOffset + offset, baseOffset + offset + 16))

        blockSize = 9

        if self.codec == 3:
            blockSize = 5

        if self.length % blockSize != 0:
            self.length -= self.length % blockSize

        self.loop = None
        if self.loopOffset != 0:
            self.loop = PCMLoop()
            self.loop.parseFrom(datafile[self.loopOffset:self.loopOffset + 48], baseOffset, self.loopOffset, usedData)

        self.book = None
        if self.bookOffset != 0:
            self.book = PCMBook()
            maxOffset = min(self.bookOffset + 400, len(datafile))
            self.book.parseFrom(datafile[self.bookOffset:maxOffset], baseOffset, self.bookOffset, usedData)

        return 16

    def updateSize(self):
        blockSize = 9
        if self.codec == 3:
            blockSize = 5

        #Okay so the frame count is calculated weird.
        #To get the original data length, looks like we gotta reverse it.
        self.length = (self.frameCount * blockSize) // 16
        if self.length % 2 != 0:
            self.length += 1

    def loadInfoFromAif(self, aif_path):
        aif_reader = AifReader(aif_path)
        comm_data = aif_reader.loadSectionData('COMM')

        self.frameCount, = struct.unpack('>L', comm_data[2:6])
        sample_rate = parse_f80(comm_data[8:18])
        if aif_reader.is_aifc:
            self.codec = toCodecID(comm_data[18:22])

        #Default loop (non-loop)
        self.loop = PCMLoop()
        self.loop.start = 0
        self.loop.end = self.frameCount
        self.loop.count = 0

        #Go thru appl sections to get book and loop data
        #Read pstr to determine what it is...
        for i in range(len(aif_reader.appl_sections)):
            appl_data = aif_reader.loadApplSectionData(i)
            strlen = appl_data[4]
            strdat = appl_data[5:5+strlen]
            if strdat == b'VADPCMCODES':
                #Code table
                self.book = PCMBook()
                bookpos = 18
                self.book.order, self.book.predictorCount = struct.unpack(">HH", appl_data[bookpos:bookpos+4])
                bookpos += 4
                predictorSize = self.book.order * 8
                predictorBytes = predictorSize * 2
                for _ in range(self.book.predictorCount):
                    self.book.predictors.append(struct.unpack(">" + str(predictorSize) + "h", appl_data[bookpos:(bookpos+predictorBytes)]))
                    bookpos += predictorBytes
            elif strdat == b'VADPCMLOOPS':
                #Loop data
                looppos = 20
                self.loop.start, self.loop.end, self.loop.count = struct.unpack(">LLl", appl_data[looppos:looppos+12])
                looppos += 12
                if self.loop.count != 0:
                    self.loop.predictorState = struct.unpack(">16h", appl_data[looppos:looppos+32])

        #Scale sample rate
        self.tuning = sample_rate/32000.0

        self.updateSize()

    def serializeTo(self, output):
        self.updateReferences()
        modes = (self.codec & 0xF) << 4
        modes |= (self.medium & 0x3) << 2
        output.write(struct.pack(">bbHIII", modes, self.u2, self.length, self.offsetInBank, self.loopOffset, self.bookOffset))
        return 16

    def toXML(self, root, bankNames, sampleNames):
        return XmlTree.SubElement(root, "Sample", {
            "Name": self.name,
            "File": f"{sampleNames[self.bank][self.offsetInBank]}.aifc",
            "Bank": bankNames[self.bank]
        })

class Envelope:
    def __init__(self):
        self.name = ""
        self.script = []
        self.referencedScripts = {}
        self.addr = -1

    def parseFrom(self, datafile, baseOffset, offset, usedData):
        advanceOffset = offset
        i = 0
        self.name = f"Env_{offset:0>8x}"
        self.script = []
        self.referencedScripts = []

        while True:
            key, value = struct.unpack(">hH", datafile[advanceOffset : advanceOffset + 4])
            if key == 0 and value != 0:
                break
            elif key == -1 and value != 0:
                break
            elif key == -2:
                if value == 0:
                    break
                else:
                    if value < offset or value > advanceOffset + 0x20:
                        ref_env = Envelope()
                        ref_env.parseFrom(datafile, baseOffset, value, usedData)
                        self.referencedScripts.append(ref_env)
                    self.script.append(("ADSR_GOTO", value))
            elif key == -3 and value != 0:
                break
            elif key > 0 and value > 32767:
                break
            else:
                cmd = key
                cmd = {
                    0: "ADSR_DISABLE",
                    -1: "ADSR_HANG",
                    -3: "ADSR_RESTART"
                }.get(cmd, cmd)
                self.script.append((cmd, value))
                if key == -1 or key == -3:
                    break

            advanceOffset += 4
            i += 1

        if len(self.script) == 0:
            raise Exception("Not a valid envelope script")

        usedData.append((self, baseOffset + offset, baseOffset + advanceOffset + 4))
        return advanceOffset - offset

    def serialSize(self):
        return len(self.script) * 4

    def serializeTo(self, output):
        if len(self.script) == 0:
            raise Exception("Not a valid envelope script")
        mysize = 0
        i = 0
        last = False
        for script_element in self.script:
            cmd = script_element[0]
            val = script_element[1]

            if isinstance(cmd, str):
                cmd = {
                    "ADSR_DISABLE": 0,
                    "ADSR_HANG": -1,
                    "ADSR_GOTO": -2,
                    "ADSR_RESTART": -3,
                }.get(cmd)

            if cmd == -2:
                #Update link.
                val = self.referencedScripts[i]
                if isinstance(val, Envelope):
                    val = val.addr
                if val == 0:
                    break
            elif cmd == -1 or cmd == -3:
                if val != 0:
                    break
                last = True
            elif cmd > 0 and val > 32767:
                break

            output.write(struct.pack(">hH", cmd, val))

            i += 1
            mysize += 4

            if last:
                break

        return mysize

    def fromXML(self, xml_element):
        self.script = []
        self.referencedScripts = {}
        if xml_element is None:
            return

        self.name = xml_element.get("Name")
        e_script = xml_element.find("Script")
        if e_script is None:
            return

        elist_points = e_script.findall("Point")
        if elist_points is None:
            return

        for e_point in elist_points:
            first = e_point.get("Delay")
            second = e_point.get("Value")

            #Try to convert to numbers
            first = tryStr2Num(first)
            second = tryStr2Num(second)

            self.script.append((first, second))

    def toXML(self, root):
        envelopeRoot = XmlTree.SubElement(root, "Envelope", { "Name": self.name })

        script = XmlTree.SubElement(envelopeRoot, "Script")

        [XmlTree.SubElement(script, "Point", { "Delay": str(x[0]), "Value": str(x[1]) }) for x in self.script]

        return envelopeRoot

class SoundEffect:
    def __init__(self):
        self.name = ''
        self.enum = ''
        self.pitch = 1.0
        self.sample = None
        self.addr = -1
        self.idx = -1

        self.headerOffset = -1 #Offset of sample info in font
        self.sampleName = ''

    def parseFrom(self, datafile, input, effectdef, banks, baseOffset, offset, index, usedFontData):
        self.idx = index
        self.offset = offset
        if effectdef:
            self.name = effectdef.name or f"Effect_{offset:0>8x}"
            self.enum = effectdef.enum
        else:
            self.name = f"Effect_{offset:0>8x}"
            self.enum = ""
        self.headerOffset, self.pitch = struct.unpack(">Lf", input)
        usedFontData.append((self, baseOffset + offset, baseOffset + offset + 8))
        self.sample = SampleHeader()
        self.sample.parseFrom(datafile, datafile[self.headerOffset:self.headerOffset + 16], self.name, banks, baseOffset, self.headerOffset, self.pitch, usedFontData)

    def serializeTo(self, output):
        if self.sample is not None:
            self.headerOffset = self.sample.addr
        output.write(struct.pack(">If", self.headerOffset, self.pitch))
        return 8

    def fromXML(self, xml_element):
        if xml_element is None:
            return

        self.name = xml_element.get("Name")
        self.enum = xml_element.get("Enum")
        self.sampleName = xml_element.get("Sample")
        if self.sampleName is not None:
            if self.sampleName.endswith(".aifc"):
                self.sampleName = self.sampleName[:-5]

        pitch_str = xml_element.get("Pitch")
        if pitch_str is not None:
            self.pitch = float(pitch_str)
        else:
            self.pitch = -1.0

        idx_str = xml_element.get("Index")
        if idx_str is not None:
            self.idx = int(idx_str)

    def toXML(self, root, samples, sampleNames, tunings):
        element = XmlTree.SubElement(root, "SoundEffect")

        element.set("Name", self.name or f"Effect_{self.offset:0>8x}")
        element.set("Index", str(self.idx))
        element.set("Enum", self.enum or "")
        element.set("Sample", f"{sampleNames[self.sample.bank][self.sample.offsetInBank]}.aifc")
        samples[self.sample.name] = self.sample

        if self.pitch != tunings[self.sample.bank][self.sample.offsetInBank]:
            element.set("Pitch", str(self.pitch))

        return element

class Percussion:
    def __init__(self):
        self.name = ''
        self.enum = ''
        self.decay = 200
        self.pan = 64
        self.loaded = 0
        self.pitch = 1.0
        self.sample = None
        self.envelope = None
        self.addr = -1
        self.idx = -1

        self.sampleName = ''
        self.envName = ''
        self.headerOffset = -1
        self.envelopeOffset = -1

    def parseFrom(self, datafile, input, drumdef, banks, baseOffset, offset, index, usedFontData):
        self.idx = index
        self.offset = offset
        if drumdef:
            self.name = drumdef.name or f"Drum_{offset:0>8x}"
            self.enum = drumdef.enum
        else:
            self.name = f"Drum_{offset:0>8x}"
            self.enum = ""
        self.decay, self.pan, self.loaded, self.headerOffset, self.pitch, self.envelopeOffset = struct.unpack(">bbBxLfL", input)
        assert self.loaded == 0
        usedFontData.append((self, baseOffset + offset, baseOffset + offset + 16))
        self.sample = SampleHeader()
        self.sample.parseFrom(datafile, datafile[self.headerOffset:self.headerOffset + 16], self.name, banks, baseOffset, self.headerOffset, self.pitch, usedFontData)
        self.envelope = Envelope()
        self.envelope.parseFrom(datafile, baseOffset, self.envelopeOffset, usedFontData)

    def serializeTo(self, output):
        if self.sample is not None:
            self.headerOffset = self.sample.addr
        if self.envelope is not None:
            self.envelopeOffset = self.envelope.addr
        output.write(struct.pack(">bbBxIfI", self.decay, self.pan, self.loaded, self.headerOffset, self.pitch, self.envelopeOffset))
        return 16

    def fromXML(self, xml_element):
        if xml_element is None:
            return

        self.name = xml_element.get("Name")
        self.enum = xml_element.get("Enum")
        self.envName = xml_element.get("Envelope")
        self.sampleName = xml_element.get("Sample")
        if self.sampleName is not None:
            if self.sampleName.endswith(".aifc"):
                self.sampleName = self.sampleName[:-5]

        pitch_str = xml_element.get("Pitch")
        if pitch_str is not None:
            self.pitch = float(pitch_str)
        else:
            self.pitch = -1.0
        decay_str = xml_element.get("Decay")
        if decay_str is not None:
            self.decay = int(decay_str)
        pan_str = xml_element.get("Pan")
        if pan_str is not None:
            self.pan = int(pan_str)
        idx_str = xml_element.get("Index")
        if idx_str is not None:
            self.idx = int(idx_str)

    def toXML(self, root, samples, envelopes, sampleNames, tunings):
        drumElement = XmlTree.SubElement(root, "Drum")

        drumElement.set("Name", self.name or f"Drum_{self.offset:0>8x}")
        drumElement.set("Index", str(self.idx))
        drumElement.set("Enum", self.enum or "")
        drumElement.set("Decay", str(self.decay))
        drumElement.set("Pan", str(self.pan))
        drumElement.set("Sample", f"{sampleNames[self.sample.bank][self.sample.offsetInBank]}.aifc")
        samples[self.sample.name] = self.sample
        drumElement.set("Envelope", self.envelope.name)
        envelopes[self.envelope.name] = self.envelope

        if self.pitch != tunings[self.sample.bank][self.sample.offsetInBank]:
            drumElement.set("Pitch", str(self.pitch))

        return drumElement

class Instrument:
    def __init__(self):
        self.name = ""
        self.enum = ""
        self.decay = 0
        self.loaded = 0
        self.lowRange = 0
        self.highRange = 127
        self.keyLowPitch = -1.0 #Marks to match sound sample
        self.keyMedPitch = -1.0
        self.keyHighPitch = -1.0
        self.keyLowSample = None
        self.keyMedSample = None
        self.keyHighSample = None
        self.envelope = None
        self.addr = -1
        self.idx = -1

        self.keyLowOffset = -1
        self.keyMedOffset = -1
        self.keyHighOffset = -1
        self.envelopeOffset = -1
        self.keyLowName = ''
        self.keyMedName = ''
        self.keyHighName = ''
        self.envName = ''

    def updateReferences(self):
        if self.keyLowSample is not None:
            self.keyLowOffset = self.keyLowSample.addr
        if self.keyMedSample is not None:
            self.keyMedOffset = self.keyMedSample.addr
        if self.keyHighSample is not None:
            self.keyHighOffset = self.keyHighSample.addr
        if self.envelope is not None:
            self.envelopeOffset = self.envelope.addr

    def getSamples(self):
        samples = []
        if self.keyLowSample:
            samples.append(self.keyLowSample)
        if self.keyMedSample:
            samples.append(self.keyMedSample)
        if self.keyHighSample:
            samples.append(self.keyHighSample)
        return samples

    def parseFrom(self, datafile, input, fontname, instdef, banks, baseOffset, offset, index, usedFontData):
        self.idx = index
        self.offset = offset
        if instdef:
            self.name = instdef.name or f"Inst_{index}_{offset:0>8x}_{fontname}"
            self.enum = instdef.enum
        else:
            self.name = f"Inst_{index}_{offset:0>8x}_{fontname}"
            self.enum = ""
        self.loaded, self.lowRange, self.highRange, self.decay, self.envelopeOffset, self.keyLowOffset, self.keyLowPitch, self.keyMedOffset, self.keyMedPitch, self.keyHighOffset, self.keyHighPitch = struct.unpack(">BBBbLLfLfLf", input)
        assert self.loaded == 0
        usedFontData.append((self, baseOffset + offset, baseOffset + offset + 32))
        self.envelope = Envelope()
        self.envelope.parseFrom(datafile, baseOffset, self.envelopeOffset, usedFontData)
        self.keyLowSample = None if self.keyLowOffset == 0 else SampleHeader()
        if self.keyLowSample:
            self.keyLowSample.parseFrom(datafile, datafile[self.keyLowOffset:self.keyLowOffset + 16], self.name, banks, baseOffset, self.keyLowOffset, self.keyLowPitch, usedFontData)
        self.keyMedSample = None if self.keyMedOffset == 0 else SampleHeader()
        if self.keyMedSample:
            self.keyMedSample.parseFrom(datafile, datafile[self.keyMedOffset:self.keyMedOffset + 16], self.name, banks, baseOffset, self.keyMedOffset, self.keyMedPitch, usedFontData)
        self.keyHighSample = None if self.keyHighOffset == 0 else SampleHeader()
        if self.keyHighSample:
            self.keyHighSample.parseFrom(datafile, datafile[self.keyHighOffset:self.keyHighOffset + 16], self.name, banks, baseOffset, self.keyHighOffset, self.keyHighPitch, usedFontData)

    def serializeTo(self, output):
        self.updateReferences()
        output.write(struct.pack("BBBb", self.loaded, self.lowRange, self.highRange, self.decay))
        if self.envelope is None:
            output.write(struct.pack("4x"))
        else:
            output.write(struct.pack(">I", self.envelopeOffset))

        if self.keyLowSample is None:
            output.write(struct.pack("8x"))
        else:
            output.write(struct.pack(">If", self.keyLowOffset, self.keyLowPitch))
        if self.keyMedSample is None:
            output.write(struct.pack("8x"))
        else:
            output.write(struct.pack(">If", self.keyMedOffset, self.keyMedPitch))
        if self.keyHighSample is None:
            output.write(struct.pack("8x"))
        else:
            output.write(struct.pack(">If", self.keyHighOffset, self.keyHighPitch))

        return 32

    def fromXML(self, xml_element):
        if xml_element is None:
            return

        self.name = xml_element.get("Name")
        self.enum = xml_element.get("Enum")
        self.envName = xml_element.get("Envelope")

        pitch_str = xml_element.get("Pitch")
        if pitch_str is not None:
            self.pitch = float(pitch_str)
        decay_str = xml_element.get("Decay")
        if decay_str is not None:
            self.decay = int(decay_str)
        idx_str = xml_element.get("Index")
        if idx_str is not None:
            self.idx = int(idx_str)

        e_key = xml_element.find("LowKey")
        if e_key is not None:
            self.keyLowName = e_key.get("Sample")
            if self.keyLowName is not None:
                if self.keyLowName.endswith(".aifc"):
                    self.keyLowName = self.keyLowName[:-5]
            note_str = e_key.get("MaxNote")
            if note_str is not None:
                self.lowRange = parseNoteName(note_str)
            else:
                self.lowRange = 0
            pitch_str = e_key.get("Pitch")
            if pitch_str is not None:
                self.keyLowPitch = float(pitch_str)
            else:
                self.keyLowPitch = -1.0
        else:
            self.lowRange = 0
            self.keyLowPitch = 0.0
            self.keyLowSample = None
            self.keyLowName = ''

        e_key = xml_element.find("MediumKey")
        if e_key is not None:
            self.keyMedName = e_key.get("Sample")
            if self.keyMedName is not None:
                if self.keyMedName.endswith(".aifc"):
                    self.keyMedName = self.keyMedName[:-5]
            pitch_str = e_key.get("Pitch")
            if pitch_str is not None:
                self.keyMedPitch = float(pitch_str)
            else:
                self.keyMedPitch = -1.0
        else:
            self.keyMedPitch = 0.0
            self.keyMedSample = None
            self.keyMedName = ''

        e_key = xml_element.find("HighKey")
        if e_key is not None:
            self.keyHighName = e_key.get("Sample")
            if self.keyHighName is not None:
                if self.keyHighName.endswith(".aifc"):
                    self.keyHighName = self.keyHighName[:-5]
            note_str = e_key.get("MinNote")
            if note_str is not None:
                self.highRange = parseNoteName(note_str)
            else:
                self.highRange = 127
            pitch_str = e_key.get("Pitch")
            if pitch_str is not None:
                self.keyHighPitch = float(pitch_str)
            else:
                self.keyHighPitch = -1.0
        else:
            self.highRange = 0
            self.keyHighPitch = 0.0
            self.keyHighSample = None
            self.keyHighName = ''

    def toXML(self, root, samples, envelopes, sampleNames, tunings):
        element = XmlTree.SubElement(
            root,
            "Instrument",
            {
                "Name": self.name or f"Inst_{self.offset:0>8x}",
                "Index": str(self.idx),
                "Enum": self.enum or "",
                "Decay": str(self.decay),
                "Envelope": self.envelope.name
            }
        )

        lowKeyElement = XmlTree.SubElement(element, "LowKey")
        medKeyElement = XmlTree.SubElement(element, "MediumKey")
        hiKeyElement = XmlTree.SubElement(element, "HighKey")

        if self.keyLowSample is not None:
            keyLow = self.keyLowSample
            samples[keyLow.name] = keyLow
            lowKeyElement.set("Sample", f"{sampleNames[keyLow.bank][keyLow.offsetInBank]}.aifc")
            lowKeyElement.set("MaxNote", toNote(self.lowRange))
            if self.keyLowPitch != tunings[keyLow.bank][keyLow.offsetInBank]:
                lowKeyElement.set("Pitch", str(self.keyLowPitch))
        if self.keyMedSample is not None:
            keyMed = self.keyMedSample
            samples[keyMed.name] = keyMed
            medKeyElement.set("Sample", f"{sampleNames[keyMed.bank][keyMed.offsetInBank]}.aifc")
            if self.keyMedPitch != tunings[keyMed.bank][keyMed.offsetInBank]:
                medKeyElement.set("Pitch", str(self.keyMedPitch))
        if self.keyHighSample is not None:
            keyHigh = self.keyHighSample
            samples[keyHigh.name] = keyHigh
            hiKeyElement.set("Sample", f"{sampleNames[keyHigh.bank][keyHigh.offsetInBank]}.aifc")
            hiKeyElement.set("MinNote", toNote(self.highRange))
            if self.keyHighPitch != tunings[keyHigh.bank][keyHigh.offsetInBank]:
                hiKeyElement.set("Pitch", str(self.keyHighPitch))

        envelopes[self.envelope.name] = self.envelope

        return element

class UnusedData:
    def __init__(self, offset, data):
        self.offset = offset
        self.data = data

class SampleTableEntry:
    def __init__(self, name):
        self.name = name
        self.index = -1
        self.offset = -1
        self.length = 0
        self.medium = 2
        self.cache = 4

    def parseFrom(self, input):
        self.offset, self.length, self.medium, self.cache = struct.unpack(">LLBB6x", input)

    def serializeTo(self, output):
        output.write(struct.pack(">LLBB6x", self.offset, self.length, self.medium, self.cache))

class SoundfontEntry:
    def __init__(self):
        self.offset = -1
        self.length = 0
        self.medium = 2
        self.cache = 4
        self.bank = -1
        self.bank2 = -1
        self.instrumentCount = 0
        self.percussionCount = 0
        self.effectCount = 0

    def parseFrom(self, input):
        self.offset, self.length, self.medium, self.cache, self.bank, self.bank2, self.instrumentCount, self.percussionCount, self.effectCount = struct.unpack(">LLBBbbBBH", input)

    def serializeTo(self, output):
        output.write(struct.pack(">LLBBbbBBH", self.offset, self.length, self.medium, self.cache, self.bank, self.bank2, self.instrumentCount, self.percussionCount, self.effectCount))

    def serialize(self):
        return self.offset, self.length, self.medium, self.cache, self.bank * 256 + (self.bank2 % 256), self.instrumentCount * 256 + self.percussionCount, self.effectCount

class Soundfont:
    def __init__(self):
        self.name = ''
        self.symbol = None
        self.idx = -1
        self.medium = 2
        self.cachePolicy = 2
        self.offset = -1
        self.length = -1

        self.bank1 = None
        self.bank2 = None
        self.bankOverride = None
        self.bankNames = []
        self.bankIdx1 = -1
        self.bankIdx2 = -1

        self.instruments = []
        self.percussion = []
        self.soundEffects = []
        self.unused = []
        self.envelopes = {}

        self.inst_read = 0
        self.perc_read = 0
        self.sfx_read = 0

        self.instIdxLookup = {}
        self.percIdxLookup = {}
        self.sfxIdxLookup = {}

        #Needed only for matching (optional)
        #List of samples in order appearing in font bin.
        self.sampleOrder = [] #List of tuples (block name, file name (w/o ext))
        self.unusedDat = {}
        self.apparent_banks = []
        self.apparent_bank = -1

    def getAllEnvelopes(self):
        elist = []
        for item in self.envelopes.items():
            elist.append(item[1])
        return elist

    def slotCount(read_val, lookup_map, block_list):
        if len(lookup_map) < 1:
            return read_val
        keyz = sorted(lookup_map.keys(), reverse=True)
        max_used = keyz[0] + 1
        empty_exp = read_val - len(block_list)
        if empty_exp <= 0:
            return max_used
        empty_ct = 0
        for i in range(max_used):
            if not i in lookup_map:
                empty_ct += 1
        return max_used + (empty_exp - empty_ct)

    def instSlotCount(self):
        return Soundfont.slotCount(self.inst_read, self.instIdxLookup, self.instruments)

    def percSlotCount(self):
        return Soundfont.slotCount(self.perc_read, self.percIdxLookup, self.percussion)

    def sfxSlotCount(self):
        return Soundfont.slotCount(self.sfx_read, self.sfxIdxLookup, self.soundEffects)

    def getSamples(self):
        samples = []
        [samples.extend(instrument.getSamples()) for instrument in self.instruments if type(instrument) is not int]
        [samples.append(drum.sample) for drum in self.percussion if type(drum) is not int]
        [samples.append(effect.sample) for effect in self.soundEffects if type(effect) is not int]
        return samples

    def parseFrom(self, entry, datafile, fontdef, usedFontData):
        self.name = fontdef.name if fontdef else f"Font_{entry.offset:0>8x}"
        self.symbol = fontdef.symbol
        self.idx = int(fontdef.index)
        self.bankOverride = int(fontdef.bankOverride) if fontdef.bankOverride else None
        self.medium = entry.medium
        self.cachePolicy = entry.cache
        self.bankIdx1 = entry.bank
        self.bankIdx2 = entry.bank2
        self.offset = entry.offset
        self.length = entry.length

        banks = [int(self.bankOverride)] if self.bankOverride else [self.bankIdx1, self.bankIdx2]

        endOffset = entry.offset + 8
        percussionOffset, effectsOffset = struct.unpack(">LL", datafile[entry.offset:endOffset])
        instrumentOffsets = []
        if entry.instrumentCount != 0:
            newEndOffset = endOffset + (entry.instrumentCount * 4)
            instrumentOffsets = struct.unpack(f">{entry.instrumentCount}L", datafile[endOffset:newEndOffset])
            endOffset = newEndOffset

        usedFontData.append((self, entry.offset, endOffset))

        setData = datafile[entry.offset:]
        percussionTable = setData[percussionOffset:]
        effectsTable = setData[effectsOffset:]

        if entry.instrumentCount > 0:
            instIdx = 0
            for offset in instrumentOffsets:
                instdef = None
                if fontdef:
                    instdef = fontdef.instruments[instIdx] if instIdx < len(fontdef.instruments) else None
                buffer = setData[offset:offset + 32]
                instrument = instIdx if offset == 0 else Instrument()
                if type(instrument) is Instrument:
                    instrument.parseFrom(setData, buffer, self.name, instdef, banks, entry.offset, offset, instIdx, usedFontData)
                self.instruments.append(instrument)
                instIdx += 1

        if entry.effectCount > 0:
            for i in range(entry.effectCount):
                effectdef = None
                if fontdef:
                    effectdef = fontdef.effects[i] if i < len(fontdef.effects) else None
                buffer = effectsTable[i * 8:(i * 8) + 8]
                offset = struct.unpack(">L", buffer[0:4])[0]
                effect = i if offset == 0 else SoundEffect()
                if type(effect) is SoundEffect:
                    effect.parseFrom(setData, buffer, effectdef, banks, entry.offset, effectsOffset + (i * 8), i, usedFontData)
                self.soundEffects.append(effect)

        if entry.percussionCount > 0:
            usedFontData.append((self, entry.offset + percussionOffset, entry.offset + percussionOffset + (entry.percussionCount * 4)))
            percussionsOffsets = struct.unpack(f">{entry.percussionCount}L", percussionTable[:entry.percussionCount * 4])
            for i in range(entry.percussionCount):
                drumdef = None
                if fontdef:
                    drumdef = fontdef.drums[i] if i < len(fontdef.drums) else None
                offset = percussionsOffsets[i]
                percussion = i if offset == 0 else Percussion()
                if type(percussion) is Percussion:
                    percussion.parseFrom(setData, setData[offset:offset + 16], drumdef, banks, entry.offset, offset, i, usedFontData)
                self.percussion.append(percussion)

        self.instruments = sorted(self.instruments, key=lambda i: i if type(i) is int else i.offset)
        self.percussion = sorted(self.percussion, key=lambda d: d if type(d) is int else d.offset)
        self.soundEffects = sorted(self.soundEffects, key=lambda x: x if type(x) is int else x.offset)

    def fromXML(self, xml_element):
        #Read font attr
        med_str = xml_element.get("Medium")
        cache_str = xml_element.get("CachePolicy")
        self.symbol = xml_element.get("Symbol")
        if med_str is not None:
            self.medium = toMedium(med_str)
        if cache_str is not None:
            self.cachePolicy = toCachePolicy(cache_str)

        #Read bank names
        e_banks = xml_element.find("SampleBanks")
        e_list_bank = e_banks.findall("Bank")

        for e_bank in e_list_bank:
            self.bankNames.append(e_bank.get("Name"))

        #See if there's a funky bank override
        e_banks = xml_element.find("ForceSampleBank")
        if e_banks:
            self.apparent_banks = self.bankNames
            self.bankNames = []
            e_list_bank = e_banks.findall("Bank")
            for e_bank in e_list_bank:
                self.bankNames.append(e_bank.get("Name"))

        #Read envelopes
        e_envelopes = xml_element.find("Envelopes")
        if e_envelopes is not None:
            e_env_list = e_envelopes.findall("Envelope")
            for e_env in e_env_list:
                env = Envelope()
                env.fromXML(e_env)
                self.envelopes[env.name] = env

        #resolve env references
        env_list = self.getAllEnvelopes()
        for env in env_list:
            for script in env.script:
                cmd = script[0]
                if cmd == "ADSR_GOTO" or cmd == -2:
                    val = script[1]
                    if val is not None:
                        refscript = self.envelopes[val]
                        env.referencedScripts[val] = refscript

        #Read SFX
        use_idx_field = True
        e_soundeffects = xml_element.find("SoundEffects")
        if e_soundeffects is not None:
            e_sfx_list = e_soundeffects.findall("SoundEffect")
            if e_sfx_list is not None:
                for e_sfx in e_sfx_list:
                    self.sfx_read += 1
                    sfx = SoundEffect()
                    sfx.fromXML(e_sfx)
                    if sfx.sampleName is not None:
                        self.soundEffects.append(sfx)
                        if (not use_idx_field) or (sfx.idx < 0):
                            #If indices are missed once, they are hereby ignored (for now)
                            use_idx_field = False
                            sfx.idx = self.sfx_read - 1
                        self.sfxIdxLookup[sfx.idx] = sfx

        #Read Percussion
        use_idx_field = True
        e_drums = xml_element.find("Drums")
        if e_drums is not None:
            e_drum_list = e_drums.findall("Drum")
            if e_drum_list is not None:
                for e_drum in e_drum_list:
                    self.perc_read += 1
                    drum = Percussion()
                    drum.fromXML(e_drum)
                    if drum.sampleName is not None:
                        self.percussion.append(drum)
                        #Find envelope
                        if drum.envName:
                            drum.envelope = self.envelopes[drum.envName]
                        if (not use_idx_field) or (drum.idx < 0):
                            #If indices are missed once, they are hereby ignored (for now)
                            use_idx_field = False
                            drum.idx = self.perc_read - 1
                        self.percIdxLookup[drum.idx] = drum

        #Read Instruments
        use_idx_field = True
        e_insts = xml_element.find("Instruments")
        if e_insts is not None:
            e_inst_list = e_insts.findall("Instrument")
            if e_inst_list is not None:
                for e_inst in e_inst_list:
                    self.inst_read += 1
                    inst = Instrument()
                    inst.fromXML(e_inst)
                    if inst.keyMedName:
                        self.instruments.append(inst)
                        #Find envelope
                        if inst.envName:
                            inst.envelope = self.envelopes[inst.envName]
                        if (not use_idx_field) or (inst.idx < 0):
                            #If indices are missed once, they are hereby ignored (for now)
                            use_idx_field = False
                            inst.idx = self.inst_read - 1
                        self.instIdxLookup[inst.idx] = inst

        #Read samples (if present)
        e_samps = xml_element.find("Samples")
        if e_samps is not None:
            e_samp_list = e_samps.findall("Sample")
            for e_samp in e_samp_list:
                sname = e_samp.get("Name")
                sfile = e_samp.get("File")
                if sfile.endswith(".aifc"):
                    sfile = sfile[:-5]
                self.sampleOrder.append((sname,sfile))

        #Unused block (if present)
        e_unused = xml_element.find("Unused")
        if e_unused is not None:
            e_data_list = e_unused.findall("Data")
            if e_data_list:
                for e_data in e_data_list:
                    data_offset = int(e_data.get("Offset"))
                    data_text = e_data.text
                    text_split = data_text.split(',')
                    data_list = []
                    for b in text_split:
                        data_list.append(int(b, 16))
                    self.unusedDat[data_offset] = data_list

    def toXML(self, bankNames, sampleNames, tunings):
        samplesFound = {}
        envelopesFound = {}

        root = XmlTree.Element("Soundfont", {
            "Medium": toMedium(self.medium),
            "CachePolicy": toCachePolicy(self.cachePolicy)
        })

        if (self.symbol):
            root.attrib["Symbol"] = self.symbol

        banks = XmlTree.SubElement(root, "SampleBanks")
        XmlTree.SubElement(banks, "Bank", { "Name": bankNames[self.bankIdx1] })

        if self.bank2 and self.bank2 > -1:
            XmlTree.SubElement(banks, "Bank", { "Name": bankNames[self.bankIdx2] })

        if self.bankOverride:
            overrideBanks = XmlTree.SubElement(root, "ForceSampleBank")
            XmlTree.SubElement(overrideBanks, "Bank", { "Name": bankNames[self.bankOverride] })

        instElements = XmlTree.SubElement(root, "Instruments")
        drumElements = XmlTree.SubElement(root, "Drums")
        effectElements = XmlTree.SubElement(root, "SoundEffects")
        envelopes = XmlTree.SubElement(root, "Envelopes")
        samples = XmlTree.SubElement(root, "Samples")
        unused = None

        nullInst = set([i for i in self.instruments if type(i) is int])
        nullDrum = set([d for d in self.percussion if type(d) is int])
        nullSfx = set([x for x in self.soundEffects if type(x) is int])

        realInst = [i for i in self.instruments if type(i) is Instrument]
        realDrum = [d for d in self.percussion if type(d) is Percussion]
        realSfx = [x for x in self.soundEffects if type(x) is SoundEffect]

        instruments = list(realInst)
        drums = list(realDrum)
        effects = list(realSfx)

        for i in nullInst:
            instruments.insert(i, None) if i < len(instruments) else instruments.append(None)
        for i in nullDrum:
            drums.insert(i, None) if i < len(drums) else drums.append(None)
        for i in nullSfx:
            effects.insert(i, None) if i < len(effects) else effects.append(None)

        [inst.toXML(instElements, samplesFound, envelopesFound, sampleNames, tunings) if inst is not None else XmlTree.SubElement(instElements, "Instrument") for inst in instruments]
        [drum.toXML(drumElements, samplesFound, envelopesFound, sampleNames, tunings) if drum is not None else XmlTree.SubElement(drumElements, "Drum") for drum in drums]
        [effect.toXML(effectElements, samplesFound, sampleNames, tunings) if effect is not None else XmlTree.SubElement(effectElements, "SoundEffect") for effect in effects]

        for item in self.unused:
            if isinstance(item, Envelope):
                envelopesFound[item.name] = item
            elif isinstance(item, UnusedData):
                if unused == None:
                    unused = XmlTree.SubElement(root, "Unused")
                unusedItem = XmlTree.SubElement(unused, "Data", { "Offset": str(item.offset) })
                bytes_to_str = ','.join([f"0x{x:0>x}" for x in item.data])
                unusedItem.text = bytes_to_str
        for name in envelopesFound:
            for referencedEnvelope in envelopesFound[name].referencedScripts:
                envelopesFound[referencedEnvelope.name] = referencedEnvelope

        envelopesFound = dict(sorted(envelopesFound.items()))
        samplesFound: dict[str, SampleHeader] = dict(sorted(samplesFound.items()))

        [envelope.toXML(envelopes) for _, envelope in envelopesFound.items()]
        [sample.toXML(samples, bankNames, sampleNames) for _, sample in samplesFound.items()]

        return root

    def getTableEntry(self):
        myentry = SoundfontEntry()

        myentry.bank = self.bankIdx1
        myentry.bank2 = self.bankIdx2
        myentry.medium = self.medium
        myentry.cache = self.cachePolicy

        myentry.instrumentCount = self.instSlotCount()
        myentry.percussionCount = self.percSlotCount()
        myentry.effectCount = self.sfxSlotCount()

        return myentry

class Soundbank:
    def __init__(self):
        self.samplesByName = {}
        self.samples = []
        self.name = ""
        self.idx = -1
        self.medium = 2
        self.cachePolicy = 4

    def calculateSize(self):
        mysize = 0
        for sample in self.samples:
            mysize += sample.length
            mysize = align(mysize, 16)
        return mysize

    def getSample(self, name):
        return self.samplesByName.get(name)

    def fromXML(self, xml_element):
        #Read attr
        med_str = xml_element.get("Medium")
        cache_str = xml_element.get("CachePolicy")
        if med_str is not None:
            self.medium = toMedium(med_str)
        if cache_str is not None:
            self.cachePolicy = toCachePolicy(cache_str)

#Common Functions
def loadBankDefTable(filepath):
    bankdeftbl = []
    with open(filepath, 'rb') as f:
        bankcount, = struct.unpack(">H", f.read(2))
        f.read(14)
        for i in range(bankcount):
            record = SampleTableEntry('audiotable_' + str(i))
            record.parseFrom(f.read(16))
            bankdeftbl.append(record)
    return bankdeftbl

def loadFontDefTable(filepath):
    fontdeftbl = []
    with open(filepath, 'rb') as f:
        fontcount, = struct.unpack(">H", f.read(2))
        f.read(14)
        for i in range(fontcount):
            record = SoundfontEntry()
            record.parseFrom(f.read(16))
            fontdeftbl.append(record)
    return fontdeftbl

def write_soundfont_define(font, fontcount, filename):
    width = int(math.log10(fontcount)) + 1
    index = str(font.idx).zfill(width)

    with open(filename, "w") as file:
        file.write("#   Soundfont file constants\n")
        file.write(f"#   ID: {font.idx}\n")
        file.write(f"#   Name: {font.name}\n")
        file.write("\n##### INSTRUMENTS #####\n")

        for instrument in font.instruments:
            if type(instrument) is int:
                continue

            file.write(f".define FONT{index}_INSTR_{instrument.enum} {instrument.idx}\n")

        file.write("\n##### DRUMS #####\n")
        for drum in font.percussion:
            if type(drum) is int:
                continue

            file.write(f".define FONT{index}_DRUM_{drum.enum} {drum.idx}\n")

        file.write("\n##### EFFECTS #####\n")
        for effect in font.soundEffects:
            if type(effect) is int:
                continue

            file.write(f".define FONT{index}_EFFECT_{effect.enum} {effect.idx}\n")
