# SPDX-FileCopyrightText: © 2024 ZeldaRET
# SPDX-License-Identifier: CC0-1.0
#
#   Implements audiobank file
#

import struct
from typing import Optional, Tuple
from xml.etree.ElementTree import Element

from .audio_tables import AudioCodeTableEntry
from .audiobank_structs import AdpcmBook, AdpcmLoop, Drum, Instrument, SoundFontSample, SoundFontSound
from .envelope import Envelope
from .audiotable import AudioTableFile, AudioTableSample
from .tuning import pitch_names
from .util import XMLWriter, align, debugm, merge_like_ranges, merge_ranges

# Debug settings
PLOT_DRUM_TUNING = False
LOG_COVERAGE = False

def coverage_log(str):
    if LOG_COVERAGE: debugm(str)

if PLOT_DRUM_TUNING:
    import matplotlib.pyplot as plt



# dummy types for coverage labeling

class Padding:
    pass

class SfxListPtr:
    SIZE = 4

class DrumsListPtr:
    SIZE = 4

class InstrumentPtr:
    SIZE = 4

class DrumPtr:
    SIZE = 4





class DrumGroup:

    def __init__(self):
        self.drums = []
        self.start = None
        self.end = None
        self.sample_header_offset = None
        self.sample = None

        # Filled in at finalize
        self.envelope_offset = None
        self.envelope = None
        self.release_rate = None
        self.pan = None
        self.sample_header_offset = None
        self.sample_rate = None
        self.base_note = None
        self.needs_rate_override = None
        self.needs_note_override = None

    def __len__(self):
        return len(self.drums)

    def __iter__(self):
        for drum in self.drums:
            yield drum

    def append(self, drum):
        self.drums.append(drum)

    def set_range(self, start, end):
        self.start, self.end = start, end

    def finalize(self, envelopes, sample_lookup_fn):
        # A drum group should use the same envelope for all entries
        env_offsets = set(drum.envelope for drum in self.drums)
        assert len(env_offsets) == 1
        self.envelope_offset = env_offsets.pop()
        self.envelope : Envelope = envelopes[self.envelope_offset]

        # A drum group should use the same release rate
        release_rates = set(drum.release_rate for drum in self.drums)
        assert len(release_rates) == 1
        self.release_rate = release_rates.pop()

        # The release rate used should belong to the envelope used
        assert self.release_rate in self.envelope.release_rates

        # A drum group should always contain a single pan value
        pans = set(drum.pan for drum in self.drums)
        assert len(pans) == 1
        self.pan = pans.pop()

        # A drum group should be the same sample repeated
        sample_header_offsets = set(drum.sample for drum in self.drums)
        assert len(sample_header_offsets) == 1
        sample_header_offset = sample_header_offsets.pop()

        # Fetch sample header
        self.sample_header_offset = sample_header_offset
        sample = sample_lookup_fn(sample_header_offset)
        sample : AudioTableSample

        # Collect final samplerate and basenotes for each drum in the group
        final_rate = None
        notes = []
        for drum in self:
            drum : Drum

            tuning = drum.tuning
            assert tuning in sample.tuning_map
            # Get from sample
            rate, note = sample.tuning_map[tuning]

            if final_rate is None:
                final_rate = rate
            # This should never occur as drum groups are split when the samplerate changes
            assert final_rate == rate

            notes.append(note)

        # Note values should increase monotonically in a drum group
        note_indices = [pitch_names.index(note) + 21 for note in notes]
        assert all(v == note_indices[0] + i for i,v in enumerate(note_indices))

        # Assign final rate and note.
        # Use first note in the group as the basenote for the whole group, the rest will be filled in during build.
        self.sample_rate = final_rate
        self.base_note = notes[0]

        assert sample.sample_rate is not None
        assert sample.base_note is not None

        # Needs override if they do not agree with the final values in the sample
        self.needs_rate_override = sample.sample_rate != self.sample_rate
        self.needs_note_override = sample.base_note != self.base_note

    def to_xml(self, xml : XMLWriter, name : str, sample_name_func, envelope_name_func):
        attributes = {
            "Name"     : name,
            "Envelope" : envelope_name_func(self.envelope_offset),
        }

        if self.release_rate != self.envelope.release_rate():
            attributes["Release"] = self.release_rate

        attributes["Pan"] = self.pan

        if self.start == self.end:
            attributes["Note"] = pitch_names[self.start]
        else:
            attributes["NoteStart"] = pitch_names[self.start]
            attributes["NoteEnd"] = pitch_names[self.end]

        attributes["Sample"] = sample_name_func(self.sample_header_offset)

        if self.needs_rate_override:
            attributes["SampleRate"] = self.sample_rate
        if self.needs_note_override:
            attributes["BaseNote"] = self.base_note

        xml.write_element("Drum", attributes)







