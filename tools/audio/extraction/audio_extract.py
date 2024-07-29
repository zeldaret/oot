#!/usr/bin/env python3
# audio_extract.py
# SPDX-FileCopyrightText: © 2024 ZeldaRET
# SPDX-License-Identifier: CC0-1.0
#
#   Extract audio files
#

import argparse, os
from multiprocessing.pool import ThreadPool
from typing import Dict, List, Tuple, Union
from xml.etree import ElementTree
from xml.etree.ElementTree import Element

from audio_tables import AudioCodeTable, AudioStorageMedium
from audiotable import AudioTableFile
from audiobank_file import AudiobankFile

from util import debugm, error, incbin

from config import GAMEVERSION_ALL_OOT, VERSION_TABLE, GameVersionInfo
from config import AUDIOTABLE_BUFFER_BUGS, FAKE_BANKS

BASEROM_DEBUG = False

# ======================================================================================================================
#   Run
# ======================================================================================================================

def collect_sample_banks(rom_image : memoryview, extracted_dir : str, version_info : GameVersionInfo,
                         table : AudioCodeTable, samplebank_xmls : Dict[int, Tuple[str, Element]]):
    sample_banks = []

    for i,entry in enumerate(table):
        entry : AudioCodeTable.AudioCodeTableEntry

        assert entry.short_data1 == 0 and entry.short_data2 == 0 and entry.short_data3 == 0, \
               "Bad data for Sample Bank entry, all short data should be 0"
        assert entry.medium == AudioStorageMedium.MEDIUM_CART , \
               "Bad data for Sample Bank entry, medium should be CART"

        if entry.size == 0:
            # Pointer to other entry, in this case the rom address is a table index

            entry_dst = table.entries[entry.rom_addr]
            sample_banks[entry.rom_addr].register_ptr(i)
            sample_banks.append(entry_dst.rom_addr)

            # debugm(f"{i} Pointer: {entry.rom_addr} -> 0x{entry_dst.rom_addr:X}, 0x{entry_dst.size:X}")
        else:
            # Check whether this samplebank suffers from the buffer bug
            # TODO it should be possible to detect this automatically by checking padding following sample discovery
            if version_info.version_id in AUDIOTABLE_BUFFER_BUGS:
                bug = i in AUDIOTABLE_BUFFER_BUGS[version_info.version_id]
            else:
                bug = False

            bank = AudioTableFile(i, rom_image, entry, version_info.audiotable_rom + table.rom_addr, buffer_bug=bug,
                                  extraction_xml=samplebank_xmls.get(i, None))

            if BASEROM_DEBUG:
                bank.dump_bin(f"{extracted_dir}/baserom_audiotest/audiotable_files/{bank.file_name}.bin")

            sample_banks.append(bank)

    return sample_banks

def bank_data_lookup(sample_banks : List[AudioTableFile], e : Union[AudioTableFile, int]) -> AudioTableFile:
    if isinstance(e, int):
        if e == 255:
            return None
        return bank_data_lookup(sample_banks, sample_banks[e])
    else:
        return e

def collect_soundfonts(rom_image : memoryview, extracted_dir : str, version_info : GameVersionInfo,
                       sound_font_table : AudioCodeTable, soundfont_xmls : Dict[int, Tuple[str, Element]],
                       sample_banks : List[AudioTableFile]):
    soundfonts = []

    for i,entry in enumerate(sound_font_table):
        entry : AudioCodeTable.AudioCodeTableEntry

        # Lookup the samplebanks used by this soundfont
        bank1 = bank_data_lookup(sample_banks, FAKE_BANKS[version_info.version_id].get(i, entry.sample_bank_id_1))
        bank2 = bank_data_lookup(sample_banks, entry.sample_bank_id_2)

        # debugm(f"\n\nBANK BEGIN {i} {e.sample_bank_id_1} {e.sample_bank_id_2}\n\n\n")

        # Read the data
        soundfont = AudiobankFile(rom_image, i, entry, version_info.audiobank_rom + sound_font_table.rom_addr, bank1,
                                  bank2, entry.sample_bank_id_1, entry.sample_bank_id_2,
                                  extraction_xml=soundfont_xmls.get(i, None))
        soundfonts.append(soundfont)

        if BASEROM_DEBUG:
            # Write the individual file for debugging and comparison
            soundfont.dump_bin(f"{extracted_dir}/baserom_audiotest/audiobank_files/{soundfont.file_name}.bin")

    return soundfonts

