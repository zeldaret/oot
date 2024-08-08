# SPDX-FileCopyrightText: © 2024 ZeldaRET
# SPDX-License-Identifier: CC0-1.0
#
#   Extract audio files
#

import os, shutil, time
from dataclasses import dataclass
from enum import auto, Enum
from multiprocessing.pool import ThreadPool
from typing import Dict, List, Tuple, Union
from xml.etree import ElementTree
from xml.etree.ElementTree import Element

from .audio_tables import AudioCodeTable, AudioCodeTableEntry, AudioStorageMedium
from .audiotable import AudioTableData, AudioTableFile, AudioTableSample
from .audiobank_file import AudiobankFile
from .util import align, debugm, error, incbin, program_get

class MMLVersion(Enum):
    OOT = auto()
    MM = auto()

@dataclass
class GameVersionInfo:
    # Music Macro Language Version
    mml_version            : MMLVersion
    # Soundfont table code offset
    soundfont_table        : int
    # Sequence font table code offset
    seq_font_table         : int
    # Sequence table code offset
    seq_table              : int
    # Sample bank table code offset
    sample_bank_table      : int
    # Sequence enum names
    seq_enum_names         : Tuple[str]
    # List of indices corresponding to handwritten sequences
    handwritten_sequences  : Tuple[int]
    # Some soundfonts report the wrong samplebank, map them to the correct samplebank for proper sample discovery
    fake_banks             : Dict[int, int]
    # Contains audiotable indices that suffer from a buffer clearing bug
    audiotable_buffer_bugs : Tuple[int]

SAMPLECONV_PATH = f"{os.path.dirname(os.path.realpath(__file__))}/../sampleconv/sampleconv"

BASEROM_DEBUG = False

# ======================================================================================================================
#   Run
# ======================================================================================================================

def collect_sample_banks(audiotable_seg : memoryview, extracted_dir : str, version_info : GameVersionInfo,
                         table : AudioCodeTable, samplebank_xmls : Dict[int, Tuple[str, Element]]):
    sample_banks : List[Union[AudioTableFile, int]] = []

    for i,entry in enumerate(table):
        entry : AudioCodeTableEntry

        assert entry.short_data1 == 0 and entry.short_data2 == 0 and entry.short_data3 == 0, \
               "Bad data for Sample Bank entry, all short data should be 0"
        assert entry.medium == AudioStorageMedium.MEDIUM_CART , \
               "Bad data for Sample Bank entry, medium should be CART"

        if entry.size == 0:
            # Pointer to other entry, in this case the rom address is a table index

            entry_dst = table.entries[entry.rom_addr]
            sample_banks[entry.rom_addr].register_ptr(i)
            sample_banks.append(entry_dst.rom_addr)
        else:
            # Check whether this samplebank suffers from the buffer bug
            # TODO it should be possible to detect this automatically by checking padding following sample discovery
            bug = i in version_info.audiotable_buffer_bugs

            bank = AudioTableFile(i, audiotable_seg, entry, table.rom_addr, buffer_bug=bug,
                                  extraction_xml=samplebank_xmls.get(i, None))

            if BASEROM_DEBUG:
                bank.dump_bin(f"{extracted_dir}/baserom_audiotest/audiotable_files/{bank.file_name}.bin")

            sample_banks.append(bank)

    return sample_banks

def bank_data_lookup(sample_banks : List[Union[AudioTableFile, int]], e : Union[AudioTableFile, int]) -> AudioTableFile:
    if isinstance(e, int):
        if e == 255:
            return None
        return bank_data_lookup(sample_banks, sample_banks[e])
    else:
        return e

def collect_soundfonts(audiobank_seg : memoryview, extracted_dir : str, version_info : GameVersionInfo,
                       sound_font_table : AudioCodeTable, soundfont_xmls : Dict[int, Tuple[str, Element]],
                       sample_banks : List[Union[AudioTableFile, int]]):
    soundfonts = []

    for i,entry in enumerate(sound_font_table):
        entry : AudioCodeTableEntry

        # Lookup the samplebanks used by this soundfont
        bank1 = bank_data_lookup(sample_banks, version_info.fake_banks.get(i, entry.sample_bank_id_1))
        bank2 = bank_data_lookup(sample_banks, entry.sample_bank_id_2)

        # Read the data
        soundfont = AudiobankFile(audiobank_seg, i, entry, sound_font_table.rom_addr, bank1, bank2,
                                  entry.sample_bank_id_1, entry.sample_bank_id_2,
                                  extraction_xml=soundfont_xmls.get(i, None))
        soundfonts.append(soundfont)

        if BASEROM_DEBUG:
            # Write the individual file for debugging and comparison
            soundfont.dump_bin(f"{extracted_dir}/baserom_audiotest/audiobank_files/{soundfont.file_name}.bin")

    return soundfonts

