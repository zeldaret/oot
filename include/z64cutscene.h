#ifndef Z64CUTSCENE_H
#define Z64CUTSCENE_H

#include "ultra64.h"
#include "z64math.h"

struct PlayState;

typedef union CutsceneData {
    s32 i;
    f32 f;
    s16 s[2];
    s8  b[4];
} CutsceneData;

typedef enum CutsceneState {
    /* 0 */ CS_STATE_IDLE,
    /* 1 */ CS_STATE_START,
    /* 2 */ CS_STATE_RUN,
    /* 3 */ CS_STATE_STOP,
    /* 4 */ CS_STATE_RUN_UNSTOPPABLE
} CutsceneState;

typedef enum CutsceneCmd {
    /* 0xFFFF */ CS_CMD_END_OF_SCRIPT = -1,
    /* 0x0001 */ CS_CMD_CAM_EYE_SPLINE = 0x01,
    /* 0x0002 */ CS_CMD_CAM_AT_SPLINE,
    /* 0x0003 */ CS_CMD_MISC,
    /* 0x0004 */ CS_CMD_LIGHT_SETTING,
    /* 0x0005 */ CS_CMD_CAM_EYE_SPLINE_REL_TO_PLAYER,
    /* 0x0006 */ CS_CMD_CAM_AT_SPLINE_REL_TO_PLAYER,
    /* 0x0007 */ CS_CMD_CAM_EYE,
    /* 0x0008 */ CS_CMD_CAM_AT,
    /* 0x0009 */ CS_CMD_RUMBLE_CONTROLLER,
    /* 0x000A */ CS_CMD_PLAYER_CUE,
    /* 0x000B */ CS_CMD_UNIMPLEMENTED_B,
    /* 0x000D */ CS_CMD_UNIMPLEMENTED_D = 0x0D,
    /* 0x000E */ CS_CMD_ACTOR_CUE_1_0,
    /* 0x000F */ CS_CMD_ACTOR_CUE_0_0,
    /* 0x0010 */ CS_CMD_ACTOR_CUE_1_1,
    /* 0x0011 */ CS_CMD_ACTOR_CUE_0_1,
    /* 0x0012 */ CS_CMD_ACTOR_CUE_0_2,
    /* 0x0013 */ CS_CMD_TEXT,
    /* 0x0015 */ CS_CMD_UNIMPLEMENTED_15 = 0x15,
    /* 0x0016 */ CS_CMD_UNIMPLEMENTED_16,
    /* 0x0017 */ CS_CMD_ACTOR_CUE_0_3,
    /* 0x0018 */ CS_CMD_ACTOR_CUE_1_2,
    /* 0x0019 */ CS_CMD_ACTOR_CUE_2_0,
    /* 0x001B */ CS_CMD_UNIMPLEMENTED_1B = 0x1B,
    /* 0x001C */ CS_CMD_UNIMPLEMENTED_1C,
    /* 0x001D */ CS_CMD_ACTOR_CUE_3_0,
    /* 0x001E */ CS_CMD_ACTOR_CUE_4_0,
    /* 0x001F */ CS_CMD_ACTOR_CUE_6_0,
    /* 0x0020 */ CS_CMD_UNIMPLEMENTED_20,
    /* 0x0021 */ CS_CMD_UNIMPLEMENTED_21,
    /* 0x0022 */ CS_CMD_ACTOR_CUE_0_4,
    /* 0x0023 */ CS_CMD_ACTOR_CUE_1_3,
    /* 0x0024 */ CS_CMD_ACTOR_CUE_2_1,
    /* 0x0025 */ CS_CMD_ACTOR_CUE_3_1,
    /* 0x0026 */ CS_CMD_ACTOR_CUE_4_1,
    /* 0x0027 */ CS_CMD_ACTOR_CUE_0_5,
    /* 0x0028 */ CS_CMD_ACTOR_CUE_1_4,
    /* 0x0029 */ CS_CMD_ACTOR_CUE_2_2,
    /* 0x002A */ CS_CMD_ACTOR_CUE_3_2,
    /* 0x002B */ CS_CMD_ACTOR_CUE_4_2,
    /* 0x002C */ CS_CMD_ACTOR_CUE_5_0,
    /* 0x002D */ CS_CMD_TRANSITION,
    /* 0x002E */ CS_CMD_ACTOR_CUE_0_6,
    /* 0x002F */ CS_CMD_ACTOR_CUE_4_3,
    /* 0x0030 */ CS_CMD_ACTOR_CUE_1_5,
    /* 0x0031 */ CS_CMD_ACTOR_CUE_7_0,
    /* 0x0032 */ CS_CMD_ACTOR_CUE_2_3,
    /* 0x0033 */ CS_CMD_ACTOR_CUE_3_3,
    /* 0x0034 */ CS_CMD_ACTOR_CUE_6_1,
    /* 0x0035 */ CS_CMD_ACTOR_CUE_3_4,
    /* 0x0036 */ CS_CMD_ACTOR_CUE_4_4,
    /* 0x0037 */ CS_CMD_ACTOR_CUE_5_1,
    /* 0x0039 */ CS_CMD_ACTOR_CUE_6_2 = 0x39,
    /* 0x003A */ CS_CMD_ACTOR_CUE_6_3,
    /* 0x003B */ CS_CMD_UNIMPLEMENTED_3B,
    /* 0x003C */ CS_CMD_ACTOR_CUE_7_1,
    /* 0x003D */ CS_CMD_UNIMPLEMENTED_3D,
    /* 0x003E */ CS_CMD_ACTOR_CUE_8_0,
    /* 0x003F */ CS_CMD_ACTOR_CUE_3_5,
    /* 0x0040 */ CS_CMD_ACTOR_CUE_1_6,
    /* 0x0041 */ CS_CMD_ACTOR_CUE_3_6,
    /* 0x0042 */ CS_CMD_ACTOR_CUE_3_7,
    /* 0x0043 */ CS_CMD_ACTOR_CUE_2_4,
    /* 0x0044 */ CS_CMD_ACTOR_CUE_1_7,
    /* 0x0045 */ CS_CMD_ACTOR_CUE_2_5,
    /* 0x0046 */ CS_CMD_ACTOR_CUE_1_8,
    /* 0x0047 */ CS_CMD_UNIMPLEMENTED_47,
    /* 0x0048 */ CS_CMD_ACTOR_CUE_2_6,
    /* 0x0049 */ CS_CMD_UNIMPLEMENTED_49,
    /* 0x004A */ CS_CMD_ACTOR_CUE_2_7,
    /* 0x004B */ CS_CMD_ACTOR_CUE_3_8,
    /* 0x004C */ CS_CMD_ACTOR_CUE_0_7,
    /* 0x004D */ CS_CMD_ACTOR_CUE_5_2,
    /* 0x004E */ CS_CMD_ACTOR_CUE_1_9,
    /* 0x004F */ CS_CMD_ACTOR_CUE_4_5,
    /* 0x0050 */ CS_CMD_ACTOR_CUE_1_10,
    /* 0x0051 */ CS_CMD_ACTOR_CUE_2_8,
    /* 0x0052 */ CS_CMD_ACTOR_CUE_3_9,
    /* 0x0053 */ CS_CMD_ACTOR_CUE_4_6,
    /* 0x0054 */ CS_CMD_ACTOR_CUE_5_3,
    /* 0x0055 */ CS_CMD_ACTOR_CUE_0_8,
    /* 0x0056 */ CS_CMD_START_SEQ,
    /* 0x0057 */ CS_CMD_STOP_SEQ,
    /* 0x0058 */ CS_CMD_ACTOR_CUE_6_4,
    /* 0x0059 */ CS_CMD_ACTOR_CUE_7_2,
    /* 0x005A */ CS_CMD_ACTOR_CUE_5_4,
    /* 0x005D */ CS_CMD_ACTOR_CUE_0_9 = 0x5D,
    /* 0x005E */ CS_CMD_ACTOR_CUE_1_11,
    /* 0x0069 */ CS_CMD_ACTOR_CUE_0_10 = 0x69,
    /* 0x006A */ CS_CMD_ACTOR_CUE_2_9,
    /* 0x006B */ CS_CMD_ACTOR_CUE_0_11,
    /* 0x006C */ CS_CMD_ACTOR_CUE_3_10,
    /* 0x006D */ CS_CMD_UNIMPLEMENTED_6D,
    /* 0x006E */ CS_CMD_ACTOR_CUE_0_12,
    /* 0x006F */ CS_CMD_ACTOR_CUE_7_3,
    /* 0x0070 */ CS_CMD_UNIMPLEMENTED_70,
    /* 0x0071 */ CS_CMD_UNIMPLEMENTED_71,
    /* 0x0072 */ CS_CMD_ACTOR_CUE_7_4,
    /* 0x0073 */ CS_CMD_ACTOR_CUE_6_5,
    /* 0x0074 */ CS_CMD_ACTOR_CUE_1_12,
    /* 0x0075 */ CS_CMD_ACTOR_CUE_2_10,
    /* 0x0076 */ CS_CMD_ACTOR_CUE_1_13,
    /* 0x0077 */ CS_CMD_ACTOR_CUE_0_13,
    /* 0x0078 */ CS_CMD_ACTOR_CUE_1_14,
    /* 0x0079 */ CS_CMD_ACTOR_CUE_2_11,
    /* 0x007B */ CS_CMD_ACTOR_CUE_0_14 = 0x7B,
    /* 0x007C */ CS_CMD_FADE_OUT_SEQ,
    /* 0x007D */ CS_CMD_ACTOR_CUE_1_15,
    /* 0x007E */ CS_CMD_ACTOR_CUE_2_12,
    /* 0x007F */ CS_CMD_ACTOR_CUE_3_11,
    /* 0x0080 */ CS_CMD_ACTOR_CUE_4_7,
    /* 0x0081 */ CS_CMD_ACTOR_CUE_5_5,
    /* 0x0082 */ CS_CMD_ACTOR_CUE_6_6,
    /* 0x0083 */ CS_CMD_ACTOR_CUE_1_16,
    /* 0x0084 */ CS_CMD_ACTOR_CUE_2_13,
    /* 0x0085 */ CS_CMD_ACTOR_CUE_3_12,
    /* 0x0086 */ CS_CMD_ACTOR_CUE_7_5,
    /* 0x0087 */ CS_CMD_ACTOR_CUE_4_8,
    /* 0x0088 */ CS_CMD_ACTOR_CUE_5_6,
    /* 0x0089 */ CS_CMD_ACTOR_CUE_6_7,
    /* 0x008A */ CS_CMD_ACTOR_CUE_0_15,
    /* 0x008B */ CS_CMD_ACTOR_CUE_0_16,
    /* 0x008C */ CS_CMD_TIME,
    /* 0x008D */ CS_CMD_ACTOR_CUE_1_17,
    /* 0x008E */ CS_CMD_ACTOR_CUE_7_6,
    /* 0x008F */ CS_CMD_ACTOR_CUE_9_0,
    /* 0x0090 */ CS_CMD_ACTOR_CUE_0_17,
    /* 0x03E8 */ CS_CMD_DESTINATION = 0x03E8
} CutsceneCmd;

