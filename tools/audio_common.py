#!/usr/bin/env python3

import xml.etree.ElementTree as XmlTree
import struct
import math

#Common Class Definitions
class AifReader:
	def __init__(self, filepath):
		self.path = filepath
		input = open(filepath, 'rb')
		self.sections = {}
		self.appl_sections = []
		self.total_size = 0
		self.is_aifc = False
		
		#Read header
		assert input.read(4) == b"FORM"
		self.total_size = struct.unpack(">L", input.read(4))
		assert input.read(3) == b"AIF"
		typeb = input.read(1)
		if typeb == b"C":
			self.is_aifc = True
		
		#Scan chunks and map
		offset = 12
		
		while True:
			magicno = input.read(4)
			if not magicno or len(magicno) < 4:
				break
			secmagic = magicno.decode('utf-8')
			secsize, = struct.unpack(">L", input.read(4))
			offset += 8
			if secmagic == "APPL":
				self.appl_sections.append((offset, secsize))
			else:
				self.sections[secmagic] = (offset, secsize)
			input.seek(offset + secsize)
			offset += secsize
			
		input.close()
		
	def loadData(self, offset, size):
		sec_dat = None
		with open(self.path, 'rb') as f:
			f.seek(offset)
			sec_dat = f.read(size)
		return sec_dat
		
	def loadSectionData(self, magicno):
		section_loc = self.sections[magicno]
		if section_loc is None:
			return None
		return self.loadData(section_loc[0], section_loc[1])
		
	def loadApplSectionData(self, idx):
		if idx < 0 or idx >= len(self.appl_sections):
			return None
		section_loc = self.appl_sections[idx]
		if section_loc is None:
			return None
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
	#This is crude but eh, just want an implementation for now
	tone_str = noteName[0]
	oct_str = noteName[1:]
	if noteName[1] == '♯':
		tone_str = noteName[0:2]
		oct_str = noteName[2:]
	
	tone = {
		'C' :0,
		'C♯':1,
		'D' :2,
		'D♯':3,
		'E' :4,
		'F' :5,
		'F♯':6,
		'G' :7,
		'G♯':8,
		'A' :9,
		'A♯':10,
		'B' :11,
	}.get(tone_str)
	
	oct = int(oct_str) - 1
	
	return ((oct*12) + tone) - 9

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

