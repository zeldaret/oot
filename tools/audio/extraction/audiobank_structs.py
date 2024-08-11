# SPDX-FileCopyrightText: © 2024 ZeldaRET
# SPDX-License-Identifier: CC0-1.0
#
#   This file implements reading various structures resident to the Audiobank files.
#   Additionally handles:
#    - Linking with finalized samples
#    - Writing xml elements representing these structures in soundfont xmls
#

import struct
from enum import IntEnum

from .audio_tables import AudioStorageMedium
from .tuning import rate_from_tuning, pitch_names
from .util import XMLWriter

VADPCM_VERSTAMP = 1

class AudioSampleCodec(IntEnum):
    CODEC_ADPCM = 0
    CODEC_S8 = 1
    CODEC_S16_INMEMORY = 2
    CODEC_SMALL_ADPCM = 3
    CODEC_REVERB = 4
    CODEC_S16 = 5



class SoundFontSample: # SampleHeader ?
    """
    typedef struct {
        /* 0x00 */ u32 codec : 4;
        /* 0x00 */ u32 medium : 2;      // storage medium determines which of the two sample bank ids to use when relocating sampleAddr
        /* 0x00 */ u32 cached : 1;
        /* 0x00 */ u32 isRelocated : 1;
        /* 0x01 */ u32 size : 24;
        /* 0x04 */ u8* sampleAddr;      // offset into the sample bank associated with this soundfont
        /* 0x08 */ AdpcmLoop* loop;
        /* 0x0C */ AdpcmBook* book;
    } SoundFontSample; // size = 0x10
    """
    SIZE = 0x10

    def __init__(self, data):
        bits, self.sample_addr, self.loop, self.book = struct.unpack(">IIII", data[:0x10])

        self.codec        = AudioSampleCodec((bits >> 28) & 0b1111)
        self.medium       = AudioStorageMedium((bits >> 26) & 0b11)
        self.cached       = bool((bits >> 25) & 1)
        self.is_relocated = bool((bits >> 24) & 1)
        self.size         = (bits >> 0) & 0b111111111111111111111111

        assert self.book != 0
        assert self.loop != 0
        assert self.codec in [AudioSampleCodec.CODEC_ADPCM, AudioSampleCodec.CODEC_SMALL_ADPCM]
        assert self.medium == 0
        assert not self.is_relocated # Not relocated in ROM

    def to_xml(self, xml : XMLWriter, name : str, rate_override = None, note_override = None):
        # Example xml output:
        # <Sample Name="SAMPLE_NAME" SampleRate="32000" BaseNote="C4" IsDD="false" Cached="false">

        attrs = { "Name" : name }
        if rate_override is not None:
            attrs["SampleRate"] = rate_override
        if note_override is not None:
            attrs["BaseNote"] = note_override
        if self.medium != 0:
            attrs["IsDD"] = "true"
        if self.cached:
            attrs["Cached"] = str(self.cached).lower()

        xml.write_element("Sample", attrs)

    def __str__(self):
        out = "(SoundFontSample){\n"
        out += f"    .codec = {self.codec.name}\n"
        out += f"    .medium = {self.medium.name}\n"
        out += f"    .cached = {self.cached}\n"
        out += f"    .is_relocated = {self.is_relocated}\n"
        out += f"    .size = 0x{self.size:X}\n"
        out += f"    .sampleAddr = 0x{self.sample_addr:X}\n"
        out += f"    .loop = 0x{self.loop:X}\n"
        out += f"    .book = 0x{self.book:X}\n"
        out += "}\n"
        return out