typedef enum CutsceneMiscType {
    /* 0x00 */ CS_MISC_UNIMPLEMENTED_0,
    /* 0x01 */ CS_MISC_RAIN,
    /* 0x02 */ CS_MISC_LIGHTNING,
    /* 0x03 */ CS_MISC_SET_CSFLAG_0, // also sets flag 2 if in Temple of Time
    /* 0x04 */ CS_MISC_UNIMPLEMENTED_4,
    /* 0x05 */ CS_MISC_UNIMPLEMENTED_5,
    /* 0x06 */ CS_MISC_LIFT_FOG,
    /* 0x07 */ CS_MISC_CLOUDY_SKY,
    /* 0x08 */ CS_MISC_FADE_KOKIRI_GRASS_ENV_ALPHA,
    /* 0x09 */ CS_MISC_SNOW,
    /* 0x0A */ CS_MISC_SET_CSFLAG_1,
    /* 0x0B */ CS_MISC_DEKU_TREE_DEATH,
    /* 0x0C */ CS_MISC_STOP_CUTSCENE,
    /* 0x0D */ CS_MISC_TRIFORCE_FLASH,
    /* 0x0E */ CS_MISC_SET_LOCKED_VIEWPOINT,
    /* 0x0F */ CS_MISC_SHOW_TITLE_CARD,
    /* 0x10 */ CS_MISC_QUAKE_START,
    /* 0x11 */ CS_MISC_QUAKE_STOP,
    /* 0x12 */ CS_MISC_STOP_STORM_AND_ADVANCE_TO_DAY,
    /* 0x13 */ CS_MISC_SET_FLAG_FAST_WINDMILL,
    /* 0x14 */ CS_MISC_SET_FLAG_WELL_DRAINED,
    /* 0x15 */ CS_MISC_SET_FLAG_LAKE_HYLIA_RESTORED,
    /* 0x16 */ CS_MISC_VISMONO_BLACK_AND_WHITE,
    /* 0x17 */ CS_MISC_VISMONO_SEPIA,
    /* 0x18 */ CS_MISC_HIDE_ROOM,
    /* 0x19 */ CS_MISC_TIME_ADVANCE_TO_NIGHT,
    /* 0x1A */ CS_MISC_SET_TIME_BASED_LIGHT_SETTING,
    /* 0x1B */ CS_MISC_RED_PULSATING_LIGHTS,
    /* 0x1C */ CS_MISC_HALT_ALL_ACTORS,
    /* 0x1D */ CS_MISC_RESUME_ALL_ACTORS,
    /* 0x1E */ CS_MISC_SET_CSFLAG_3,
    /* 0x1F */ CS_MISC_SET_CSFLAG_4,
    /* 0x20 */ CS_MISC_SANDSTORM_FILL,
    /* 0x21 */ CS_MISC_SUNSSONG_START,
    /* 0x22 */ CS_MISC_FREEZE_TIME,
    /* 0x23 */ CS_MISC_LONG_SCARECROW_SONG
} CutsceneMiscType;