def aifc_extract_one_sample(base_path : str, sample : AudioTableSample):
    aifc_path = f"{base_path}/aifc/{sample.filename}"
    ext_compressed = sample.codec_file_extension_compressed()
    ext_decompressed = sample.codec_file_extension_decompressed()
    wav_path = f"{base_path}/{sample.filename.replace(ext_compressed, ext_decompressed)}"
    # export to AIFC
    sample.to_file(aifc_path)
    # decode to AIFF/WAV
    program_get(f"{SAMPLECONV_PATH} --matching pcm16 {aifc_path} {wav_path}")

def aifc_extract_one_bin(base_path : str, sample : AudioTableData):
    # export to BIN
    if BASEROM_DEBUG:
        sample.to_file(f"{base_path}/aifc/{sample.filename}")
        # copy to correct location
        shutil.copyfile(f"{base_path}/aifc/{sample.filename}", f"{base_path}/{sample.filename}")
    else:
        sample.to_file(f"{base_path}/{sample.filename}")

def extract_samplebank(pool : ThreadPool, extracted_dir : str, sample_banks : List[Union[AudioTableFile, int]],
                       bank : AudioTableFile, write_xml : bool):
    # deal with remaining gaps, have to blob them unless we can find an exact match in another bank
    bank.finalize_coverage(sample_banks)
    # assign names
    bank.assign_names()

    base_path = f"{extracted_dir}/assets/audio/samples/{bank.name}"

    # write xml
    with open(f"{extracted_dir}/assets/audio/samplebanks/{bank.file_name}.xml", "w") as outfile:
        outfile.write(bank.to_xml(f"assets/audio/samples/{bank.name}"))

    # write the extraction xml if specified
    if write_xml:
        bank.write_extraction_xml(f"assets/xml/audio/samplebanks/{bank.file_name}.xml")

    # write sample sand blobs

    os.makedirs(f"{base_path}/aifc", exist_ok=True)

    aifc_samples = [sample for sample in bank.samples_final if     isinstance(sample, AudioTableSample)]
    bin_samples  = [sample for sample in bank.samples_final if not isinstance(sample, AudioTableSample)]

    t_start = time.time()

    # we assume the number of bin samples are very small and don't multiprocess it
    for sample in bin_samples:
        aifc_extract_one_bin(base_path, sample)

    # multiprocess aifc extraction + decompression
    async_results = [pool.apply_async(aifc_extract_one_sample, args=(base_path, sample)) for sample in aifc_samples]
    # block until done
    [res.get() for res in async_results]

    dt = time.time() - t_start
    print(f"Samplebank {bank.name} extraction took {dt:.3f}s")

    # drop aifc dir if not in debug mode
    if not BASEROM_DEBUG:
        shutil.rmtree(f"{base_path}/aifc")