class AdpcmLoop:
    """
    typedef struct {
        /* 0x00 */ u32 start;
        /* 0x04 */ u32 end;
        /* 0x08 */ u32 count;
        /* 0x0C */ u32 numFrames;
        /* 0x10 */ s16 state[16]; // only exists if count != 0. 8-byte aligned
    } AdpcmLoop; // size = 0x30 (or 0x10)
    """

    def __init__(self, data):
        self.start, self.end, self.count, self.num_frames = struct.unpack(">IIII", data[:0x10])

        # We expect loops to be either "no loop" or "infinite", as these are all that vadpcm_enc could handle.
        assert self.count in (0,0xFFFFFFFF)

        if self.count != 0:
            self.state = tuple(s[0] for s in struct.iter_unpack(">h", data[0x10:0x30]))
        else:
            # A count of 0 indicates "no loop", but a loop structure is mandatory for all samples so something had to
            # be emitted. Ensure the start is at 0, later we will ensure that the end is at the last frame of the sample
            # once we have the sample data.
            assert self.start == 0
            self.state = tuple([0] * 16)
        assert len(self.state) == 16

    def serialize(self):
        """
        Creates VADPCMLOOPS section data for aifc files
        """
        NUM_LOOPS = 1

        return struct.pack(">HHIII16h",
                           VADPCM_VERSTAMP, NUM_LOOPS,
                           self.start, self.end, self.count,
                           *self.state)

    def __eq__(self, other):
        if not isinstance(other, AdpcmLoop):
            return False
        other : AdpcmLoop

        start_matches = self.start == other.start
        end_matches = self.end == other.end
        count_matches = self.count == other.count
        # We don't check num_frames in loop equality since loops in different soundfonts referring to the same
        # sample data may not have this field filled out
        return start_matches and end_matches and count_matches and self.state == other.state

    def __str__(self):
        out = "(AdpcmLoop){\n"
        out += f"    .start = {self.start},\n"
        out += f"    .end = {self.end},\n"
        out += f"    .count = {self.count},\n"
        out += f"    .numFrames = {self.num_frames},\n"
        out += f"    .state = {self.state},\n"
        out += "}\n"
        return out

class AdpcmBook:
    """
    typedef struct {
        /* 0x00 */ s32 order;
        /* 0x04 */ s32 npredictors;
        /* 0x08 */ s16 book[1]; // size 8 * order * npredictors. 8-byte aligned
    } AdpcmBook; // size >= 0x8
    """

    def __init__(self, data):
        self.order, self.n_predictors = struct.unpack(">ii", data[:8])
        self.book = tuple(s[0] for s in struct.iter_unpack(">h", data[8:][:2 * 8 * self.order * self.n_predictors]))
        assert len(self.book) == 8 * self.order * self.n_predictors , (len(self.book), 8 * self.order * self.n_predictors)

    def serialize(self):
        header = struct.pack(">hhh", VADPCM_VERSTAMP, self.order, self.n_predictors)
        data = b"".join(struct.pack(">h", x) for x in self.book)
        return header + data

    def __eq__(self, other):
        if not isinstance(other, AdpcmBook):
            return False
        other : AdpcmBook

        order_matches = self.order == other.order
        npredictors_matches = self.n_predictors == other.n_predictors
        return order_matches and npredictors_matches and self.book == other.book

    def __str__(self):
        out = "(AdpcmBook){\n"
        out += f"    .order = {self.order},\n"
        out += f"    .npredictors = {self.n_predictors},\n"
        out += f"    .book = {self.book},\n"
        out += "}\n"
        return out