typedef enum CutsceneTextType {
    /* 0x00 */ CS_TEXT_NORMAL,
    /* 0x01 */ CS_TEXT_CHOICE,
    /* 0x02 */ CS_TEXT_OCARINA_ACTION,
    /* 0x03 */ CS_TEXT_GORON_RUBY, // use `altTextId1` in the ruby cutscene if sapphire is already obtained
    /* 0x04 */ CS_TEXT_ZORA_SAPPHIRE // use `altTextId1` in the sapphire cutscene if ruby is already obtained
} CutsceneTextType;

typedef enum CutsceneFadeOutSeqPlayer {
    /* 0x03 */ CS_FADE_OUT_FANFARE = 3,
    /* 0x04 */ CS_FADE_OUT_BGM_MAIN
} CutsceneFadeOutSeqPlayer;

typedef enum CutsceneTransitionType {
    /* 0x01 */ CS_TRANS_GRAY_FILL_IN = 1, // has hardcoded sounds for some scenes
    /* 0x02 */ CS_TRANS_BLUE_FILL_IN,
    /* 0x03 */ CS_TRANS_RED_FILL_OUT,
    /* 0x04 */ CS_TRANS_GREEN_FILL_OUT,
    /* 0x05 */ CS_TRANS_GRAY_FILL_OUT,
    /* 0x06 */ CS_TRANS_BLUE_FILL_OUT,
    /* 0x07 */ CS_TRANS_RED_FILL_IN,
    /* 0x08 */ CS_TRANS_GREEN_FILL_IN,
    /* 0x09 */ CS_TRANS_TRIGGER_INSTANCE, // used with `TRANS_MODE_INSTANCE_WAIT`
    /* 0x0A */ CS_TRANS_BLACK_FILL_OUT,
    /* 0x0B */ CS_TRANS_BLACK_FILL_IN,
    /* 0x0C */ CS_TRANS_BLACK_FILL_OUT_TO_HALF, // used with `TRANS_MODE_CS_BLACK_FILL`
    /* 0x0D */ CS_TRANS_BLACK_FILL_IN_FROM_HALF
} CutsceneTransitionType;

