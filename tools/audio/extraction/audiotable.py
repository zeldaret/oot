# SPDX-FileCopyrightText: © 2024 ZeldaRET
# SPDX-License-Identifier: CC0-1.0
#
#
#

import math, struct
from typing import Dict, Tuple
from xml.etree.ElementTree import Element

from .audio_tables import AudioCodeTableEntry
from .audiobank_structs import AudioSampleCodec, SoundFontSample, AdpcmBook, AdpcmLoop
from .tuning import pitch_names, note_z64_to_midi, recalc_tuning, rate_from_tuning, rank_rates_notes, BAD_FLOATS
from .util import align, error, XMLWriter, f32_to_u32

class AIFCFile:

    def __init__(self):
        self.sections = []
        self.total_size = 0

    @staticmethod
    def pstring(data):
        return bytes([len(data)]) + data + (b"" if len(data) % 2 else b"\0")

    @staticmethod
    def serialize_f80(num):
        """
        Convert num to 80-bit float. Does not accept denormal/infinity/nan but these should never appear anyway.
        """
        num = float(num)
        if num == 0.0:
            return b"\0" * 10
        elif num == -0.0:
            return b"\x80" + b"\0" * 9

        f64_bits, = struct.unpack(">Q", struct.pack(">d", num))

        f64_sign_bit = f64_bits & (2 ** 63)

        f64_exponent = (f64_bits ^ f64_sign_bit) >> 52
        assert f64_exponent != 0, "can't handle denormals"
        assert f64_exponent != 0x7FF, "can't handle infinity/nan"
        f64_exponent -= 1023

        f64_mantissa = f64_bits & (2 ** 52 - 1)

        f80_sign_bit = f64_sign_bit << (80 - 64)
        f80_exponent = (f64_exponent + 0x3FFF) << 64
        f80_mantissa = (2 ** 63) | (f64_mantissa << (63 - 52))

        f80 = f80_sign_bit | f80_exponent | f80_mantissa

        return struct.pack(">HQ", f80 >> 64, f80 & (2 ** 64 - 1))

    def add_section(self, tp, data):
        assert isinstance(tp, bytes)
        assert isinstance(data, bytes)

        self.sections.append((tp, data))
        self.total_size += align(len(data),2) + 8

    def add_custom_section(self, tp, data):
        self.add_section(b"APPL", b"stoc" + self.pstring(tp) + data)

    def remove_section(self, tp):
        assert isinstance(tp, bytes)

        for s_tp, s_data in self.sections:
            if s_tp == tp:
                self.sections.remove((s_tp, s_data))
                self.total_size -= align(len(s_data),2) + 8
                return

    def commit(self, outpath):
        self.total_size += 4

        with open(outpath, "wb") as outfile:
            outfile.write(b"FORM" + struct.pack(">I", self.total_size) + b"AIFC")

            for tp, data in self.sections:
                outfile.write(tp + struct.pack(">I", len(data)))
                outfile.write(data)

                if len(data) % 2:
                    outfile.write(b"\0")

class AudioTableData:
    """
    Unaccounted data in the Audiotable
    """

    def __init__(self, start, end, data):
        self.start : int = start
        self.end : int = end
        self.data = data
        assert len(self.data) % 2 == 0

        self.name : str = None
        self.filename : str = None

    def __len__(self):
        return len(self.data)

    def to_asm(self, name):
        out = f"# {name} [0x{self.start:X}:0x{self.end:X}](0x{self.end-self.start:X})\n\n"
        out += "    .byte "
        for i,b in enumerate(self.data):
            if i != 0 and i % 32 == 0:
                out = out[:-2] + "\n    .byte "
            out += f"0x{b:02X}, "
        out = out[:-2] + "\n\n"
        return out

    def to_file(self, outpath : str):
        # Output as binary blob

        with open(outpath, "wb") as outfile:
            outfile.write(self.data)



PCM16_SAMPLE_SIZE = 16