class SoundFontSound:
    """
    typedef struct {
        /* 0x00 */ SoundFontSample* sample;
        /* 0x04 */ f32 tuning;              // frequency scale factor
    } SoundFontSound; // size = 0x8
    """
    SIZE = 8

    def __init__(self, index, data):
        self.index = index
        self.sample, self.tuning = struct.unpack(">If", data[:8])

    def finalize(self, sample_lookup_fn):
        from .audiotable import AudioTableSample

        sample = sample_lookup_fn(self.sample)
        if sample is None:
            return

        assert isinstance(sample, AudioTableSample)
        sample : AudioTableSample

        assert self.tuning in sample.tuning_map
        rate,note = sample.tuning_map[self.tuning]

        self.sample_rate = rate
        self.needs_rate_override = self.sample_rate != sample.sample_rate

        self.base_note = note
        self.needs_note_override = self.base_note != sample.base_note

    def __str__(self) -> str:
        out = "(SoundFontSound}{\n"
        out += f"    .sample = 0x{self.sample:X}\n"
        out += f"    .tuning = {self.tuning:.7f}f\n"
        out += "}\n"
        return out

    def to_xml(self, xml : XMLWriter, name : str, sample_name_func):
        if self.sample == 0 and self.tuning == 0:
            xml.write_element("Effect")
        else:
            attrs = {
                "Name" : name,
                "Sample" : sample_name_func(self.sample),
            }
            if self.needs_rate_override:
                attrs["SampleRate"] = self.sample_rate
            if self.needs_note_override:
                attrs["BaseNote"] = self.base_note

            xml.write_element("Effect", attrs)



class Drum:
    """
    typedef struct {
        /* 0x00 */ u8 releaseRate;
        /* 0x01 */ u8 pan;
        /* 0x02 */ u8 isRelocated;
        /* 0x04 */ SoundFontSound sound;
        /* 0x0C */ AdsrEnvelope* envelope;
    } Drum; // size = 0x10
    """
    SIZE = 0x10

    def __init__(self, data):
        self.release_rate, self.pan, self.is_relocated, self.sample, self.tuning, self.envelope = \
            struct.unpack(">BBBxIfI", data[:0x10])

        assert self.is_relocated == 0

    def group_continuation(self, other):
        """
        Determine if self is a continuation of the drum group containing other, the last drum added.
        """
        # If there is no previous drum or the previous drum was an empty entry, always begin a new group
        if other is None:
            return False

        assert isinstance(other, Drum)

        # Check general agreement, if these attributes do not match it is certainly not part of the same group
        if self.sample == other.sample and self.pan == other.pan and self.envelope == other.envelope and \
           self.release_rate == other.release_rate:
            # If there is any intersection in the samplerates, assume these are in the same drum group
            samplerates1 = set(rate for _,rate in rate_from_tuning(self.tuning))
            samplerates2 = set(rate for _,rate in rate_from_tuning(other.tuning))
            return len(samplerates1.intersection(samplerates2)) != 0

        return False

    def __str__(self):
        out = "(Drum){\n"
        out += f"    .releaseRate = {self.release_rate},\n"
        out += f"    .pan = {self.pan},\n"
        out += f"    .isRelocated = {self.is_relocated},\n"
        out += f"    .sound.sample = 0x{self.sample:X},\n"
        out += f"    .sound.tuning = {self.tuning:.7f}f,\n"
        out += f"    .envelope = 0x{self.envelope:X},\n"
        out += "}\n"
        return out