def extract_samplebank(extracted_dir : str, sample_banks : List[AudioTableFile], bank : AudioTableFile,
                       write_xml : bool):
    # deal with remaining gaps, have to blob them unless we can find an exact match in another bank
    bank.finalize_coverage(sample_banks)
    # assign names
    bank.assign_names()

    # write xml
    with open(f"{extracted_dir}/assets/audio/samplebanks/{bank.file_name}.xml", "w") as outfile:
        outfile.write(bank.to_xml(f"assets/audio/samples/{bank.name}"))

    # write the extraction xml if specified
    if write_xml:
        bank.write_extraction_xml(f"assets/xml/audio/samplebanks/{bank.file_name}.xml")

def extract_audio_for_version(version_name : str, rom_path : str, read_xml : bool, write_xml : bool):
    print("Setting up...")

    # Get version info

    if version_name not in VERSION_TABLE:
        error(f"Invalid version: {version_name}, must be one of {set(VERSION_TABLE.keys())}")

    version_info = VERSION_TABLE[version_name]

    game_prefix = "oot-" if version_info.version_id in GAMEVERSION_ALL_OOT else "mm-"
    extracted_dir = f"extracted/{version_name.replace(game_prefix, '')}"

    # Open baserom (uncompressed)

    with open(rom_path, "rb") as infile:
        baserom = bytearray(infile.read())
    rom_image = memoryview(baserom)

    # ==================================================================================================================
    # Collect audio tables
    # ==================================================================================================================

    seq_font_tbl_len = version_info.seq_table - version_info.seq_font_table

    sound_font_table = AudioCodeTable(rom_image, version_info.soundfont_table)
    sample_bank_table = AudioCodeTable(rom_image, version_info.sample_bank_table)
    sequence_table = AudioCodeTable(rom_image, version_info.seq_table)
    sequence_font_table = incbin(rom_image, version_info.seq_font_table, seq_font_tbl_len)

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
    sample_banks = collect_sample_banks(rom_image, extracted_dir, version_info, sample_bank_table, samplebank_xmls)

    # ==================================================================================================================
    # Collect soundfonts
    # ==================================================================================================================

    if BASEROM_DEBUG:
        os.makedirs(f"{extracted_dir}/baserom_audiotest/audiobank_files", exist_ok=True)
    soundfonts = collect_soundfonts(rom_image, extracted_dir, version_info, sound_font_table, soundfont_xmls,
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

    os.makedirs(f"{extracted_dir}/assets/audio/samplebanks", exist_ok=True)
    if write_xml:
        os.makedirs(f"assets/xml/audio/samplebanks", exist_ok=True)

    for bank in sample_banks:
        if isinstance(bank, AudioTableFile):
            extract_samplebank(extracted_dir, sample_banks, bank, write_xml)

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

    print("Done")

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="baserom audio asset extractor")
    parser.add_argument("-r", "--rom", required=True, help="path to baserom image")
    parser.add_argument("-v", "--version", required=True, help="baserom version")
    parser.add_argument("--read-xml", required=False, action="store_true", help="Read extraction xml files")
    parser.add_argument("--write-xml", required=False, action="store_true", help="Write extraction xml files")
    args = parser.parse_args()

    extract_audio_for_version(args.version, args.rom, args.read_xml, args.write_xml)