typedef enum CutsceneDestination {
    /* 0x00 */ CS_DEST_UNIMPLEMENTED_0,
    /* 0x01 */ CS_DEST_CUTSCENE_MAP_GANON_HORSE,
    /* 0x02 */ CS_DEST_CUTSCENE_MAP_THREE_GODDESSES,
    /* 0x03 */ CS_DEST_GERUDO_VALLEY_DIN_PART_1,
    /* 0x04 */ CS_DEST_DEATH_MOUNTAIN_TRAIL_NAYRU,
    /* 0x05 */ CS_DEST_KOKIRI_FOREST_FARORE,
    /* 0x06 */ CS_DEST_CUTSCENE_MAP_TRIFORCE_CREATION,
    /* 0x07 */ CS_DEST_KOKIRI_FOREST_RECEIVE_KOKIRI_EMERALD,
    /* 0x08 */ CS_DEST_TEMPLE_OF_TIME_FROM_MASTER_SWORD,
    /* 0x09 */ CS_DEST_GERUDO_VALLEY_DIN_PART_2,
    /* 0x0A */ CS_DEST_LINKS_HOUSE_INTRO,
    /* 0x0B */ CS_DEST_KOKIRI_FOREST_INTRO,
    /* 0x0C */ CS_DEST_DEATH_MOUNTAIN_TRAIL_FROM_GORON_RUBY,
    /* 0x0D */ CS_DEST_ZORAS_FOUNTAIN_FROM_ZORAS_SAPPHIRE,
    /* 0x0E */ CS_DEST_KOKIRI_FOREST_FROM_KOKIRI_EMERALD,
    /* 0x0F */ CS_DEST_TEMPLE_OF_TIME_KOKIRI_EMERALD_RESTORED, // unused
    /* 0x10 */ CS_DEST_TEMPLE_OF_TIME_GORON_RUBY_RESTORED, // unused
    /* 0x11 */ CS_DEST_TEMPLE_OF_TIME_ZORAS_SAPPHIRE_RESTORED, // unused
    /* 0x12 */ CS_DEST_TEMPLE_OF_TIME_AFTER_LIGHT_MEDALLION,
    /* 0x13 */ CS_DEST_DEATH_MOUNTAIN_TRAIL, // unused
    /* 0x14 */ CS_DEST_UNIMPLEMENTED_14,
    /* 0x15 */ CS_DEST_LAKE_HYLIA_WATER_RESTORED,
    /* 0x16 */ CS_DEST_DESERT_COLOSSUS_REQUIEM, // unused
    /* 0x17 */ CS_DEST_CUTSCENE_MAP_GANONDORF_DEFEATED_CREDITS,
    /* 0x18 */ CS_DEST_JABU_JABU,
    /* 0x19 */ CS_DEST_CHAMBER_OF_SAGES_LIGHT_MEDALLION,
    /* 0x1A */ CS_DEST_TEMPLE_OF_TIME_KOKIRI_EMERALD_RESTORED_2, // unused
    /* 0x1B */ CS_DEST_TEMPLE_OF_TIME_GORON_RUBY_RESTORED_2, // unused
    /* 0x1C */ CS_DEST_TEMPLE_OF_TIME_ZORAS_SAPPHIRE_RESTORED_2, // unused
    /* 0x1D */ CS_DEST_CHAMBER_OF_SAGES_FOREST_MEDALLION,
    /* 0x1E */ CS_DEST_CHAMBER_OF_SAGES_FIRE_MEDALLION,
    /* 0x1F */ CS_DEST_CHAMBER_OF_SAGES_WATER_MEDALLION,
    /* 0x20 */ CS_DEST_HYRULE_FIELD_FLASHBACK,
    /* 0x21 */ CS_DEST_HYRULE_FIELD_FROM_ZELDA_ESCAPE,
    /* 0x22 */ CS_DEST_CUTSCENE_MAP_GANONDORF_FROM_MASTER_SWORD, // unused
    /* 0x23 */ CS_DEST_HYRULE_FIELD_INTRO_DREAM,
    /* 0x24 */ CS_DEST_UNIMPLEMENTED_24,
    /* 0x25 */ CS_DEST_UNIMPLEMENTED_25,
    /* 0x26 */ CS_DEST_CUTSCENE_MAP_SHEIKAH_LEGEND,
    /* 0x27 */ CS_DEST_TEMPLE_OF_TIME_ZELDA_REVEAL,
    /* 0x28 */ CS_DEST_TEMPLE_OF_TIME_GET_LIGHT_ARROWS,
    /* 0x29 */ CS_DEST_LAKE_HYLIA_FROM_LAKE_RESTORED,
    /* 0x2A */ CS_DEST_KAKARIKO_VILLAGE_DRAIN_WELL,
    /* 0x2B */ CS_DEST_WINDMILL_FROM_WELL_DRAINED,
    /* 0x2C */ CS_DEST_TEMPLE_OF_TIME_FROM_ALL_STONES_RESTORED,
    /* 0x2D */ CS_DEST_UNIMPLEMENTED_2D,
    /* 0x2E */ CS_DEST_TEMPLE_OF_TIME_AFTER_LIGHT_MEDALLION_ALT, // unused, uses a different transition
    /* 0x2F */ CS_DEST_KAKARIKO_VILLAGE_NOCTURNE_PART_2,
    /* 0x30 */ CS_DEST_DESERT_COLOSSUS_FROM_REQUIEM,
    /* 0x31 */ CS_DEST_TEMPLE_OF_TIME_FROM_LIGHT_ARROWS,
    /* 0x32 */ CS_DEST_KAKARIKO_VILLAGE_FROM_NOCTURNE,
    /* 0x33 */ CS_DEST_HYRULE_FIELD_FROM_ZELDAS_COURTYARD,
    /* 0x34 */ CS_DEST_TEMPLE_OF_TIME_SONG_OF_TIME,
    /* 0x35 */ CS_DEST_HYRULE_FIELD_FROM_SONG_OF_TIME,
    /* 0x36 */ CS_DEST_GERUDO_VALLEY_CREDITS,
    /* 0x37 */ CS_DEST_GERUDO_FORTRESS_CREDITS,
    /* 0x38 */ CS_DEST_KAKARIKO_VILLAGE_CREDITS,
    /* 0x39 */ CS_DEST_DEATH_MOUNTAIN_TRAIL_CREDITS_PART_1,
    /* 0x3A */ CS_DEST_GORON_CITY_CREDITS,
    /* 0x3B */ CS_DEST_LAKE_HYLIA_CREDITS,
    /* 0x3C */ CS_DEST_ZORAS_FOUNTAIN_CREDITS, // unused, crashes
    /* 0x3D */ CS_DEST_ZORAS_DOMAIN_CREDITS,
    /* 0x3E */ CS_DEST_KOKIRI_FOREST_CREDITS_PART_1,
    /* 0x3F */ CS_DEST_KOKIRI_FOREST_CREDITS_PART_2,
    /* 0x40 */ CS_DEST_HYRULE_FIELD_CREDITS,
    /* 0x41 */ CS_DEST_LON_LON_RANCH_CREDITS_PART_1_ALT, // unused
    /* 0x42 */ CS_DEST_KAKARIKO_VILLAGE_FROM_TRAIL_OWL,
    /* 0x43 */ CS_DEST_HYRULE_FIELD_FROM_LAKE_HYLIA_OWL,
    /* 0x44 */ CS_DEST_CUTSCENE_MAP_DEKU_SPROUT_PART_2,
    /* 0x45 */ CS_DEST_KOKIRI_FOREST_DEKU_SPROUT_PART_3,
    /* 0x46 */ CS_DEST_DEATH_MOUNTAIN_TRAIL_CREDITS_PART_2,
    /* 0x47 */ CS_DEST_TEMPLE_OF_TIME_CREDITS,
    /* 0x48 */ CS_DEST_ZELDAS_COURTYARD_CREDITS,
    /* 0x49 */ CS_DEST_LON_LON_RANCH_CREDITS_PART_1,
    /* 0x4A */ CS_DEST_LON_LON_RANCH_CREDITS_PART_2,
    /* 0x4B */ CS_DEST_LON_LON_RANCH_CREDITS_PART_3,
    /* 0x4C */ CS_DEST_LON_LON_RANCH_CREDITS_PART_4,
    /* 0x4D */ CS_DEST_LON_LON_RANCH_CREDITS_PART_5,
    /* 0x4E */ CS_DEST_LON_LON_RANCH_CREDITS_PART_6,
    /* 0x4F */ CS_DEST_LON_LON_RANCH_1, // unused
    /* 0x50 */ CS_DEST_LON_LON_RANCH_2, // unused
    /* 0x51 */ CS_DEST_LON_LON_RANCH_3, // unused
    /* 0x52 */ CS_DEST_LON_LON_RANCH_4, // unused
    /* 0x53 */ CS_DEST_LON_LON_RANCH_5, // unused
    /* 0x54 */ CS_DEST_LON_LON_RANCH_6, // unused
    /* 0x55 */ CS_DEST_LON_LON_RANCH_7, // unused
    /* 0x56 */ CS_DEST_LON_LON_RANCH_8, // unused
    /* 0x57 */ CS_DEST_LON_LON_RANCH_9, // unused
    /* 0x58 */ CS_DEST_LON_LON_RANCH_10, // unused
    /* 0x59 */ CS_DEST_LON_LON_RANCH_11, // unused
    /* 0x5A */ CS_DEST_LON_LON_RANCH_12, // unused
    /* 0x5B */ CS_DEST_LON_LON_RANCH_13, // unused
    /* 0x5C */ CS_DEST_LON_LON_RANCH_14, // unused
    /* 0x5D */ CS_DEST_LON_LON_RANCH_15, // unused
    /* 0x5E */ CS_DEST_LON_LON_RANCH_FROM_EPONAS_SONG,
    /* 0x5F */ CS_DEST_STONES_RESTORED_CONDITIONAL, // unused
    /* 0x60 */ CS_DEST_DESERT_COLOSSUS_FROM_CHAMBER_OF_SAGES,
    /* 0x61 */ CS_DEST_GRAVEYARD_FROM_CHAMBER_OF_SAGES,
    /* 0x62 */ CS_DEST_DEATH_MOUNTAIN_CRATER_FROM_CHAMBER_OF_SAGES,
    /* 0x63 */ CS_DEST_SACRED_FOREST_MEADOW_WARP_PAD, // unused
    /* 0x64 */ CS_DEST_KOKIRI_FOREST_FROM_CHAMBER_OF_SAGES,
    /* 0x65 */ CS_DEST_DESERT_COLOSSUS_FROM_NABOORU_CAPTURE,
    /* 0x66 */ CS_DEST_TEMPLE_OF_TIME_FRONT_OF_PEDESTAL, // unused
    /* 0x67 */ CS_DEST_HYRULE_FIELD_TITLE_SCREEN,
    /* 0x68 */ CS_DEST_TITLE_SCREEN_DEMO,
    /* 0x69 */ CS_DEST_GRAVEYARD_SUNS_SONG_PART_2,
    /* 0x6A */ CS_DEST_ROYAL_FAMILYS_TOMB_SUNS_SONG_PART_3,
    /* 0x6B */ CS_DEST_GANONS_CASTLE_DISPEL_FOREST_BEAM,
    /* 0x6C */ CS_DEST_GANONS_CASTLE_DISPEL_WATER_BEAM,
    /* 0x6D */ CS_DEST_GANONS_CASTLE_DISPEL_SHADOW_BEAM,
    /* 0x6E */ CS_DEST_GANONS_CASTLE_DISPEL_FIRE_BEAM,
    /* 0x6F */ CS_DEST_GANONS_CASTLE_DISPEL_LIGHT_BEAM,
    /* 0x70 */ CS_DEST_GANONS_CASTLE_DISPEL_SPIRIT_BEAM,
    /* 0x71 */ CS_DEST_GANONS_CASTLE_DISPEL_BARRIER_CONDITONAL,
    /* 0x72 */ CS_DEST_HYRULE_FIELD_FROM_FAIRY_OCARINA,
    /* 0x73 */ CS_DEST_HYRULE_FIELD_FROM_IMPA_ESCORT,
    /* 0x74 */ CS_DEST_FROM_RAURU_FINAL_MESSAGE_CONDITIONAL,
    /* 0x75 */ CS_DEST_HYRULE_FIELD_CREDITS_SKY,
    /* 0x76 */ CS_DEST_GANON_BATTLE_TOWER_COLLAPSE,
    /* 0x77 */ CS_DEST_ZELDAS_COURTYARD_RECEIVE_LETTER
} CutsceneDestination;