class AudiobankFile:
    """
    """

    def __init__(self, audiobank_seg : memoryview, index : int, table_entry : AudioCodeTableEntry,
                 seg_offset : int, bank1 : AudioTableFile, bank2 : AudioTableFile, bank1_num : int, bank2_num : int,
                 extraction_xml : Tuple[str, Element] = None):
        self.bank_num = index
        self.table_entry : AudioCodeTableEntry = table_entry
        self.num_instruments = self.table_entry.num_instruments
        self.data = self.table_entry.data(audiobank_seg, seg_offset)
        self.bank1 : AudioTableFile = bank1
        self.bank2 : AudioTableFile = bank2
        self.bank1_num = bank1_num
        self.bank2_num = bank2_num

        if extraction_xml is None:
            self.file_name = f"Soundfont_{self.bank_num}"
            self.name = f"Soundfont_{self.bank_num}"

            self.extraction_envelopes_info = None
            self.extraction_instruments_info = None
            self.extraction_drums_info = None
            self.extraction_effects_info = None
        else:
            self.file_name = extraction_xml[0]
            self.name = extraction_xml[1].attrib["Name"]

            self.extraction_envelopes_info = []
            self.extraction_instruments_info = {}
            self.extraction_drums_info = []
            self.extraction_effects_info = []

            for item in extraction_xml[1]:
                if item.tag == "Envelopes":
                    for env in item:
                        assert env.tag == "Envelope"
                        self.extraction_envelopes_info.append(env.attrib["Name"])
                elif item.tag == "Instruments":
                    for instr in item:
                        assert instr.tag == "Instrument"
                        self.extraction_instruments_info[int(instr.attrib["ProgramNumber"])] = instr.attrib["Name"]
                elif item.tag == "Drums":
                    for drum in item:
                        self.extraction_drums_info.append(drum.attrib["Name"])
                elif item.tag == "Effects":
                    for effect in item:
                        self.extraction_effects_info.append(effect.attrib["Name"])
                else:
                    assert False, item.tag

        # Coverage consists of a list of itervals of the form [[start,type],[end,type]]
        self.coverage = []
        self.envelopes = {}
        self.sample_headers = {}
        self.books = {}
        self.loops = {}
        self.loops_have_frames = False

        # Read Drums

        self.collect_drums()
        self.group_drums()

        # Read Sfx

        self.collect_sfx()

        # Read Instruments

        self.collect_instruments()


        # Check Coverage

        self.cvg_log()
        self.coverage = merge_ranges(self.coverage)

        self.resolve_cvg_gaps()
        self.coverage = merge_ranges(self.coverage)

        coverage_log("Final Coverage:")
        coverage_log([[[interval[0][0], interval[0][1].__name__], [interval[1][0], interval[1][1].__name__]] for interval in self.coverage])
        coverage_log(f"[[{0}, {len(self.data)}]]")
        assert len(self.coverage) == 1
        coverage_log("OK")

        # Check End of File

        self.check_end()

    def collect_drums(self):
        # Read structures

        self.drums_ptr_list_ptr = self.read_pointer(0, DrumsListPtr)
        assert self.drums_ptr_list_ptr % 16 == 0
        self.drums_ptr_list = self.read_pointer_list(self.drums_ptr_list_ptr, self.table_entry.num_drums, DrumPtr)
        self.drums = self.read_list_from_offset_list(self.drums_ptr_list, Drum)

        # Process structures

        for drum in self.drums:
            if drum is None:
                # NULL pointer in drums pointer list
                continue

            # Read envelope
            self.read_envelope(drum.envelope, drum.release_rate)

            # Read sample if it exists
            if drum.tuning != 0 and drum.sample != 0:
                self.read_sample_header(drum.sample, drum.tuning, drum)

    def group_drums(self):
        self.drum_groups = []

        first = True
        last_drum = None
        for drum in self.drums:
            if drum is None:
                if last_drum is None and not first:
                    self.drum_groups[-1].append(None)
                else:
                    self.drum_groups.append([None])
                    last_drum = None
            else:
                drum : Drum

                if not drum.group_continuation(last_drum):
                    # group changed
                    self.drum_groups.append(DrumGroup())

                self.drum_groups[-1].append(drum)
                last_drum = drum

            first = False

        note_start = 0
        for drum_grp in self.drum_groups:
            note_end = note_start + len(drum_grp) - 1

            if any(d is not None for d in drum_grp):
                drum_grp : DrumGroup
                drum_grp.set_range(note_start, note_end)

            note_start = note_end + 1

    def collect_sfx(self):
        # Read structures

        self.sfx_list_ptr = self.read_pointer(4, SfxListPtr)
        assert self.sfx_list_ptr % 16 == 0
        self.sfx = self.read_list(self.sfx_list_ptr, self.table_entry.num_sfx, SoundFontSound)

        # Process structures

        for sfx in self.sfx:
            # Read sample if it exists
            if sfx.tuning != 0 and sfx.sample != 0:
                self.read_sample_header(sfx.sample, sfx.tuning, sfx)

    def collect_instruments(self):
        # Read structures
        self.instrument_offset_list = self.read_pointer_list(8, self.table_entry.num_instruments, InstrumentPtr)
        self.instruments = self.read_list_from_offset_list(self.instrument_offset_list, Instrument)

        # Record order information
        for i,instr in enumerate(self.instruments):
            if instr is None:
                # NULL entry in pointer list
                continue
            instr.program_number = i
            instr.offset = self.instrument_offset_list[i]

        # Get rid of NULL entries, these correspond to program numbers with no assigned instrument.
        self.instruments = [instr for instr in self.instruments if instr is not None]

        # Build index map for sequence checking
        self.instrument_index_map = { instr.program_number : instr for instr in self.instruments }

        # The struct index records the order of the instrument structures themselves. This is often different than the
        # order they appear in the pointer table, since the pointer table is indexed by program number. We want to emit
        # xml entries in struct order with a property stating their program number as this seems most user-friendly.
        for i,instr in enumerate(sorted(self.instruments, key=lambda instr : instr.offset)):
            instr : Instrument
            instr.struct_index = i

        # Read data that this structure references

        for i,instr in enumerate(self.instruments):
            # Read the envelope
            self.read_envelope(instr.envelope, instr.release_rate)

            # Read the samples, if they exist
            if instr.low_notes_tuning != 0 and instr.low_notes_sample != 0:
                self.read_sample_header(instr.low_notes_sample, instr.low_notes_tuning, instr)

            if instr.normal_notes_tuning != 0 and instr.normal_notes_sample != 0:
                self.read_sample_header(instr.normal_notes_sample, instr.normal_notes_tuning, instr)

            if instr.high_notes_tuning != 0 and instr.high_notes_sample != 0:
                self.read_sample_header(instr.high_notes_sample, instr.high_notes_tuning, instr)

    def cvg_log(self):
        if not LOG_COVERAGE:
            return

        types_ranges = merge_like_ranges(self.coverage)

        for type_range in types_ranges:
            interval_start, interval_start_type = type_range[0]
            interval_end, _ = type_range[1]

            if interval_start == interval_end:
                continue

            interval_length = interval_end - interval_start

            if interval_start_type == int:
                sizeof_type = 4
            elif interval_start_type == Padding:
                sizeof_type = interval_end - interval_start
            elif interval_start_type == AdpcmBook:
                sizeof_type = self.read_book_size(interval_start)
            elif interval_start_type == AdpcmLoop:
                sizeof_type = self.read_loop_size(interval_start)
            elif interval_start_type == Envelope.EnvelopePoint:
                sizeof_type = 4
            else:
                sizeof_type = interval_start_type.SIZE

            array_size = interval_length // sizeof_type

            output_str = f"0x{interval_start:04X} - 0x{interval_end:04X} : {interval_start_type.__name__}"
            if array_size != 1 or interval_start_type == Envelope.EnvelopePoint:
                output_str += f"[{array_size}]"

            coverage_log(output_str)

    def resolve_cvg_gaps(self):
        if len(self.coverage) < 2:
            # There are already no gaps, nothing to do
            return

        # Resolve gaps in coverage with heuristics

        for i in range(len(self.coverage) - 1):
            prev_interval = self.coverage[i]
            next_interval = self.coverage[i + 1]

            unref_start_offset, unref_start_type = prev_interval[1]
            unref_end_offset, unref_end_type = next_interval[0]

            unaccounted_data = self.data[unref_start_offset:unref_end_offset]

            if unref_end_type in [AdpcmBook, AdpcmLoop] and all(b == 0 for b in unaccounted_data) and \
               unref_end_offset - unref_start_offset < 16 and (unref_end_offset % 16) == 0:
                # Book and Loop structures are aligned to 16 byte boundaries, silently mark padding
                self.coverage.append([[unref_start_offset, Padding], [unref_end_offset, Padding]])
                continue

            coverage_log(f"Unaccounted: 0x{unref_start_offset:04X}({unref_start_type.__name__}) " + \
                         f"to 0x{unref_end_offset:04X}({unref_end_type.__name__})")
            coverage_log([f"0x{b:02X}" for b in unaccounted_data])

            try:
                if unref_start_type == Envelope.EnvelopePoint:
                    # Assume it is an envelope if it follows an envelope
                    assert unref_start_offset not in self.envelopes
                    coverage_log("Unaccounted follows an envelope, assume it is an envelope")
                    st = self.read_envelope(unref_start_offset, None, is_zero=all(b == 0 for b in unaccounted_data))

                elif unref_start_type in [SoundFontSample, AdpcmLoop]:
                    # Orphaned loops are unlikely, it's more likely a SoundFontSample
                    coverage_log("Unaccounted follows a SoundFontSample or AdpcmLoop, assuming SoundFontSample")
                    st = self.read_sample_header(unref_start_offset, None, None)

                elif unref_start_type == Instrument:
                    coverage_log("Unaccounted follows an Instrument, assume it is an Instrument")
                    st : Instrument = self.read_structure(unref_start_offset, unref_start_type)
                    # Check that we already saw the sample header this instrument wants
                    assert st.normal_notes_sample in self.sample_headers
                    assert st.normal_range_hi == 127 or st.high_notes_sample in self.sample_headers
                    assert st.normal_range_lo == 0 or st.low_notes_sample in self.sample_headers
                    # Insert into instrument list in the appropriate location, mark it as unused so that sfc knows not
                    # to add it to the instrument pointer list when recompiling
                    st.offset = unref_start_offset
                    st.unused = True

                    # Assign struct index for this unreferenced instrument
                    new_index = -1
                    for instr in sorted(self.instruments, key= lambda instr : instr.struct_index):
                        instr : Instrument

                        if instr.offset > unref_start_offset:
                            if new_index == -1:
                                # Record struct index for the unused instrument
                                new_index = instr.struct_index
                            # Increment struct indices for every structure that occurs after this one
                            instr.struct_index += 1
                    else:
                        # Give it a new index at the end
                        if new_index == -1:
                            new_index = len(self.instruments)

                    st.struct_index = new_index
                    self.instruments.append(st)
                else:
                    st = self.read_structure(unref_start_offset, unref_start_type)
                    coverage_log(st)
                    assert False, "Unhandled coverage case" # handle more structures if they appear

                coverage_log(st)
            except Exception as e:
                coverage_log("FAILED")
                if all(b == 0 for b in unaccounted_data):
                    coverage_log("Probably padding or an empty file?")
                raise e

    def check_end(self):
        self.pad_to_size = None

        end = self.coverage[-1][1][0]
        end_aligned = align(end, 16)
        if end_aligned != len(self.data):
            print(f"[Soundfont {self.bank_num:2}] Did not reach end of the file?",
                  f"0x{end_aligned:X} vs 0x{len(self.data):X}")
            assert all(b == 0 for b in self.data[end_aligned:])
            self.pad_to_size = len(self.data)

        self.file_padding = None

        if not all(b == 0 for b in self.data[end:]):
            print(f"[Soundfont {self.bank_num:2}] Non-zero unaccounted data at the end of the file?",
                  f"From 0x{end:X} to 0x{len(self.data):X}")
            self.file_padding = self.data[end:]

    def dump_bin(self, path):
        with open(path, "wb") as outfile:
            outfile.write(self.data)

    def read_loop_size(self, offset):
        loop_count, = struct.unpack(">I", self.data[offset+8:offset+0xC])
        return 0x30 if loop_count != 0 else 0x10

    def read_loop_struct(self, offset):
        return AdpcmLoop(self.logged_read(offset, self.read_loop_size(offset), AdpcmLoop))

    def read_book_size(self, offset):
        order, npredictors = struct.unpack(">ii", self.data[offset:offset+8])
        return 8 + 2 * 8 * order * npredictors

    def read_sample_header(self, offset, tuning, ob):
        assert offset % 16 == 0

        if offset in self.sample_headers:
            # Don't re-read a sample header structure if it was already read
            sample_header = self.sample_headers[offset]
            sample_header : SoundFontSample
        else:
            # Read the new sample header and cache it
            sample_header = self.read_structure(offset, SoundFontSample)
            self.sample_headers[offset] = sample_header

            # Samples must always have an associated book
            assert sample_header.book != 0

        if sample_header.book in self.books:
            # Lookup the book, samples may share books if they are identical
            book = self.books[sample_header.book]
        else:
            # Read the new book
            book_size = self.read_book_size(sample_header.book)
            book = AdpcmBook(self.logged_read(sample_header.book, book_size, AdpcmBook))

            # Books are `8 + 16 * n` bytes large and should start on an 0x10 byte boundary.
            # Check that we get 8 bytes of padding following the book.
            book_end = sample_header.book + book_size
            assert sample_header.book % 16 == 0
            assert book_end % 16 == 8
            assert all(b == 0 for b in self.logged_read(book_end, 8, Padding))

            # Cache it
            self.books[sample_header.book] = book

        # Read the loop, if there is one
        if sample_header.loop == 0:
            # No loop
            loop = None
        elif sample_header.loop in self.loops:
            # Already seen, look it up
            loop = self.loops[sample_header.loop]
        else:
            # Read new loop structure
            loop = self.read_loop_struct(sample_header.loop)

            # If loops were determined to store the sample's total frame count, require that all loops with nonzero
            # count all have the same behavior within the same soundfont
            if self.loops_have_frames and loop.count != 0:
                assert loop.num_frames != 0, loop

            # If the numFrames field is nonzero anywhere, record this
            # TODO this may miss some checks, fix?
            if loop.num_frames != 0:
                self.loops_have_frames = True

        # Add the sample to the appropriate samplebank
        bank = self.bank1 if sample_header.medium == 0 else self.bank2
        if tuning is not None:
            bank.add_sample(sample_header, book, loop, tuning, ob)
        else:
            # If we found unreferenced sample data that was not discovered elsewhere there is no tuning value to recover
            # the samplerate from. These need to be handled manually, but this is currently unsupported as this does not
            # occur in zelda64 audio banks.
            assert sample_header.sample_addr in bank.samples , \
                   "Unreferenced sample header refers to sample that was not otherwise discovered, cannot " + \
                   "automatically recover sample rate"

        return sample_header

    def read_envelope_points(self, offset, is_zero=False):
        size = 0

        if not is_zero:
            points = []

            while True:
                point = Envelope.EnvelopePoint(*struct.unpack(">hh", self.data[offset + size:][:4]))
                assert point.delay >= -3 # TODO this could be used to determine whether data is really an envelope
                points.append(point)
                size += 4
                if point.delay < 0:
                    break

            # pad to 0x10 byte boundary
            while (size % 16) != 0:
                point = Envelope.EnvelopePoint(*struct.unpack(">hh", self.data[offset + size:][:4]))
                assert point.delay == 0 and point.arg == 0
                points.append(point)
                size += 4
        else:
            size = 16
            points = [Envelope.EnvelopePoint(0, 0), Envelope.EnvelopePoint(0, 0),
                      Envelope.EnvelopePoint(0, 0), Envelope.EnvelopePoint(0, 0)]

        return points, size

    def read_envelope(self, offset, release_rate, is_zero=False):
        assert offset % 16 == 0

        if offset in self.envelopes:
            # Look it up if it was already seen
            env = self.envelopes[offset]
        else:
            # Read new
            points, size = self.read_envelope_points(offset, is_zero)
            env = Envelope(points, is_zero=is_zero)

            # Cache it
            self.envelopes[offset] = env
            # Mark coverage
            self.coverage.append([[offset, Envelope.EnvelopePoint], [offset + size, Envelope.EnvelopePoint]])

        # Add release rate if there was one
        if release_rate is not None:
            env.release_rates.append(release_rate)

        return env

    def logged_read(self, start, length, dtype):
        """
        Read data while also recording coverage information
        """
        end = start + length
        self.coverage.append([[start, dtype], [end, dtype]])
        return self.data[start:end]

    def read_structure(self, offset, dtype):
        return dtype(self.logged_read(offset, dtype.SIZE, dtype))

    def read_list(self, offset, num, dtype):
        return [dtype(i, self.logged_read(offset + i * dtype.SIZE, dtype.SIZE, dtype)) for i in range(num)]

    def read_pointer(self, offset, ptr_type):
        return struct.unpack('>I', self.logged_read(offset, 4, ptr_type))[0]

    def read_list_from_offset_list(self, offset_list, dtype):
        assert all([b % 0x10 == 0 for b in offset_list])
        return [dtype(self.logged_read(offset, dtype.SIZE, dtype)) if offset != 0 else None for offset in offset_list]

    def read_pointer_list(self, offset, count, ptr_type):
        # May be NULL, but only if the count is 0
        assert (count == 0 and offset == 0) or offset != 0

        if count == 0:
            # No data
            return []

        # Read pointer list contents
        ptr_list = [i[0] for i in struct.iter_unpack('>I', self.logged_read(offset, 4 * count, ptr_type))]
        assert len(ptr_list) == count

        # Pointer lists seem to always pad to the next 0x10 byte boundary
        pointers_end = offset + 4 * count
        possible_pad = self.logged_read(pointers_end, align(pointers_end, 16) - pointers_end, Padding)
        assert all(b == 0 for b in possible_pad)

        return ptr_list

    def sorted_envelopes(self):
        # sort by offset
        for i,(offset,env) in enumerate(sorted(self.envelopes.items(), key=lambda x : x[0])):
            yield i,(offset,env)

    def envelope_name_func(self, offset):
        return self.envelopes[offset].name

    def sorted_sample_headers(self):
        for i,offset in enumerate(sorted(self.sample_headers)):
            yield i,(offset,self.sample_headers[offset])

    def lookup_sample(self, header_offset : int) -> Optional[AudioTableSample]:
        if header_offset == 0:
            return None
        header : SoundFontSample = self.sample_headers[header_offset]
        bank = self.bank1 if header.medium == 0 else self.bank2
        return bank.lookup_sample(header.sample_addr)

    def lookup_sample_name(self, sample_header : SoundFontSample):
        bank = self.bank1 if sample_header.medium == 0 else self.bank2
        name = bank.lookup_sample(sample_header.sample_addr).name
        assert name is not None
        return name

    def sample_name_func(self, offset):
        return self.lookup_sample_name(self.sample_headers[offset])

    def finalize(self):
        # Assign envelope names
        for i,(offset,env) in self.sorted_envelopes():
            env : Envelope
            env.name = self.envelope_name(i)

        # Link Instruments
        for instr in self.instruments:
            instr.finalize(self.lookup_sample)

        # Final Drum Groups

        if PLOT_DRUM_TUNING:
            plt.clf()
            plt.cla()
            plt.title(f"Drums in soundfont {self.bank_num}")
            plt.xlabel("Drum index")
            plt.ylabel("Tuning value")

        for drum_grp in self.drum_groups:
            if all(d is None for d in drum_grp):
                continue

            if PLOT_DRUM_TUNING:
                plt.plot(   range(drum_grp.start,drum_grp.end), [drum.tuning for drum in drum_grp])
                plt.scatter(range(drum_grp.start,drum_grp.end), [drum.tuning for drum in drum_grp])

            drum_grp : DrumGroup
            drum_grp.finalize(self.envelopes, self.lookup_sample)

        if PLOT_DRUM_TUNING:
            if len(self.drum_groups) != 0:
                plt.savefig(f"figures/drums_{self.bank_num}.png")

        # Link SFX
        for sfx in self.sfx:
            sfx.finalize(self.lookup_sample)

        # TODO resolve decay/release index overrides?

    def envelope_name(self, index):
        if self.extraction_envelopes_info is not None:
            return self.extraction_envelopes_info[index]
        else:
            return f"Env{index}"

    def instrument_name(self, program_number):
        if self.extraction_instruments_info is not None:
            return self.extraction_instruments_info[program_number]
        else:
            return f"INST_{program_number}"

    def drum_grp_name(self, index):
        if self.extraction_drums_info is not None:
            return self.extraction_drums_info[index]
        else:
            return f"DRUM_{index}"

    def effect_name(self, index):
        if self.extraction_effects_info is not None:
            return self.extraction_effects_info[index]
        else:
            return f"EFFECT_{index}"

    def envelopes_to_xml(self, xml : XMLWriter):
        if len(self.envelopes) == 0:
            return

        xml.write_start_tag("Envelopes")

        for i,(offset,env) in self.sorted_envelopes():
            env : Envelope
            env.to_xml(xml, self.envelope_name(i))

        xml.write_end_tag()

    def samples_to_xml(self, xml : XMLWriter):
        if len(self.sample_headers) == 0:
            return

        xml.write_start_tag("Samples")

        # Emit these in the order the sample headers appear in the soundfont
        for i,(offset,sample_header) in self.sorted_sample_headers():
            sample_header : SoundFontSample
            sample_header.to_xml(xml, self.lookup_sample_name(sample_header))

        xml.write_end_tag()

    def sfx_to_xml(self, xml : XMLWriter):
        if len(self.sfx) == 0:
            return

        xml.write_start_tag("Effects")

        for i,sfx in enumerate(self.sfx):
            sfx.to_xml(xml, self.effect_name(i), self.sample_name_func)

        xml.write_end_tag()

    def drums_to_xml(self, xml : XMLWriter):
        if len(self.drums) == 0:
            return

        xml.write_start_tag("Drums")

        for i,drum_grp in enumerate(self.drum_groups):
            if isinstance(drum_grp, list):
                for _ in range(len(drum_grp)):
                    xml.write_element("Drum")
            else:
                drum_grp : DrumGroup
                drum_grp.to_xml(xml, self.drum_grp_name(i), self.sample_name_func, self.envelope_name_func)

        xml.write_end_tag()

    def instruments_to_xml(self, xml : XMLWriter):
        if len(self.instruments) == 0:
            return

        xml.write_start_tag("Instruments")

        # Write in struct order
        for instr in sorted(self.instruments, key=lambda instr : instr.struct_index):
            instr : Instrument
            name = self.instrument_name(instr.program_number) if not instr.unused else None
            instr.to_xml(xml, name, self.sample_name_func, self.envelope_name_func)

        xml.write_end_tag()

    def to_xml(self, name, samplebanks_base):
        xml = XMLWriter()

        start = {
            "Name"        : name,
            "Index"       : self.bank_num,
            "Medium"      : self.table_entry.medium.name,
            "CachePolicy" : self.table_entry.cache_policy.name,
            "SampleBank"  : f"$(BUILD_DIR)/{samplebanks_base}/{self.bank1.file_name}.xml",
        }

        # If the samplebank1 index is not the true index (that is it's a pointer), write an Indirect
        if self.bank1_num != self.bank1.bank_num:
            start["Indirect"] = self.bank1_num

        if self.bank2_num != 255: # bank2 is not None if bank2_num != 255
            start["SampleBankDD"] = f"$(BUILD_DIR)/{samplebanks_base}/{self.bank2.file_name}.xml",
            # TODO we should really write an indirect for DD banks too if bank2_num != bank2.bank_num

        if self.loops_have_frames:
            # Some MM banks have sample frame counts embedded in loop headers, but not all soundfonts do this
            start["LoopsHaveFrames"] = "true"

        if max(instr.program_number or 0 for instr in self.instruments) + 1 != self.table_entry.num_instruments:
            # Some banks have trailing NULLs in their instrument pointer tables, record the max length for matching
            start["NumInstruments"] = self.table_entry.num_instruments

        if self.pad_to_size is not None:
            # The final soundfont typically has extra zeros at the end
            start["PadToSize"] = f"0x{self.pad_to_size:X}"

        xml.write_start_tag("Soundfont", start)

        self.envelopes_to_xml(xml)
        self.samples_to_xml(xml)

        self.sfx_to_xml(xml)
        self.drums_to_xml(xml)
        self.instruments_to_xml(xml)

        if self.file_padding is not None:
            # Some soundfonts may have garbage data in the final 16-byte file padding
            xml.write_start_tag("MatchPadding")
            xml.write_raw(", ".join(f"0x{b:02X}" for b in self.file_padding))
            xml.write_end_tag()

        xml.write_end_tag()
        return str(xml)

    def write_extraction_xml(self, path):
        xml = XMLWriter()

        xml.write_comment("This file is only for extraction of vanilla data. For other purposes see assets/audio/soundfonts/")

        xml.write_start_tag("SoundFont", {
            "Name"  : self.name,
            "Index" : self.bank_num,
        })

        # add contents for names

        if len(self.envelopes) != 0:
            xml.write_start_tag("Envelopes")

            for i in range(len(self.envelopes)):
                xml.write_element("Envelope", {
                    "Name" : self.envelope_name(i)
                })

            xml.write_end_tag()

        if len(self.instruments) != 0:
            xml.write_start_tag("Instruments")

            # Write in struct order
            for instr in sorted(self.instruments, key=lambda instr : instr.struct_index):
                instr : Instrument
                if not instr.unused:
                    xml.write_element("Instrument", {
                        "ProgramNumber" : instr.program_number,
                        "Name" : self.instrument_name(instr.program_number),
                    })

            xml.write_end_tag()

        if any(isinstance(dg, DrumGroup) for dg in self.drum_groups):
            xml.write_start_tag("Drums")

            for i,drum_grp in enumerate(self.drum_groups):
                if isinstance(drum_grp, DrumGroup):
                    xml.write_element("Drum", {
                        "Name" : self.drum_grp_name(i)
                    })

            xml.write_end_tag()

        if len(self.sfx) != 0:
            xml.write_start_tag("Effects")

            for i,sfx in enumerate(self.sfx):
                xml.write_element("Effect", {
                    "Name" : self.effect_name(i)
                })

            xml.write_end_tag()

        xml.write_end_tag()

        with open(path, "w") as outfile:
            outfile.write(str(xml))
