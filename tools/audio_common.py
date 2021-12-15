#!/usr/bin/env python3

import xml.etree.ElementTree as XmlTree
import struct

#Audio Class Definitions
class PCMLoop:
    def __init__(self):
        self.start = -1
		self.end = -1
		self.count = 0
		self.predictorState = []
		self.addr = -1
		
	def parseFrom(self, input):
		mysize = 16
		self.start, self.end, self.count, unused = struct.unpack(">LLll", input[0:16])
		assert unused == 0
        if self.count != 0:
            self.predictorState = struct.unpack(">16h", record[16:])
            mysize += 32
		return mysize
		
	def serializeTo(self, output):
		wcount = 16
		output.write(struct.pack(">IIiI", self.start, self.end, self.count, 0))
		if self.count != 0:
			output.write(struct.pack(">16h", self.predictorState))
			wcount += 32
		return wcount
		
	def loopsEqual(self, other):
		if other is None:
			return False
		if !isinstance(other, PCMLoop):
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
		mysize = 8 + (self.entryCount() * 2)
		padding = 16 - (mysize % 16)
		if padding > 15:
			padding = 0
		return padding
		
	def parseFrom(self, input):
		mysize = 8
		self.order, self.predictorCount = struct.unpack(">LL", input)
		predictorSize = self.order * 8
		predictorBytes = predictorSize * 2
		for i in range(self.predictorCount):
            self.predictors.append(struct.unpack(">" + str(predictorSize) + "h", input[mysize:(mysize+predictorBytes)]))
			mysize += predictorBytes
		return mysize
		
	def serializeTo(self, output):
		wcount = 8
		output.write(struct.pack(">LL", self.order, self.predictorCount))
		predictorSize = self.order * 8
		for i in range(self.predictorCount):
			output.write(struct.pack(">" + str(predictorSize) + "h", self.predictors[i]))
			wcount += predictorSize * 2
		padding = 16 - (wcount % 16)
		if padding < 16:
			output.write(struct.pack(">" + str(padding) + "x"))
		return wcount
		
	def booksEqual(self, other):
		if other is None:
			return False
		if !isinstance(other, PCMBook):
			return False
		if self.predictorCount != other.predictorCount:
			return False
		if self.order != other.order:
			return False
		if self.predictors != other.predictors:
			return False
		return True

class SampleHeader:
	def __init__(self):
		self.codec = 0
		self.medium = 0
		self.u2 = 0
		self.length = 0
		self.offsetInBank = -1
		self.loopOffset = -1
		self.bookOffset = -1
		self.loop = None
		self.book = None
		self.addr = -1
		self.name = ""
		self.idx = -1
		#Storage for reading aiff/aifc
		self.tuning = 1.0f
		self.frameCount = 0
		
	def updateReferences(self):
		if self.loop is not None:
			self.loopOffset = self.loop.addr
		if self.book is not None:
			self.bookOffset = self.book.addr

	def parseFrom(self, input):
		modes, self.u2, self.length, self.offsetInBank, self.loopOffset, self.bookOffset = struct.unpack(">bbHLLL", input)
		self.codec = (modes >> 4) & 0xF
        self.medium = (modes & 0xC) >> 2
        assert self.codec == 0 or self.codec == 3
        assert self.medium == 0 or self.medium == 2
		
		assert self.length % 2 == 0
		#Are you sure about this? What about codec 3?
        if self.length % 9 != 0:
            self.length -= self.length % 9
			
		return 16
		
	def updateSize(self):
		blockSize = 9
		if self.codec == 3:
			blockSize = 5
		blockCount = self.frameCount/16
		if (self.frameCount % 16) != 0:
			blockCount += 1
		self.length = blockCount * blockSize
		
	def loadInfoFromAIFF(self, aif_path):
		#TODO
		
	def serializeTo(self, output):
		self.updateReferences()
		modes = (self.codec & 0xf) << 4
		modes |= (self.medium & 0x3) << 2
		output.write(struct.pack(">bbHLLL", modes, self.u2, self.length, self.offsetInBank, self.loopOffset, self.bookOffset))
		return 16
		
class Envelope:
	def __init__(self):
		self.name = ""
        self.script = []
        self.referencedScripts = []
		self.addr = -1

	def parseFrom(self, input):
		#TODO
		return 0
		
	def serializeTo(self, output):
		#TODO
		return 0
		
	def fromXML(self, xml_element):
		#TODO
		
	def toXML(self):
		#TODO
		return None
		
class SoundEffect:
	def __init__(self):
		self.name = ""
        self.enum = ""
		self.headerOffset = -1 #Offset of sample info in font
		self.pitch = 1.0f
		self.sample = None
		self.addr = -1

	def parseFrom(self, input):
		self.headerOffset, self.pitch = struct.unpack(">Lf", input)
		return 8
		
	def serializeTo(self, output):
		if self.sample is not None:
			self.headerOffset = self.sample.addr
		output.write(struct.pack(">Lf", self.headerOffset, self.pitch))
		return 8
		
	def fromXML(self, xml_element):
		#TODO
		
	def toXML(self):
		#TODO
		return None
		