typedef union CsCmdCam {
    struct {
        /* 0x00 */ u16 unused0;
        /* 0x02 */ u16 startFrame;
        /* 0x04 */ u16 endFrame;
    };
    s32 _words[2];
} CsCmdCam; // size = 0x8


typedef union CsCmdMisc {
    struct {
        /* 0x00 */ u16 type;
        /* 0x02 */ u16 startFrame;
        /* 0x04 */ u16 endFrame;
    };
    s32 _words[12];
} CsCmdMisc; // size = 0x30

typedef union CsCmdLightSetting {
    struct {
        /* 0x00 */ u8 unused0;
        /* 0x01 */ u8 settingPlusOne;
        /* 0x02 */ u16 startFrame;
        /* 0x04 */ u16 endFrame; // unused
    };
    s32 _words[12];
} CsCmdLightSetting; // size = 0x30

typedef union CsCmdStartSeq {
    struct {
        /* 0x00 */ u8 unused0;
        /* 0x01 */ u8 seqIdPlusOne;
        /* 0x02 */ u16 startFrame;
        /* 0x04 */ u16 endFrame; // unused
    };
    s32 _words[12];
} CsCmdStartSeq; // size = 0x30

typedef union CsCmdStopSeq {
    struct {
        /* 0x00 */ u8 unused0;
        /* 0x01 */ u8 seqIdPlusOne;
        /* 0x02 */ u16 startFrame;
        /* 0x04 */ u16 endFrame; // unused
    };
    s32 _words[12];
} CsCmdStopSeq; // size = 0x30