def fromCodecID(codec):
	return {
		b"ADP9":0,
		b"HPCM":1,
		b"NONE":2,
		b"ADP5":3,
		b"RVRB":4,
		b"NONE":5
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
	mod16 = val & 0xf
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
		mysize = 8 + (self.entryCount() * 2)
		padding = 16 - (mysize % 16)
		if padding > 15:
			padding = 0
		return padding
		
	def parseFrom(self, input):
		mysize = 8
		self.order, self.predictorCount = struct.unpack(">LL", input[0:8])
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
		if not isinstance(other, PCMBook):
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
		self.tuning = 1.0
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
		#blockCount = math.floor(self.frameCount/16)
		#if (self.frameCount % 16) != 0:
		#	blockCount += 1
		#self.length = blockCount * blockSize
		
		#Okay so the frame count is calculated weird.
		#To get the original data length, looks like we gotta reverse it.
		self.length = (self.frameCount * 9) // 16
		
	def loadInfoFromAIF(self, aif_path):
		aif_reader = AifReader(aif_path)
		comm_data = aif_reader.loadSectionData('COMM')
		
		self.frameCount, = struct.unpack('>L', comm_data[2:6])
		sample_rate = parse_f80(comm_data[8:18])
		if aif_reader.is_aifc:
			self.codec = fromCodecID(comm_data[18:22])
			
		#Go thru appl sections to get book and loop data
		appl_count = len(aif_reader.appl_sections)
		if appl_count > 0:
			#Read pstr to determine what it is...
			for i in range(appl_count):
				appl_data = aif_reader.loadApplSectionData(i)
				strlen = appl_data[4]
				strdat = appl_data[5:(5+strlen)]
				#appl_sec_name = strdat.decode('utf-8')
				if strdat == b'VADPCMCODES':
					#Code table
					self.book = PCMBook()
					#self.book.parseFrom(appl_data[18:])
					bookpos = 18
					self.book.order, self.book.predictorCount = struct.unpack(">HH", appl_data[bookpos:bookpos+4])
					bookpos += 4
					predictorSize = self.book.order * 8
					predictorBytes = predictorSize * 2
					for i in range(self.book.predictorCount):
						self.book.predictors.append(struct.unpack(">" + str(predictorSize) + "h", appl_data[bookpos:(bookpos+predictorBytes)]))
						bookpos += predictorBytes				
				elif strdat == b'VADPCMLOOPS':
					#Loop data
					self.loop = PCMLoop()
					#self.loop.parseFrom(appl_data[20:])
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
		modes = (self.codec & 0xf) << 4
		modes |= (self.medium & 0x3) << 2
		output.write(struct.pack(">bbHLLL", modes, self.u2, self.length, self.offsetInBank, self.loopOffset, self.bookOffset))
		return 16
		
class Envelope:
	def __init__(self):
		self.name = ""
		self.script = []
		self.referencedScripts = {}
		self.addr = -1

	def parseFrom(self, input):
		advanceOffset = 0
		i = 0	
		self.script = []
		self.referencedScripts = {}
		
		while True:
			cmd, value = struct.unpack(">hH", tbl[advanceOffset : advanceOffset + 4])
			possibleFloat = struct.unpack(">f", tbl[advanceOffset : advanceOffset + 4])[0]
			if cmd == 0 and value != 0:
				break
			elif cmd == -1 and value != 0:
				break
			elif cmd == -2:
				if value == 0:
					break
				else:
					self.referencedScripts[i] = value #Setting it up to link later? Also so know to check...
					self.script.append(("ADSR_GOTO", value))
			elif cmd == -3 and value != 0:
				break
			elif cmd > 0 and value > 32767:
				break
			elif -100000 > possibleFloat and possibleFloat < 100000:
				break
			else:
				cmd = {
					0: "ADSR_DISABLE",
					-1: "ADSR_HANG",
					-2: "ADSR_GOTO",
					-3: "ADSR_RESTART"
				}.get(cmd, cmd)
				self.script.append((cmd, value))
				if isinstance(cmd, str):
					break
    
			advanceOffset += 4
			i += 1

		if len(self.script) == 0:
			raise Exception("Not a valid envelope script")
		return advanceOffset
		
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
			elif cmd == 0 or cmd == -1 or cmd == -3:
				if value != 0:
					break
				last = True
			elif cmd > 0 and value > 32767:
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
			second = e_point.get("Command")
			
			#Try to convert to numbers
			first = tryStr2Num(first)
			second = tryStr2Num(second)
			
			self.script.append((first, second))
		
		
	def toXML(self):
		#TODO
		return None
		
class SoundEffect:
	def __init__(self):
		self.name = ''
		self.enum = ''
		self.pitch = 1.0
		self.sample = None
		self.addr = -1
		
		self.headerOffset = -1 #Offset of sample info in font
		self.sampleName = ''

	def parseFrom(self, input):
		self.headerOffset, self.pitch = struct.unpack(">Lf", input)
		return 8
		
	def serializeTo(self, output):
		if self.sample is not None:
			self.headerOffset = self.sample.addr
		output.write(struct.pack(">Lf", self.headerOffset, self.pitch))
		return 8
		
	def fromXML(self, xml_element):
		if xml_element is None:
			return
			
		self.name = xml_element.get("Name")
		self.enum = xml_element.get("Enum")
		self.sampleName = xml_element.get("Sample")
		if self.sampleName is not None:
			if self.sampleName.endwith(".aifc"):
				self.sampleName = self.sampleName[:-5]
		
		pitch_str = xml_element.get("Pitch")
		if pitch_str is not None:
			self.pitch = float(pitch_str)
		
	def toXML(self):
		#TODO
		return None
		
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
		if xml_element is None:
			return
			
		self.name = xml_element.get("Name")
		self.enum = xml_element.get("Enum")
		self.envName = xml_element.get("Envelope")
		self.sampleName = xml_element.get("Sample")
		if self.sampleName is not None:
			if self.sampleName.endwith(".aifc"):
				self.sampleName = self.sampleName[:-5]
		
		pitch_str = xml_element.get("Pitch")
		if pitch_str is not None:
			self.pitch = float(pitch_str)
		decay_str = xml_element.get("Decay")
		if decay_str is not None:
			self.decay = int(decay_str)
		pan_str = xml_element.get("Pan")
		if pan_str is not None:
			self.pan = int(pan_str)
		idx_str = xml_element.get("Index")
		if idx_str is not None:
			self.idx = int(idx_str)
		
		
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
		self.envelopeName = ''
		
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
				if self.keyLowName.endwith(".aifc"):
					self.keyLowName = self.keyLowName[:-5]
			note_str = e_key.get("MaxNote")
			if note_str is not None:
				self.lowRange = parseNoteName(note_str)
			else:
				self.lowRange = 0
			pitch_str = xml_element.get("Pitch")
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
				if self.keyMedName.endwith(".aifc"):
					self.keyMedName = self.keyMedName[:-5]
			pitch_str = xml_element.get("Pitch")
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
				if self.keyHighName.endwith(".aifc"):
					self.keyHighName = self.keyHighName[:-5]
			note_str = e_key.get("MinNote")
			if note_str is not None:
				self.highRange = parseNoteName(note_str)
			else:
				self.highRange = 127
			pitch_str = xml_element.get("Pitch")
			if pitch_str is not None:
				self.keyHighPitch = float(pitch_str)
			else:
				self.keyHighPitch = -1.0
		else:
			self.highRange = 0
			self.keyHighPitch = 0.0
			self.keyHighSample = None
			self.keyHighName = ''
		
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
		self.name = ''
		self.idx = -1
		self.medium = 2
		self.cachePolicy = 2
		self.bank1 = None
		self.bank2 = None
		self.instruments = []
		self.percussion = []
		self.soundEffects = []
		self.envelopes = {}
		
		self.bankNames = []
		self.instIdxLookup = {}
		self.percIdxLookup = {}
		self.sfxIdxLookup = {}
		
	def fromXML(self, xml_element):
		#Read font attr
		med_str = xml_element.get("Medium")
		cache_str = xml_element.get("CachePolicy")
		if med_str is not None:
			self.medium = toMedium(med_str)
		if cache_str is not None:
			self.cachePolicy = toCachePolicy(cache_str)
			
		#Read bank names
		e_banks = xml_element.find("SampleBanks")
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
				
		#TODO resolve env references
		
		#Read SFX
		e_soundeffects = xml_element.find("SoundEffects")
		if e_soundeffects is not None:
			e_sfx_list = e_soundeffects.findall("SoundEffect")
			if e_sfx_list is not None:
				for e_sfx in e_sfx_list:
					sfx = SoundEffect()
					sfx.fromXML(e_sfx)
					if sfx.sampleName is None:
						self.soundEffects.append(0)
					else:
						self.soundEffects.append(sfx)
		
		#Read Percussion
		e_drums = xml_element.find("Drums")
		if e_drums is not None:
			e_drum_list = e_drums.findall("Drum")
			if e_drum_list is not None:
				for e_drum in e_drum_list:
					drum = Percussion()
					drum.fromXML(e_drum)
					if drum.sampleName is None:
						self.percussion.append(0)
					else:
						self.percussion.append(drum)
						#Find envelope
						drum.envelope = self.envelopes[drum.envName]
		
		#Read Instruments
		e_insts = xml_element.find("Instruments")
		if e_insts is not None:
			e_inst_list = e_insts.findall("Instrument")
			if e_inst_list is not None:
				for e_inst in e_inst_list:
					inst = Instrument()
					inst.fromXML(e_inst)
					if inst.keyMedName is None:
						self.instruments.append(0)
					else:
						self.instruments.append(inst)
						#Find envelope
						inst.envelope = self.envelopes[inst.envelopeName]
		
	def toXML(self):
		#TODO
		return None
		
class Soundbank:
	def __init__(self):
		self.samplesByName = {}
		self.name = ""
		self.idx = -1
		self.medium = 2
		self.cachePolicy = 4
		
	def orderSamples(self):
		dict_items = sorted(self.samplesByName.items())
		outlist = []
		for pair in dict_items:
			outlist.append(pair[1])
		return outlist
		
	def calculateSize(self):
		mysize = 0
		samples = self.orderSamples()
		for sample in samples:
			mysize += sample.length
			align(mysize, 16)
		return mysize
	
	def fromXML(self, xml_element):
		#Read font attr
		med_str = xml_element.get("Medium")
		cache_str = xml_element.get("CachePolicy")
		if med_str is not None:
			self.medium = toMedium(med_str)
			#print("Medium String:",med_str,"| Medium: ",str(self.medium))
		if cache_str is not None:
			self.cachePolicy = toCachePolicy(cache_str)	
			#print("Cache String:",cache_str,"| Cache Enum: ",str(self.cachePolicy))

#Common Functions

def loadBankDefTable(filepath):
	bankdeftbl = []
	with open(filepath,'rb') as f:
		bankcount, = struct.unpack(">H", f.read(2))
		f.read(14)
		for i in range(bankcount):
			record = SampleTableEntry('audiotable_' + str(i))
			record.parseFrom(f.read(16))
			bankdeftbl.append(record)
	return bankdeftbl
		