class Percussion:
	def __init__(self):
		self.name = ""
        self.enum = ""
		self.decay = 0
		self.pan = 64
		self.loaded = 0
		self.headerOffset = -1
		self.envelopeOffset = -1
		self.pitch = 1.0f
		self.sample = None
		self.envelope = None
		self.addr = -1

	def parseFrom(self, input):
		self.decay, self.pan, self.loaded, self.headerOffset, self.pitch, self.envelopeOffset = struct.unpack(">BBBxLfL", input)
        assert self.loaded == 0
		return 16
		
	def serializeTo(self, output):
		if self.sample is not None:
			self.headerOffset = self.sample.addr
		if self.envelope is not None:
			self.envelopeOffset = self.envelope.addr
		output.write(struct.pack(">BBBxLfL", self.decay, self.pan, self.loaded, self.headerOffset, self.pitch, self.envelopeOffset))
		return 16
		
	def fromXML(self, xml_element):
		#TODO
		
	def toXML(self):
		#TODO
		return None
		
class Instrument:
	def __init__(self):
		self.name = ""
        self.enum = ""
		self.decay = 0
		self.loaded = 0
		self.lowRange = 0
		self.highRange = 127
		self.keyLowPitch = 1.0f
		self.keyMedPitch = 1.0f
		self.keyHighPitch = 1.0f
		self.keyLowOffset = -1
		self.keyMedOffset = -1
		self.keyHighOffset = -1
		self.envelopeOffset = -1
		self.keyLowSample = None
		self.keyMedSample = None
		self.keyHighSample = None
		self.envelope = None
		self.addr = -1
		
	def updateReferences(self):
		if self.keyLowSample is not None:
			self.keyLowOffset = self.keyLowSample.addr
		if self.keyMedSample is not None:
			self.keyMedOffset = self.keyMedSample.addr
		if self.keyHighSample is not None:
			self.keyHighOffset = self.keyHighSample.addr
		if self.envelope is not None:
			self.envelopeOffset = self.envelope.addr

	def parseFrom(self, input):
		self.loaded, self.lowRange, self.highRange, self.decay, self.envelopeOffset, self.keyLowOffset, self.keyLowPitch, self.keyMedOffset, self.keyMedPitch, self.keyHighOffset, self.keyHighPitch = struct.unpack(">BBBbLLfLfLf", input)
        assert self.loaded == 0
		return 32
		
	def serializeTo(self, output):
		self.updateReferences()
		output.write(struct.pack(">BBBbLLfLfLf", self.loaded, self.lowRange, self.highRange, self.decay, self.envelopeOffset, self.keyLowOffset, self.keyLowPitch, self.keyMedOffset, self.keyMedPitch, self.keyHighOffset, self.keyHighPitch))
		return 32
		
	def fromXML(self, xml_element):
		#TODO
		
	def toXML(self):
		#TODO
		return None
	
class SampleTableEntry:
    def __init__(self, name):
        self.name = name
		self.offset = -1
		self.length = 0
		self.medium = 2
		self.cache = 4
		
	def parseFrom(self, input):
		self.offset, self.length, self.medium, self.cache = struct.unpack(">LLBBxxxxxx", input)
		return 16
		
	def serializeTo(self, output):
		output.write(struct.pack(">LLBBxxxxxx", self.offset, self.length, self.medium, self.cache))
		return 16

class SoundfontEntry:
    def __init__(self, data):
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
		self.offset, self.length, self.medium, self.cache, self.bank, self.bank2, self.instrumentCount, self.percussionCount, self.effectCount = struct.unpack(">LLBBBBBBH", input)
		return 16
		
	def serializeTo(self, output):
		output.write(struct.pack(">LLBBBBBBH", self.offset, self.length, self.medium, self.cache, self.bank, self.bank2, self.instrumentCount, self.percussionCount, self.effectCount))
		return 16

class Soundfont:
	def __init__(self):
		#TODO

	def parseFrom(self, input):
		#TODO
		return 0
		
	def serializeTo(self, output):
		#TODO
		return 0
		
	def fromXML(self, xml_element):
		#TODO
		
	def toXML(self):
		#TODO
		return None
		
class Soundbank:
	def __init__(self):
		self.samplesByName = {}
		self.name = ""
		self.idx = -1
		
	def orderSamples(self):
		dict_items = sorted(self.samplesByName.items())
		outlist = []
		for pair in dict_items:
			outlist.append(pair[1])
		return outlist

#Common Functions

def loadADPCMData(aifc_path):
	#TODO
	return None:

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

def toMedium(medium):
    return {
        0: "RAM",
        2: "Cartridge",
        3: "Disk Drive"
    }.get(medium)

def toCachePolicy(policy):
    return {
        0: "Permanent",
        1: "Persistent",
        2: "Temporary",
        3: "Any",
        4: "AnyNoSyncLoad"
    }.get(policy)

def toCodecID(codec):
    return {
        0: b"ADP9",
        1: b"HPCM",
        2: b"NONE",
        3: b"ADP5",
        4: b"RVRB",
        5: b"NONE"
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
	
#Additional Classes
class AiffReader:
	#TODO

class AiffWriter:
	#TODO