typedef union CsCmdFadeOutSeq {
    struct {
        /* 0x00 */ u16 seqPlayer;
        /* 0x02 */ u16 startFrame;
        /* 0x04 */ u16 endFrame;
    };
    s32 _words[12];
} CsCmdFadeOutSeq; // size = 0x30

typedef union CsCmdRumble {
    struct {
        /* 0x00 */ u16 unused0;
        /* 0x02 */ u16 startFrame;
        /* 0x04 */ u16 endFrame; // unused
        /* 0x06 */ u8 sourceStrength;
        /* 0x07 */ u8 duration;
        /* 0x08 */ u8 decreaseRate;
    };
    s32 _words[3];
} CsCmdRumble; // size = 0xC

typedef union CsCmdTime {
    struct {
        /* 0x00 */ u16 unused0;
        /* 0x02 */ u16 startFrame;
        /* 0x04 */ u16 endFrame; // unused
        /* 0x06 */ u8  hour;
        /* 0x07 */ u8  minute;
    };
    s32 _words[3];
} CsCmdTime; // size = 0xC

typedef union CsCmdDestination {
    struct {
        /* 0x00 */ u16 destination;
        /* 0x02 */ u16 startFrame;
        /* 0x04 */ u16 endFrame; // unused
    };
    s32 _words[2];
} CsCmdDestination; // size = 0x8