class Instrument:
    """
    typedef struct {
        /* 0x00 */ u8 isRelocated;
        /* 0x01 */ u8 normalRangeLo;
        /* 0x02 */ u8 normalRangeHi;
        /* 0x03 */ u8 releaseRate;
        /* 0x04 */ AdsrEnvelope* envelope;
        /* 0x08 */ SoundFontSound lowNotesSound;
        /* 0x10 */ SoundFontSound normalNotesSound;
        /* 0x18 */ SoundFontSound highNotesSound;
    } Instrument; // size = 0x20
    """
    SIZE = 0x20

    def __init__(self, data):
        self.is_relocated, self.normal_range_lo, self.normal_range_hi, self.release_rate, self.envelope, \
            self.low_notes_sample, self.low_notes_tuning, \
            self.normal_notes_sample, self.normal_notes_tuning, \
            self.high_notes_sample, self.high_notes_tuning = struct.unpack(">BBBBIIfIfIf", data[:0x20])

        self.program_number = None
        self.offset = None
        self.struct_index = None
        self.unused = False

        assert self.is_relocated == 0

        # Sample is either present or the split point is at the start/end
        assert not (self.low_notes_sample == 0 and self.low_notes_tuning == 0.0) or self.normal_range_lo == 0
        assert not (self.high_notes_sample == 0 and self.high_notes_tuning == 0.0) or self.normal_range_hi == 127

    def __str__(self):
        out = "(Instrument){\n"
        out += f"    .isRelocated = {self.is_relocated},\n"
        out += f"    .normalRangeLo = {self.normal_range_lo},\n"
        out += f"    .normalRangeHi = {self.normal_range_hi},\n"
        out += f"    .releaseRate = {self.release_rate},\n"
        out += f"    .envelope = 0x{self.envelope:X},\n"
        out += f"    .lowNotesSound.sample = {self.low_notes_sample},\n"
        out += f"    .lowNotesSound.tuning = {self.low_notes_tuning},\n"
        out += f"    .normalNotesSound.sample = {self.normal_notes_sample},\n"
        out += f"    .normalNotesSound.tuning = {self.normal_notes_tuning},\n"
        out += f"    .highNotesSound.sample = {self.high_notes_sample},\n"
        out += f"    .highNotesSound.tuning = {self.high_notes_tuning},\n"
        out += "}\n"
        return out

    def finalize(self, sample_lookup_fn):
        from .audiotable import AudioTableSample

        self.sample_rate = [None] * 3
        self.base_note = [None] * 3
        self.needs_rate_override = [False] * 3
        self.needs_note_override = [False] * 3

        sample_offsets = (self.low_notes_sample, self.normal_notes_sample, self.high_notes_sample)
        tunings = (self.low_notes_tuning, self.normal_notes_tuning, self.high_notes_tuning)
        for i,(sample_offset,tuning) in enumerate(zip(sample_offsets, tunings)):
            sample = sample_lookup_fn(sample_offset)
            if sample is None:
                continue
            assert isinstance(sample, AudioTableSample)
            sample : AudioTableSample

            assert tuning in sample.tuning_map
            rate,note = sample.tuning_map[tuning]

            self.sample_rate[i] = rate
            self.needs_rate_override[i] = self.sample_rate[i] != sample.sample_rate

            self.base_note[i] = note
            self.needs_note_override[i] = self.base_note[i] != sample.base_note

    def to_xml(self, xml : XMLWriter, name : str, sample_names_func, envelope_name_func):
        attributes = {}

        if not self.unused:
            attributes["ProgramNumber"] = self.program_number
            attributes["Name"] = name

        # TODO release rate overrides?
        attributes.update({
            "Envelope" : envelope_name_func(self.envelope),
            #"Release"  : self.release_rate,
            "Sample"   : sample_names_func(self.normal_notes_sample),
        })

        if self.needs_rate_override[1]:
            attributes["SampleRate"] = self.sample_rate[1]
        if self.needs_note_override[1]:
            attributes["BaseNote"] = self.base_note[1]

        if self.normal_range_lo != 0:
            attributes["RangeLo"] = pitch_names[self.normal_range_lo]
            attributes["SampleLo"] = sample_names_func(self.low_notes_sample)

            if self.needs_rate_override[0]:
                attributes["SampleRateLo"] = self.sample_rate[0]
            if self.needs_note_override[0]:
                attributes["BaseNoteLo"] = self.base_note[0]

        if self.normal_range_hi != 127:
            attributes["RangeHi"] = pitch_names[self.normal_range_hi]
            attributes["SampleHi"] = sample_names_func(self.high_notes_sample)

            if self.needs_rate_override[2]:
                attributes["SampleRateHi"] = self.sample_rate[2]
            if self.needs_note_override[2]:
                attributes["BaseNoteHi"] = self.base_note[2]

        xml.write_element("Instrument" if not self.unused else "InstrumentUnused", attributes)
