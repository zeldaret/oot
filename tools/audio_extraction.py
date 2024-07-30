#!/usr/bin/env python3
# SPDX-FileCopyrightText: © 2024 ZeldaRET
# SPDX-License-Identifier: CC0-1.0
#
#   Configures and runs baserom audio extraction
#

import argparse

import version_config

from audio.extraction.audio_extract import extract_audio_for_version, GameVersionInfo, MMLVersion

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="baserom audio asset extractor")
    parser.add_argument("-o", "--extracted-dir", required=True, help="path to extracted directory")
    parser.add_argument("-v", "--version", required=True, help="version name")
    parser.add_argument("--read-xml", required=False, action="store_true", help="Read extraction xml files")
    parser.add_argument("--write-xml", required=False, action="store_true", help="Write extraction xml files")
    args = parser.parse_args()
    
    version = args.version

    config = version_config.load_version_config(version)

    code_vram = config.dmadata_segments["code"].vram
    soundfont_table_code_offset = config.variables["gSoundFontTable"] - code_vram
    seq_font_table_code_offset = config.variables["gSequenceFontTable"] - code_vram
    seq_table_code_offset = config.variables["gSequenceTable"] - code_vram
    sample_bank_table_code_offset = config.variables["gSampleBankTable"] - code_vram

    # List any sequences that are "handwritten", we don't extract these by
    # default as we want these checked in for documentation.
    handwritten_sequences = (0, 1, 2, 109)

    # Sequence enum names for extraction purposes.
    seq_enum_names = (
        "NA_BGM_GENERAL_SFX",
        "NA_BGM_NATURE_AMBIENCE",
        "NA_BGM_FIELD_LOGIC",
        "NA_BGM_FIELD_INIT",
        "NA_BGM_FIELD_DEFAULT_1",
        "NA_BGM_FIELD_DEFAULT_2",
        "NA_BGM_FIELD_DEFAULT_3",
        "NA_BGM_FIELD_DEFAULT_4",
        "NA_BGM_FIELD_DEFAULT_5",
        "NA_BGM_FIELD_DEFAULT_6",
        "NA_BGM_FIELD_DEFAULT_7",
        "NA_BGM_FIELD_DEFAULT_8",
        "NA_BGM_FIELD_DEFAULT_9",
        "NA_BGM_FIELD_DEFAULT_A",
        "NA_BGM_FIELD_DEFAULT_B",
        "NA_BGM_FIELD_ENEMY_INIT",
        "NA_BGM_FIELD_ENEMY_1",
        "NA_BGM_FIELD_ENEMY_2",
        "NA_BGM_FIELD_ENEMY_3",
        "NA_BGM_FIELD_ENEMY_4",
        "NA_BGM_FIELD_STILL_1",
        "NA_BGM_FIELD_STILL_2",
        "NA_BGM_FIELD_STILL_3",
        "NA_BGM_FIELD_STILL_4",
        "NA_BGM_DUNGEON",
        "NA_BGM_KAKARIKO_ADULT",
        "NA_BGM_ENEMY",
        "NA_BGM_BOSS",
        "NA_BGM_INSIDE_DEKU_TREE",
        "NA_BGM_MARKET",
        "NA_BGM_TITLE",
        "NA_BGM_LINK_HOUSE",
        "NA_BGM_GAME_OVER",
        "NA_BGM_BOSS_CLEAR",
        "NA_BGM_ITEM_GET",
        "NA_BGM_OPENING_GANON",
        "NA_BGM_HEART_GET",
        "NA_BGM_OCA_LIGHT",
        "NA_BGM_JABU_JABU",
        "NA_BGM_KAKARIKO_KID",
        "NA_BGM_GREAT_FAIRY",
        "NA_BGM_ZELDA_THEME",
        "NA_BGM_FIRE_TEMPLE",
        "NA_BGM_OPEN_TRE_BOX",
        "NA_BGM_FOREST_TEMPLE",
        "NA_BGM_COURTYARD",
        "NA_BGM_GANON_TOWER",
        "NA_BGM_LONLON",
        "NA_BGM_GORON_CITY",
        "NA_BGM_FIELD_MORNING",
        "NA_BGM_SPIRITUAL_STONE",
        "NA_BGM_OCA_BOLERO",
        "NA_BGM_OCA_MINUET",
        "NA_BGM_OCA_SERENADE",
        "NA_BGM_OCA_REQUIEM",
        "NA_BGM_OCA_NOCTURNE",
        "NA_BGM_MINI_BOSS",
        "NA_BGM_SMALL_ITEM_GET",
        "NA_BGM_TEMPLE_OF_TIME",
        "NA_BGM_EVENT_CLEAR",
        "NA_BGM_KOKIRI",
        "NA_BGM_OCA_FAIRY_GET",
        "NA_BGM_SARIA_THEME",
        "NA_BGM_SPIRIT_TEMPLE",
        "NA_BGM_HORSE",
        "NA_BGM_HORSE_GOAL",
        "NA_BGM_INGO",
        "NA_BGM_MEDALLION_GET",
        "NA_BGM_OCA_SARIA",
        "NA_BGM_OCA_EPONA",
        "NA_BGM_OCA_ZELDA",
        "NA_BGM_OCA_SUNS",
        "NA_BGM_OCA_TIME",
        "NA_BGM_OCA_STORM",
        "NA_BGM_NAVI_OPENING",
        "NA_BGM_DEKU_TREE_CS",
        "NA_BGM_WINDMILL",
        "NA_BGM_HYRULE_CS",
        "NA_BGM_MINI_GAME",
        "NA_BGM_SHEIK",
        "NA_BGM_ZORA_DOMAIN",
        "NA_BGM_APPEAR",
        "NA_BGM_ADULT_LINK",
        "NA_BGM_MASTER_SWORD",
        "NA_BGM_INTRO_GANON",
        "NA_BGM_SHOP",
        "NA_BGM_CHAMBER_OF_SAGES",
        "NA_BGM_FILE_SELECT",
        "NA_BGM_ICE_CAVERN",
        "NA_BGM_DOOR_OF_TIME",
        "NA_BGM_OWL",
        "NA_BGM_SHADOW_TEMPLE",
        "NA_BGM_WATER_TEMPLE",
        "NA_BGM_BRIDGE_TO_GANONS",
        "NA_BGM_OCARINA_OF_TIME",
        "NA_BGM_GERUDO_VALLEY",
        "NA_BGM_POTION_SHOP",
        "NA_BGM_KOTAKE_KOUME",
        "NA_BGM_ESCAPE",
        "NA_BGM_UNDERGROUND",
        "NA_BGM_GANONDORF_BOSS",
        "NA_BGM_GANON_BOSS",
        "NA_BGM_END_DEMO",
        "NA_BGM_STAFF_1",
        "NA_BGM_STAFF_2",
        "NA_BGM_STAFF_3",
        "NA_BGM_STAFF_4",
        "NA_BGM_FIRE_BOSS",
        "NA_BGM_TIMED_MINI_GAME",
        "NA_BGM_CUTSCENE_EFFECTS",
    )

    # Some bugged soundfonts report the wrong samplebank. Map them to the correct samplebank for proper sample discovery.
    fake_banks = { 37 : 2 }

    # Some audiotable banks have a buffer clearing bug. Indicate which banks suffer from this.
    audiotable_buffer_bugs = (0,)

    version_info = GameVersionInfo(MMLVersion.OOT,
                                   soundfont_table_code_offset,
                                   seq_font_table_code_offset,
                                   seq_table_code_offset,
                                   sample_bank_table_code_offset,
                                   seq_enum_names,
                                   handwritten_sequences,
                                   fake_banks,
                                   audiotable_buffer_bugs)

    extract_audio_for_version(version_info, args.extracted_dir, args.read_xml, args.write_xml)