typedef union CsCmdText {
    struct {
        /* 0x00 */ u16 textId; // can also be an ocarina action for `CS_TEXT_OCARINA_ACTION`
        /* 0x02 */ u16 startFrame;
        /* 0x04 */ u16 endFrame;
        /* 0x06 */ u16 type;
        /* 0x08 */ u16 altTextId1;
        /* 0x0A */ u16 altTextId2;
    };
    s32 _words[3];
} CsCmdText; // size = 0xC

#define CS_TEXT_ID_NONE 0xFFFF

typedef union CsCmdTransition {
    struct {
        /* 0x00 */ u16 type;
        /* 0x02 */ u16 startFrame;
        /* 0x04 */ u16 endFrame;
    };
    s32 _words[2];
} CsCmdTransition; // size = 0x8

typedef union CsCmdActorCue {
    struct {
        /* 0x00 */ u16 id; // "dousa"
        /* 0x02 */ u16 startFrame;
        /* 0x04 */ u16 endFrame;
        /* 0x06 */ Vec3us rot;
        /* 0x0C */ Vec3i startPos;
        /* 0x18 */ Vec3i endPos;
    };
    s32 _words[12];
} CsCmdActorCue; // size = 0x30

typedef union CutsceneCameraPoint {
    struct {
        /* 0x00 */ s8 continueFlag;
        /* 0x01 */ s8 cameraRoll;
        /* 0x02 */ u16 nextPointFrame;
        /* 0x04 */ f32 viewAngle; // in degrees
        /* 0x08 */ Vec3s pos;
    };
    s32 _words[4];
} CutsceneCameraPoint; // size = 0x10