class AudioTableSample(AudioTableData):
    """
    Sample in the Audiotable
    """

    def __init__(self, start : int, end : int, header : SoundFontSample, data, book : AdpcmBook, loop : AdpcmLoop, padding=None):
        super().__init__(start, end, data)

        self.header : SoundFontSample = header
        self.book : AdpcmBook = book
        self.loop : AdpcmLoop = loop
        self.padding = padding

        self.notes_rates = set()
        self.sample_rate = None
        self.base_note = None
        self.tuning_map = None

        if self.loop.count == 0:
            # If a count is 0 the loop end must be the (bugged, vadpcm_enc computed it wrong originally) frame count
            num_frames_bugged = (len(self.data) * PCM16_SAMPLE_SIZE) // self.frame_size()
            assert self.loop.end ==  num_frames_bugged, f"{self.loop.end}, {num_frames_bugged}"

    def clone(self, start, end, padding):
        new_sample = AudioTableSample(start, end, self.header, self.data, self.book, self.loop, padding)
        new_sample.notes_rates = self.notes_rates
        return new_sample

    def frame_size(self):
        return {
            AudioSampleCodec.CODEC_ADPCM        : 9,
            AudioSampleCodec.CODEC_S8           : 16,
            AudioSampleCodec.CODEC_S16_INMEMORY : 32,
            AudioSampleCodec.CODEC_SMALL_ADPCM  : 5,
            AudioSampleCodec.CODEC_REVERB       : 0,
            AudioSampleCodec.CODEC_S16          : 32
        }[self.header.codec]

    def codec_id(self):
        return {
            AudioSampleCodec.CODEC_ADPCM        : b'ADP9',
            AudioSampleCodec.CODEC_S8           : b'HPCM',
            AudioSampleCodec.CODEC_S16_INMEMORY : b'NONE',
            AudioSampleCodec.CODEC_SMALL_ADPCM  : b'ADP5',
            AudioSampleCodec.CODEC_REVERB       : b'RVRB',
            AudioSampleCodec.CODEC_S16          : b'NONE',
        }[self.header.codec]

    def codec_name(self):
        return {
            AudioSampleCodec.CODEC_ADPCM        : b"Nintendo/SGI VADPCM 9-bytes/frame",
            AudioSampleCodec.CODEC_S8           : b"Half-frame PCM",
            AudioSampleCodec.CODEC_S16_INMEMORY : b"Uncompressed",
            AudioSampleCodec.CODEC_SMALL_ADPCM  : b"Nintendo/SGI VADPCM 5-bytes/frame",
            AudioSampleCodec.CODEC_REVERB       : b"Nintendo Reverb format",
            AudioSampleCodec.CODEC_S16          : b"Uncompressed"
        }[self.header.codec]

    def codec_file_extension_compressed(self):
        ext = {
            AudioSampleCodec.CODEC_ADPCM        : ".aifc",
            AudioSampleCodec.CODEC_S8           : None,
            AudioSampleCodec.CODEC_S16_INMEMORY : None,
            AudioSampleCodec.CODEC_SMALL_ADPCM  : ".half.aifc",
            AudioSampleCodec.CODEC_REVERB       : None,
            AudioSampleCodec.CODEC_S16          : ".aiff",
        }[self.header.codec]
        assert ext is not None
        return ext

    def codec_file_extension_decompressed(self):
        ext = {
            AudioSampleCodec.CODEC_ADPCM        : ".wav",
            AudioSampleCodec.CODEC_S8           : None,
            AudioSampleCodec.CODEC_S16_INMEMORY : None,
            AudioSampleCodec.CODEC_SMALL_ADPCM  : ".half.wav",
            AudioSampleCodec.CODEC_REVERB       : None,
            AudioSampleCodec.CODEC_S16          : ".wav",
        }[self.header.codec]
        assert ext is not None
        return ext

    def base_note_number(self):
        return note_z64_to_midi(pitch_names.index(self.base_note))

    def resolve_basenote_rate(self, extraction_sample_info : Dict[int, Dict[str,str]]):
        assert len(self.notes_rates) != 0

        # rate_3ds = None
        # if SAMPLERATES_3DS is not None:
        #     rate_3ds = SAMPLERATES_3DS[self.bank_num].get(i, None)

        tuning_map = {}
        def update_tuning_map(tuning, rate, note):
            tuning_map.update({ tuning : (rate, note) })

            # check
            tuning_bits = f32_to_u32(tuning)
            ntuning = recalc_tuning(rate, note)
            assert ntuning == tuning or tuning_bits in BAD_FLOATS, \
                   f"Got: {ntuning}(0x{f32_to_u32(ntuning):X}), Expected: {tuning}(0x{f32_to_u32(tuning):X})"

        if len(self.notes_rates) == 1:
            # only need to match one tuning value

            notes_rates,tuning = self.notes_rates.pop()

            # if rate_3ds is not None and rate_3ds not in [rate for _,rate in notes_rates]:
            #     print(f"NONMATCHING: 3DS={rate_3ds} N64={[rate for _,rate in notes_rates]}")

            if len(notes_rates) == 1:
                # only one possible combination of samplerate and basenote
                final_note,final_rate = notes_rates[0]
            else:
                # Several possible combinations of samplerate and basenote that result in the same tuning value,
                # choose just one by arbitrary ranking
                final_rate,(final_note,) = rank_rates_notes(tuple((rate, (note,)) for note,rate in notes_rates))

            update_tuning_map(tuning, final_rate, final_note)
        else:
            # need to match for multiple tuning values

            # produce a list of samplerates that are common to all entries, the correct samplerate is most likely in
            # this intersection
            rate_cands = set.intersection(*(set(rate for note,rate in nrs) for nrs,t in self.notes_rates))

            # if rate_3ds is not None and rate_3ds not in rate_cands:
            #     print(f"NONMATCHING: 3DS={rate_3ds} N64={rate_cands}")

            if len(rate_cands) == 0:
                # no common samplerates, arbitrarily rank each separately to get best candidate for each tuning, then
                # rank those again to find the one we should associate with the sample itself

                finalists = []
                for all_layout,tuning in self.notes_rates:
                    best_rate,(best_note,) = rank_rates_notes([(rate, (note,)) for note, rate in all_layout])

                    update_tuning_map(tuning, best_rate, best_note)

                    finalists.append((best_rate,(best_note,)))

                final_rate,(final_note,) = rank_rates_notes(finalists)
            else:
                tunings = [t for nrs,t in self.notes_rates]
                # Found one or more common samplerate, select just one by arbitrary ranking

                # build a map from samplerate -> note value for each entry
                dicts = tuple(dict((rate,note) for note,rate in nrs) for nrs,t in self.notes_rates)

                # list of tuples (rate, (notes for each entry)) for each candidate samplerate
                final_rate,final_notes = rank_rates_notes([(rate, tuple(D[rate] for D in dicts)) for rate in rate_cands])

                finalists = []

                # map the result of this stage to the tunings
                for tuning,note in zip(tunings,final_notes):
                    update_tuning_map(tuning, final_rate, note)
                    finalists.append((final_rate,(note,)))

                # select best note to go in the sample
                final_rate,(final_note,) = rank_rates_notes(finalists)

        if extraction_sample_info is not None:
            if self.start in extraction_sample_info:
                entry = extraction_sample_info[self.start]
                if "SampleRate" in entry and "BaseNote" in entry:
                    final_rate = int(entry["SampleRate"])
                    final_note = entry["BaseNote"]
            else:
                print(f"WARNING: Missing extraction xml entry for sample at offset=0x{self.start:X}")

        # print("     ",len(FINAL_NOTES_RATES), FINAL_NOTES_RATES)
        # if rate_3ds is not None and len(FINAL_NOTES_RATES) == 1:
        #     print(f"3DS : {rate_3ds} N64 : {FINAL_NOTES_RATES[0][0]}")
        #     if rate_3ds != FINAL_NOTES_RATES[0][0]:
        #         print("NONMATCHING AFTER RANKING")
        # else:
        #     print("No 3DS comparison")

        self.notes_rates = None
        self.sample_rate = final_rate
        self.base_note = final_note
        self.tuning_map = tuning_map

    def to_file(self, outpath : str):
        assert self.sample_rate is not None and self.base_note is not None,\
            f"The sample must have been assigned a samplerate and basenote to be extracted to AIFC: [0x{self.start:X}:0x{self.end:X}]\n{self.header}"

        NUM_CHANNELS = 1

        # Note this computes the correct number of frames, The original sdk tool vadpcm_enc contained a bug where aifc
        # files would sometimes be 1-off in the reported number of frames. We do not reproduce this.
        num_frames = (len(self.data) // self.frame_size()) * PCM16_SAMPLE_SIZE

        aifc = AIFCFile()

        aifc.add_section(b"COMM",
            struct.pack(">hIh", NUM_CHANNELS, num_frames, PCM16_SAMPLE_SIZE)
            + AIFCFile.serialize_f80(self.sample_rate)
            + self.codec_id()
            + AIFCFile.pstring(self.codec_name())
        )

        aifc.add_section(b"INST",
            struct.pack(">bbbbbbhhhhhhh",
                self.base_note_number(),
                0,      # detune
                # TODO fill in the rest? with what?
                0,      # lownote
                0,      # highnote
                0,      # lowvel
                0,      # highvel
                0,      # gain
                0,0,0,  # sustain(mode,start,end)
                0,0,0,  # release(mode,start,end)
            )
        )

        aifc.add_custom_section(b"VADPCMCODES", self.book.serialize())
        if self.loop.count != 0:
            # We don't need to write a VADPCMLOOPS chunk if the count is 0 as we can represent these by the absence of
            # a VADPCMLOOPS chunk; a count of 0 indicates the sample has no loop, the start and end of a loop with
            # count=0 are always 0 and the end of the sample respectively.
            aifc.add_custom_section(b"VADPCMLOOPS", self.loop.serialize())

        aifc.add_section(b"SSND", struct.pack(">II", 0, 0) + bytes(self.data))

        aifc.commit(outpath)

    def to_asm(self, name):
        out  = f"# {name} [0x{self.start:X}:0x{self.end:X}](0x{self.end-self.start:X})\n"
        out +=  "\n"
        out += f".global {name}\n"
        out += f"{name}:\n"
        out += f".global {name}_OFF\n"
        out += f".set {name}_OFF, . - $start\n"
        out +=  "\n"
        out += "    .byte "
        for i,b in enumerate(self.data):
            if i != 0 and i % 32 == 0:
                out = out[:-2] + "\n    .byte "
            out += f"0x{b:02X}, "
        out = out[:-2] + "\n"
        if len(self.padding) == 0 or all(b == 0 for b in self.padding):
            out += "    .balign 16\n"
        else:
            out += f"# PADDING\n"
            out +=  "    .byte " + ", ".join(f"0x{b:02X}" for b in self.padding) + "\n"
        out +=  "\n"
        return out







class AudioTableFile:
    """
    Single sample bank in the Audiotable
    """

    def __init__(self, bank_num : int, audiotable_seg : memoryview, table_entry : AudioCodeTableEntry,
                 seg_offset : int, buffer_bug : bool = False, extraction_xml : Tuple[str, Element] = None):
        self.bank_num = bank_num
        self.table_entry : AudioCodeTableEntry = table_entry
        self.data = self.table_entry.data(audiotable_seg, seg_offset)
        self.buffer_bug = buffer_bug

        self.samples_final = None

        if extraction_xml is None:
            self.file_name = f"SampleBank_{self.bank_num}"
            self.name = f"SampleBank_{self.bank_num}"
            self.extraction_sample_info = None
            self.extraction_blob_info = None
        else:
            self.file_name = extraction_xml[0]
            self.name = extraction_xml[1].attrib["Name"]

            self.extraction_sample_info = {}
            self.extraction_blob_info = {}
            for item in extraction_xml[1]:
                if item.tag == "Sample":
                    self.extraction_sample_info[int(item.attrib["Offset"], 16)] = item.attrib
                elif item.tag == "Blob":
                    self.extraction_blob_info[int(item.attrib["Offset"], 16)] = item.attrib
                else:
                    assert False

        self.pointer_indices = []

        self.samples = {}
        self.coverage = set()

    def register_ptr(self, index):
        self.pointer_indices.append(index)

    def dump_bin(self, path):
        with open(path, "wb") as outfile:
            outfile.write(self.data)

    def __len__(self):
        return len(self.data)

    def add_sample(self, sample_header : SoundFontSample, book : AdpcmBook, loop : AdpcmLoop, tuning : float, ob):
        # collect sample data
        sample_start = sample_header.sample_addr
        sample_end = sample_header.sample_addr + sample_header.size
        sample_end_aligned = align(sample_end, 16)
        sample_data = self.data[sample_start:sample_end]
        sample_padding = self.data[sample_end:sample_end_aligned]
        notes_rates = rate_from_tuning(tuning)

        # update coverage
        self.coverage.add((sample_start, sample_end_aligned, sample_end))

        if sample_start in self.samples:
            # if this sample start was already recorded, compare with previous
            prev_sample : AudioTableSample = self.samples[sample_start]

            # check data integrity, these should not change if the same is the same
            assert prev_sample.end == sample_end
            assert prev_sample.header.codec == sample_header.codec
            assert prev_sample.book == book
            assert prev_sample.loop == loop

            # add notes/rates candidates
            prev_sample.notes_rates.add((notes_rates, tuning))
        else:
            # if this sample start was not recorded, add it
            new_sample = AudioTableSample(sample_start, sample_end, sample_header, sample_data, book, loop, sample_padding)
            new_sample.notes_rates.add((notes_rates, tuning))
            self.samples[sample_start] = new_sample

    def lookup_sample(self, offset : int) -> AudioTableSample:
        return self.samples[offset]

    def sample_name(self, sample : AudioTableSample, index : int):
        if self.extraction_sample_info is not None:
            if sample.start in self.extraction_sample_info:
                return self.extraction_sample_info[sample.start]["Name"]
            print(f"WARNING: Missing extraction xml entry for sample at offset=0x{sample.start:X}")
        return f"SAMPLE_{self.bank_num}_{index}"

    def sample_filename(self, sample : AudioTableSample, index : int):
        ext = sample.codec_file_extension_compressed()

        if self.extraction_sample_info is not None:
            if sample.start in self.extraction_sample_info:
                return self.extraction_sample_info[sample.start]["FileName"] + ext
            print(f"WARNING: Missing extraction xml entry for sample at offset=0x{sample.start:X}")

        npad = int(math.floor(1 + math.log10(len(self.samples)))) if len(self.samples) != 0 else 0
        return f"Sample{index:0{npad}}{ext}"

    def blob_filename(self, start, end):
        if self.extraction_blob_info is not None:
            if start in self.extraction_blob_info:
                return self.extraction_blob_info[start]["Name"]
            print(f"WARNING: Missing extraction xml entry for blob at offset=0x{start:X}")
        return f"UNACCOUNTED_{start:X}_{end:X}"

    def finalize_samples(self):
        self.samples_final = list(sorted(self.samples.values(), key = lambda sample : sample.start))

        for i,sample in enumerate(self.samples_final):
            sample : AudioTableSample
            sample.resolve_basenote_rate(self.extraction_sample_info)

    def finalize_coverage(self, all_sample_banks):
        if len(self.coverage) != 0:
            # merge ranges if there are any
            self.coverage = list(sorted(self.coverage))

            merged = [list(self.coverage.pop(0))]

            while len(self.coverage) != 0:
                next = self.coverage.pop(0)
                if merged[-1][1] == next[0]:
                    merged[-1][1] = next[1]
                    merged[-1][2] = next[2]
                else:
                    merged.append(list(next))

            self.coverage = merged

        # check fully covered
        if len(self.coverage) == 1 and self.coverage[0][0] == 0 and self.coverage[0][1] == len(self.data):
            return # all accounted

        # not fully covered, determine ranges of unaccounted data
        if len(self.coverage) == 0:
            # absolutely nothing is accounted for
            unaccounted_ranges = [(0, len(self))]
        else:
            unaccounted_ranges = []
            # deal with gap at the start
            if self.coverage[0][0] != 0:
                unaccounted_ranges.append((0, self.coverage[0][0]))
            # deal with gaps in the middle
            for j,cvg in enumerate(self.coverage[:-1]):
                start = cvg[1]
                end = self.coverage[j + 1][0]
                if start != end:
                    unaccounted_ranges.append((start, end))
            # deal with gap at the end
            if self.coverage[-1][1] != len(self):
                unaccounted_ranges.append((self.coverage[-1][1], len(self)))

        # TODO if an unaccounted range is in the extraction xml, trust it before searching other banks

        unaccounted_str = "[" + ", ".join(f"(0x{start:06X}, 0x{end:06X})" for start,end in unaccounted_ranges) + "]"
        print(f"Sample Bank {self.bank_num} has incomplete coverage. Unaccounted: {unaccounted_str}")

        # search other banks for matches
        for start,end in unaccounted_ranges:
            while start != end:
                found = False

                for j,bank in enumerate(all_sample_banks):
                    if not isinstance(bank, AudioTableFile):
                        # Ignore pointer entries
                        continue

                    for sample in bank.samples_final:
                        sample : AudioTableSample

                        sample_end = start + len(sample)
                        sample_end_aligned = align(sample_end, 16)

                        if self.data[start:sample_end] == sample.data:
                            print(f"    Located match for range [0x{start:X}:0x{sample_end:X}] in bank {j} at 0x{sample.start:X}")
                            new_sample = sample.clone(start, sample_end, self.data[sample_end:sample_end_aligned])
                            new_sample.start = start
                            new_sample.end = sample_end
                            new_sample.sample_rate = sample.sample_rate
                            new_sample.base_note = sample.base_note
                            self.samples_final.append(new_sample)
                            found = True
                            start = sample_end_aligned
                            break
                    if found:
                        break
                else:
                    # found no matches, blob it
                    print(f"    No match found in other banks for range [0x{start:X}:0x{end:X}], leaving as binary blob")
                    self.samples_final.append(AudioTableData(start, end, self.data[start:end]))
                    break

        # Final sort
        self.samples_final.sort(key = lambda sample : sample.start)

    def assign_names(self):
        i = 0
        for sample in self.samples_final:
            if isinstance(sample, AudioTableSample):
                sample : AudioTableSample

                sample.name = self.sample_name(sample, i)
                sample.filename = self.sample_filename(sample, i)
                i += 1
            else:
                sample : AudioTableData

                name = self.blob_filename(sample.start, sample.end)
                sample.name = name
                sample.filename = f"{name}.bin"

    def to_xml(self, base_path):
        xml = XMLWriter()

        start = {
            "Name"        : self.name,
            "Index"       : self.bank_num,
            "Medium"      : self.table_entry.medium.name,
            "CachePolicy" : self.table_entry.cache_policy.name,
        }
        if self.buffer_bug:
            start["BufferBug"] = "true"

        xml.write_start_tag("SampleBank", start)

        # write pointers
        for index in self.pointer_indices:
            xml.write_element("Pointer", { "Index" : index })

        # write samples/blobs
        for sample in self.samples_final:
            if isinstance(sample, AudioTableSample):
                sample : AudioTableSample

                xml.write_element("Sample", {
                    "Name" : sample.name,
                    "Path" : f"$(BUILD_DIR)/{base_path}/{sample.filename}",
                })
            else:
                sample : AudioTableData

                xml.write_element("Blob", {
                    "Name" : sample.name,
                    "Path" : f"$(BUILD_DIR)/{base_path}/{sample.filename}",
                })

        xml.write_end_tag()

        return str(xml)

    def write_extraction_xml(self, path):
        xml = XMLWriter()

        xml.write_comment("This file is only for extraction of vanilla data. For other purposes see assets/audio/samplebanks/")

        start = {
            "Name"  : self.name,
            "Index" : self.bank_num,
        }
        xml.write_start_tag("SampleBank", start)

        i = 0
        for sample in self.samples_final:
            if isinstance(sample, AudioTableSample):
                sample : AudioTableSample

                xml.write_element("Sample", {
                    "Name"       : sample.name,
                    "FileName"   : sample.filename.replace(sample.codec_file_extension_compressed(), ""),
                    "Offset"     : f"0x{sample.start:06X}",
                    "SampleRate" : sample.sample_rate,
                    "BaseNote"   : sample.base_note,
                })
                i += 1
            else:
                sample : AudioTableData

                xml.write_element("Blob", {
                    "Name"   : sample.name,
                    "Offset" : f"0x{sample.start:06X}",
                    "Size"   : f"0x{sample.end - sample.start:X}",
                })

        xml.write_end_tag()

        with open(path, "w") as outfile:
            outfile.write(str(xml))

    def write_s_file(self, name, path):
        with open(path, "w") as outfile:
            out  = ".rdata\n"
            out += "\n"
            out += ".balign 16\n"
            out += "\n"
            out += f".global {name}\n"
            out += f"{name}_Start:\n"
            out += "$start:\n"
            out += "\n"

            outfile.write(out)

            i = 0
            for sample in self.samples:
                if isinstance(sample, AudioTableSample):
                    sample : AudioTableSample
                    outfile.write(sample.to_asm(self.sample_name(i)))
                    i += 1
                else:
                    sample : AudioTableData
                    outfile.write(sample.to_asm("__UNACCOUNTED__"))