def extract_audio_for_version(version_info : GameVersionInfo, extracted_dir : str, read_xml : bool, write_xml : bool):
    print("Setting up...")

    # Open baserom segments

    code_seg = None
    audiotable_seg = None
    audiobank_seg = None

    with open(f"{extracted_dir}/baserom/code", "rb") as infile:
        code_seg = memoryview(infile.read())

    with open(f"{extracted_dir}/baserom/Audiotable", "rb") as infile:
        audiotable_seg = memoryview(infile.read())

    with open(f"{extracted_dir}/baserom/Audiobank", "rb") as infile:
        audiobank_seg = memoryview(infile.read())

    # ==================================================================================================================
    # Collect audio tables
    # ==================================================================================================================

    seq_font_tbl_len = version_info.seq_table - version_info.seq_font_table

    sound_font_table = AudioCodeTable(code_seg, version_info.soundfont_table)
    sample_bank_table = AudioCodeTable(code_seg, version_info.sample_bank_table)
    sequence_table = AudioCodeTable(code_seg, version_info.seq_table)
    sequence_font_table = incbin(code_seg, version_info.seq_font_table, seq_font_tbl_len)

    if BASEROM_DEBUG:
        # Extract Table Binaries

        os.makedirs(f"{extracted_dir}/baserom_audiotest/audio_code_tables/", exist_ok=True)

        with open(f"{extracted_dir}/baserom_audiotest/audio_code_tables/samplebank_table.bin", "wb") as outfile:
            outfile.write(sample_bank_table.data)

        with open(f"{extracted_dir}/baserom_audiotest/audio_code_tables/soundfont_table.bin", "wb") as outfile:
            outfile.write(sound_font_table.data)

        with open(f"{extracted_dir}/baserom_audiotest/audio_code_tables/sequence_table.bin", "wb") as outfile:
            outfile.write(sequence_table.data)

        with open(f"{extracted_dir}/baserom_audiotest/audio_code_tables/sequence_font_table.bin", "wb") as outfile:
            outfile.write(sequence_font_table)

    # ==================================================================================================================
    # Collect extraction xmls
    # ==================================================================================================================

    samplebank_xmls : Dict[int, Tuple[str, Element]] = {}
    soundfont_xmls : Dict[int, Tuple[str, Element]] = {}
    sequence_xmls : Dict[int, Tuple[str, Element]] = {}

    if read_xml:
        # Read all present xmls

        def walk_xmls(out_dict : Dict[int, Tuple[str, Element]], path : str, typename : str):
            for root,_,files in os.walk(path):
                for f in files:
                    fullpath = os.path.join(root, f)
                    xml = ElementTree.parse(fullpath)
                    xml_root = xml.getroot()

                    if xml_root.tag != typename or "Name" not in xml_root.attrib or "Index" not in xml_root.attrib:
                        error(f"Malformed {typename} extraction xml: \"{fullpath}\"")
                    out_dict[int(xml_root.attrib["Index"])] = (f.replace(".xml", ""), xml_root)

        walk_xmls(samplebank_xmls, f"assets/xml/audio/samplebanks", "SampleBank")
        walk_xmls(soundfont_xmls, f"assets/xml/audio/soundfonts", "SoundFont")
        walk_xmls(sequence_xmls, f"assets/xml/audio/sequences", "Sequence")

        # TODO warn about any missing xmls or xmls with a bad index

    # ==================================================================================================================
    # Collect samplebanks
    # ==================================================================================================================

    if BASEROM_DEBUG:
        os.makedirs(f"{extracted_dir}/baserom_audiotest/audiotable_files", exist_ok=True)
    sample_banks = collect_sample_banks(audiotable_seg, extracted_dir, version_info, sample_bank_table, samplebank_xmls)

    # ==================================================================================================================
    # Collect soundfonts
    # ==================================================================================================================

    if BASEROM_DEBUG:
        os.makedirs(f"{extracted_dir}/baserom_audiotest/audiobank_files", exist_ok=True)
    soundfonts = collect_soundfonts(audiobank_seg, extracted_dir, version_info, sound_font_table, soundfont_xmls,
                                    sample_banks)

    # ==================================================================================================================
    # Finalize samplebanks
    # ==================================================================================================================

    for i,bank in enumerate(sample_banks):
        if isinstance(bank, AudioTableFile):
            bank.finalize_samples()

    # ==================================================================================================================
    # Extract samplebank contents
    # ==================================================================================================================

    print("Extracting samplebanks...")

    # Check that the sampleconv binary is available
    assert os.path.isfile(SAMPLECONV_PATH) , "Compile sampleconv"

    os.makedirs(f"{extracted_dir}/assets/audio/samplebanks", exist_ok=True)
    if write_xml:
        os.makedirs(f"assets/xml/audio/samplebanks", exist_ok=True)

    with ThreadPool(processes=os.cpu_count()) as pool:
        for bank in sample_banks:
            if isinstance(bank, AudioTableFile):
                extract_samplebank(pool, extracted_dir, sample_banks, bank, write_xml)

    # ==================================================================================================================
    # Extract soundfonts
    # ==================================================================================================================

    print("Extracting soundfonts...")

    os.makedirs(f"{extracted_dir}/assets/audio/soundfonts", exist_ok=True)
    if write_xml:
        os.makedirs(f"assets/xml/audio/soundfonts", exist_ok=True)

    for i,sf in enumerate(soundfonts):
        sf : AudiobankFile

        # Finalize instruments/drums/etc.
        # This step includes assigning the final samplerate and basenote for the instruments, which may be different
        # from the samplerate and basenote assigned to their sample prior.
        sf.finalize()

        # write the soundfont xml itself
        with open(f"{extracted_dir}/assets/audio/soundfonts/{sf.file_name}.xml", "w") as outfile:
            outfile.write(sf.to_xml(f"Soundfont_{i}", "assets/audio/samplebanks"))

        # write the extraction xml if specified
        if write_xml:
            sf.write_extraction_xml(f"assets/xml/audio/soundfonts/{sf.file_name}.xml")