#define CS_CAM_CONTINUE 0
#define CS_CAM_STOP -1

#define CS_CAM_DATA_NOT_APPLIED 0xFFFF

typedef struct CutsceneCameraDirection {
    /* 0x00 */ Vec3f at;
    /* 0x0C */ Vec3f eye;
    /* 0x18 */ s16 roll;
    /* 0x1A */ s16 fov;
} CutsceneCameraDirection; // size = 0x1C

typedef struct CutsceneCameraMove {
    /* 0x0 */ CutsceneCameraPoint* atPoints;
    /* 0x4 */ CutsceneCameraPoint* eyePoints;
    /* 0x8 */ s16 relativeToPlayer;
} CutsceneCameraMove; // size = 0xC

typedef struct CutsceneContext {
    /* 0x00 */ char  unk_00[0x4];
    /* 0x04 */ void* script;
    /* 0x08 */ u8 state;
    /* 0x0C */ f32 timer;
    /* 0x10 */ u16 curFrame; // current frame of the script that is running
    /* 0x12 */ u16 unk_12; // set but never used
    /* 0x14 */ s32 subCamId;
    /* 0x18 */ u16 camEyeSplinePointsAppliedFrame; // stores the frame the cam eye spline points data was last applied on
    /* 0x1A */ u8 camAtReady; // cam `at` data is ready to be applied
    /* 0x1B */ u8 camEyeReady; // cam `eye` data is ready to be applied
    /* 0x1C */ CutsceneCameraPoint* camAtPoints;
    /* 0x20 */ CutsceneCameraPoint* camEyePoints;
    /* 0x24 */ CsCmdActorCue* playerCue;
    /* 0x28 */ CsCmdActorCue* actorCues[10]; // "npcdemopnt"
} CutsceneContext; // size = 0x50

void Cutscene_InitContext(struct PlayState* play, CutsceneContext* csCtx);
void Cutscene_StartManual(struct PlayState* play, CutsceneContext* csCtx);
void Cutscene_StopManual(struct PlayState* play, CutsceneContext* csCtx);
void Cutscene_UpdateManual(struct PlayState* play, CutsceneContext* csCtx);
void Cutscene_UpdateScripted(struct PlayState* play, CutsceneContext* csCtx);
void Cutscene_HandleEntranceTriggers(struct PlayState* play);
void Cutscene_HandleConditionalTriggers(struct PlayState* play);
void Cutscene_SetScript(struct PlayState* play, void* script);

#endif
