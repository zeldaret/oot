#ifndef Z64CUTSCENE_H
#define Z64CUTSCENE_H

#include "ultra64.h"

/**
 * Special type for blocks of cutscene data, asm-processor checks
 * arrays for CutsceneData type and converts floats within the array
 * to their IEEE-754 representation. The array must close with };
 * on its own line.
 *
 * Files that contain this type that are included in other C files
 * must be preceded by a '#pragma asmproc recurse' qualifier to
 * inform asm-processor that it must recursively process that include.
 *
 * Example:
 * #pragma asmproc recurse
 * #include "file.c"
 */
typedef union CutsceneData {
    s32 i;
    f32 f;
    s16 s[2];
    s8  b[4];
} CutsceneData;

#define CS_CMD_CONTINUE 0
#define CS_CMD_STOP -1

typedef enum {
    CS_STATE_IDLE,
    CS_STATE_START,
    CS_STATE_EXEC,
    CS_STATE_STOP,
    CS_STATE_EXEC_TERMINATOR
} CutsceneState;

typedef enum {
    /* 0x0001 */ CS_CMD_CAM_EYE = 0x01,
    /* 0x0002 */ CS_CMD_CAM_AT,
    /* 0x0003 */ CS_CMD_MISC,
    /* 0x0004 */ CS_CMD_SET_LIGHTING,
    /* 0x0005 */ CS_CMD_CAM_EYE_REL_TO_PLAYER,
    /* 0x0006 */ CS_CMD_CAM_AT_REL_TO_PLAYER,
    /* 0x0007 */ CS_CMD_07,
    /* 0x0008 */ CS_CMD_08,
    /* 0x0009 */ CS_CMD_09,
    /* 0x000A */ CS_CMD_SET_PLAYER_ACTION,
    /* 0x000E */ CS_CMD_SET_ACTOR_ACTION_2 = 0x0E,
    /* 0x000F */ CS_CMD_SET_ACTOR_ACTION_1,
    /* 0x0010 */ CS_CMD_SET_ACTOR_ACTION_2_1,
    /* 0x0011 */ CS_CMD_SET_ACTOR_ACTION_1_1,
    /* 0x0012 */ CS_CMD_SET_ACTOR_ACTION_1_2,
    /* 0x0013 */ CS_CMD_TEXTBOX,
    /* 0x0017 */ CS_CMD_SET_ACTOR_ACTION_1_3 = 0x17,
    /* 0x0018 */ CS_CMD_SET_ACTOR_ACTION_2_2,
    /* 0x0019 */ CS_CMD_SET_ACTOR_ACTION_3,
    /* 0x001D */ CS_CMD_SET_ACTOR_ACTION_4 = 0x1D,
    /* 0x001E */ CS_CMD_SET_ACTOR_ACTION_5,
    /* 0x001F */ CS_CMD_SET_ACTOR_ACTION_7,
    /* 0x0022 */ CS_CMD_SET_ACTOR_ACTION_1_4 = 0x22,
    /* 0x0023 */ CS_CMD_SET_ACTOR_ACTION_2_3,
    /* 0x0024 */ CS_CMD_SET_ACTOR_ACTION_3_1,
    /* 0x0025 */ CS_CMD_SET_ACTOR_ACTION_4_1,
    /* 0x0026 */ CS_CMD_SET_ACTOR_ACTION_5_1,
    /* 0x0027 */ CS_CMD_SET_ACTOR_ACTION_1_5,
    /* 0x0028 */ CS_CMD_SET_ACTOR_ACTION_2_4,
    /* 0x0029 */ CS_CMD_SET_ACTOR_ACTION_3_2,
    /* 0x002A */ CS_CMD_SET_ACTOR_ACTION_4_2,
    /* 0x002B */ CS_CMD_SET_ACTOR_ACTION_5_2,
    /* 0x002C */ CS_CMD_SET_ACTOR_ACTION_6,
    /* 0x002D */ CS_CMD_SCENE_TRANS_FX,
    /* 0x002E */ CS_CMD_SET_ACTOR_ACTION_1_6,
    /* 0x002F */ CS_CMD_SET_ACTOR_ACTION_5_3,
    /* 0x0030 */ CS_CMD_SET_ACTOR_ACTION_2_5,
    /* 0x0031 */ CS_CMD_SET_ACTOR_ACTION_8,
    /* 0x0032 */ CS_CMD_SET_ACTOR_ACTION_3_3,
    /* 0x0033 */ CS_CMD_SET_ACTOR_ACTION_4_3,
    /* 0x0034 */ CS_CMD_SET_ACTOR_ACTION_7_1,
    /* 0x0035 */ CS_CMD_SET_ACTOR_ACTION_4_4,
    /* 0x0036 */ CS_CMD_SET_ACTOR_ACTION_5_4,
    /* 0x0037 */ CS_CMD_SET_ACTOR_ACTION_6_1,
    /* 0x0039 */ CS_CMD_SET_ACTOR_ACTION_7_2 = 0x39,
    /* 0x003A */ CS_CMD_SET_ACTOR_ACTION_7_3,
    /* 0x003C */ CS_CMD_SET_ACTOR_ACTION_8_1 = 0x3C,
    /* 0x003E */ CS_CMD_SET_ACTOR_ACTION_9 = 0x3E,
    /* 0x003F */ CS_CMD_SET_ACTOR_ACTION_4_5,
    /* 0x0040 */ CS_CMD_SET_ACTOR_ACTION_2_6,
    /* 0x0041 */ CS_CMD_SET_ACTOR_ACTION_4_6,
    /* 0x0042 */ CS_CMD_SET_ACTOR_ACTION_4_7,
    /* 0x0043 */ CS_CMD_SET_ACTOR_ACTION_3_4,
    /* 0x0044 */ CS_CMD_SET_ACTOR_ACTION_2_7,
    /* 0x0045 */ CS_CMD_SET_ACTOR_ACTION_3_5,
    /* 0x0046 */ CS_CMD_SET_ACTOR_ACTION_2_8,
    /* 0x0048 */ CS_CMD_SET_ACTOR_ACTION_3_6 = 0x48,
    /* 0x004A */ CS_CMD_SET_ACTOR_ACTION_3_7 = 0x4A,
    /* 0x004B */ CS_CMD_SET_ACTOR_ACTION_4_8,
    /* 0x004C */ CS_CMD_SET_ACTOR_ACTION_1_7,
    /* 0x004D */ CS_CMD_SET_ACTOR_ACTION_6_2,
    /* 0x004E */ CS_CMD_SET_ACTOR_ACTION_2_9,
    /* 0x004F */ CS_CMD_SET_ACTOR_ACTION_5_5,
    /* 0x0050 */ CS_CMD_SET_ACTOR_ACTION_2_10,
    /* 0x0051 */ CS_CMD_SET_ACTOR_ACTION_3_8,
    /* 0x0052 */ CS_CMD_SET_ACTOR_ACTION_4_9,
    /* 0x0053 */ CS_CMD_SET_ACTOR_ACTION_5_6,
    /* 0x0054 */ CS_CMD_SET_ACTOR_ACTION_6_3,
    /* 0x0055 */ CS_CMD_SET_ACTOR_ACTION_1_8,
    /* 0x0056 */ CS_CMD_PLAYBGM,
    /* 0x0057 */ CS_CMD_STOPBGM,
    /* 0x0058 */ CS_CMD_SET_ACTOR_ACTION_7_4,
    /* 0x0059 */ CS_CMD_SET_ACTOR_ACTION_8_2,
    /* 0x005A */ CS_CMD_SET_ACTOR_ACTION_6_4,
    /* 0x005D */ CS_CMD_SET_ACTOR_ACTION_1_9 = 0x5D,
    /* 0x005E */ CS_CMD_SET_ACTOR_ACTION_2_11,
    /* 0x0069 */ CS_CMD_SET_ACTOR_ACTION_1_10 = 0x69,
    /* 0x006A */ CS_CMD_SET_ACTOR_ACTION_3_9,
    /* 0x006B */ CS_CMD_SET_ACTOR_ACTION_1_11,
    /* 0x006C */ CS_CMD_SET_ACTOR_ACTION_4_10,
    /* 0x006E */ CS_CMD_SET_ACTOR_ACTION_1_12 = 0x6E,
    /* 0x006F */ CS_CMD_SET_ACTOR_ACTION_8_3,
    /* 0x0072 */ CS_CMD_SET_ACTOR_ACTION_8_4 = 0x72,
    /* 0x0073 */ CS_CMD_SET_ACTOR_ACTION_7_5,
    /* 0x0074 */ CS_CMD_SET_ACTOR_ACTION_2_12,
    /* 0x0075 */ CS_CMD_SET_ACTOR_ACTION_3_10,
    /* 0x0076 */ CS_CMD_SET_ACTOR_ACTION_2_13,
    /* 0x0077 */ CS_CMD_SET_ACTOR_ACTION_1_13,
    /* 0x0078 */ CS_CMD_SET_ACTOR_ACTION_2_14,
    /* 0x0079 */ CS_CMD_SET_ACTOR_ACTION_3_11,
    /* 0x007B */ CS_CMD_SET_ACTOR_ACTION_1_14 = 0x7B,
    /* 0x007C */ CS_CMD_FADEBGM,
    /* 0x007D */ CS_CMD_SET_ACTOR_ACTION_2_15,
    /* 0x007E */ CS_CMD_SET_ACTOR_ACTION_3_12,
    /* 0x007F */ CS_CMD_SET_ACTOR_ACTION_4_11,
    /* 0x0080 */ CS_CMD_SET_ACTOR_ACTION_5_7,
    /* 0x0081 */ CS_CMD_SET_ACTOR_ACTION_6_5,
    /* 0x0082 */ CS_CMD_SET_ACTOR_ACTION_7_6,
    /* 0x0083 */ CS_CMD_SET_ACTOR_ACTION_2_16,
    /* 0x0084 */ CS_CMD_SET_ACTOR_ACTION_3_13,
    /* 0x0085 */ CS_CMD_SET_ACTOR_ACTION_4_12,
    /* 0x0086 */ CS_CMD_SET_ACTOR_ACTION_8_5,
    /* 0x0087 */ CS_CMD_SET_ACTOR_ACTION_5_8,
    /* 0x0088 */ CS_CMD_SET_ACTOR_ACTION_6_6,
    /* 0x0089 */ CS_CMD_SET_ACTOR_ACTION_7_7,
    /* 0x008A */ CS_CMD_SET_ACTOR_ACTION_1_15,
    /* 0x008B */ CS_CMD_SET_ACTOR_ACTION_1_16,
    /* 0x008C */ CS_CMD_SETTIME,
    /* 0x008D */ CS_CMD_SET_ACTOR_ACTION_2_17,
    /* 0x008E */ CS_CMD_SET_ACTOR_ACTION_8_6,
    /* 0x008F */ CS_CMD_SET_ACTOR_ACTION_10,
    /* 0x0090 */ CS_CMD_SET_ACTOR_ACTION_1_17,
    /* 0x03E8 */ CS_CMD_TERMINATOR = 0x03E8,
    /* 0xFFFF */ CS_CMD_END = 0xFFFF
} CutsceneCmd;

typedef struct {
    /* 0x00 */ u16 base;
    /* 0x02 */ u16 startFrame;
    /* 0x04 */ u16 endFrame;
} CsCmdBase; // size = 0x6

typedef struct {
    /* 0x00 */ u8  unk_00;
    /* 0x01 */ u8  setting;
    /* 0x02 */ u16 startFrame;
    /* 0x04 */ u16 endFrame;
} CsCmdLightSetting; // size = 0x6

typedef struct {
    /* 0x00 */ u8  unk_00;
    /* 0x01 */ u8  sequence;
    /* 0x02 */ u16 startFrame;
    /* 0x04 */ u16 endFrame;
} CsCmdSeqChange; // size = 0x6

typedef struct {
    /* 0x00 */ u16 type;
    /* 0x02 */ u16 startFrame;
    /* 0x04 */ u16 endFrame;
} CsCmdSeqFade; // size = 0x6

typedef struct {
    /* 0x00 */ u16 unk_00;
    /* 0x02 */ u16 startFrame;
    /* 0x04 */ u16 endFrame;
    /* 0x06 */ u8  unk_06;
    /* 0x07 */ u8  unk_07;
    /* 0x08 */ u8  unk_08;
} CsCmdRumble; // size = 0xA

typedef struct {
    /* 0x00 */ u16 unk_00;
    /* 0x02 */ u16 startFrame;
    /* 0x04 */ u16 endFrame;
    /* 0x06 */ u8  hour;
    /* 0x07 */ u8  minute;
} CsCmdTime; // size = 0x8

typedef struct {
    /* 0x00 */ u16 base;
    /* 0x02 */ u16 startFrame;
    /* 0x04 */ u16 endFrame;
    /* 0x06 */ u16 type;
    /* 0x08 */ u16 textId1;
    /* 0x0A */ u16 textId2;
} CsCmdTextbox; // size = 0xC

typedef struct {
    /* 0x00 */ u16 action; // "dousa"
    /* 0x02 */ u16 startFrame;
    /* 0x04 */ u16 endFrame;
    union {
        /* 0x06 */ Vec3s rot;
        /* 0x06 */ Vec3us urot;
    };
    /* 0x0C */ Vec3i startPos;
    /* 0x18 */ Vec3i endPos;
    /* 0x24 */ Vec3i normal;
} CsCmdActorAction; // size = 0x30

typedef enum {
    /* 0x01 */ CS_MISC_RAIN = 1,
    /* 0x02 */ CS_MISC_LIGHTNING,
    /* 0x03 */ CS_MISC_SET_FLAG_0, // also sets flag 2 if in Temple of Time
    /* 0x04 */ CS_MISC_UNIMPLEMENTED_4,
    /* 0x06 */ CS_MISC_LIFT_FOG = 6,
    /* 0x07 */ CS_MISC_CLOUDY_SKY,
    /* 0x08 */ CS_MISC_FADE_KOKIRI_GRASS_ENV_ALPHA,
    /* 0x09 */ CS_MISC_SNOW,
    /* 0x0A */ CS_MISC_SET_FLAG_1,
    /* 0x0B */ CS_MISC_DEKU_TREE_DEATH,
    /* 0x0C */ CS_MISC_STOP,
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
    /* 0x1B */ CS_MISC_PULSATE_LIGHTS,
    /* 0x1C */ CS_MISC_HALT_ALL_ACTORS,
    /* 0x1D */ CS_MISC_RESUME_ALL_ACTORS,
    /* 0x1E */ CS_MISC_SET_FLAG_3,
    /* 0x1F */ CS_MISC_SET_FLAG_4,
    /* 0x20 */ CS_MISC_SANDSTORM,
    /* 0x21 */ CS_MISC_SUNSSONG_START,
    /* 0x22 */ CS_MISC_FREEZE_TIME,
    /* 0x23 */ CS_MISC_LONG_SCARECROW_SONG
} CutsceneMiscCommand;

// TODO confirm correctness, clarify names
typedef enum {
    /* 0x00 */ INVALID_DESTINATION_0,
    /* 0x01 */ CUTSCENE_MAP_GANON_HORSE,
    /* 0x02 */ CUTSCENE_MAP_THREE_GODESSES_POST_DEKU_TREE,
    /* 0x03 */ GERUDO_VALLEY_DIN,
    /* 0x04 */ DEATH_MOUNTAIN_TRAIL_NAYRU,
    /* 0x05 */ KOKIRI_FOREST_FARORE,
    /* 0x06 */ CUTSCENE_MAP_TRIFORCE_CREATION,
    /* 0x07 */ KOKIRI_FOREST_RECEIVE_KOKIRI_EMERALD,
    /* 0x08 */ TEMPLE_OF_TIME_AFTER_USE_MS,
    /* 0x09 */ GERUDO_VALLEY_DIN_2,
    /* 0x0A */ LINKS_HOUSE_INTRO,
    /* 0x0B */ KOKIRI_FOREST_INTRO,
    /* 0x0C */ DEATH_MOUNTAIN_TRAIL_AFTER_GORON_RUBY,
    /* 0x0D */ ZORAS_FOUNTAIN_AFTER_ZORAS_SAPPHIRE,
    /* 0x0E */ KOKIRI_FOREST_AFTER_KOKIRI_EMERALD,
    /* 0x0F */ TEMPLE_OF_TIME_KOKIRI_EMERALD, //unused
    /* 0x10 */ TEMPLE_OF_TIME_GORON_RUBY, //unused
    /* 0x11 */ TEMPLE_OF_TIME_ZORAS_SAPPHIRE, //unused
    /* 0x12 */ TEMPLE_OF_TIME_AFTER_USE_MS_FIRST,
    /* 0x13 */ DEATH_MOUNTAIN_TRAIL_AFTER_INTRO,
    /* 0x14 */ INVALID_DESTINATION_14,
    /* 0x15 */ LAKE_HYLIA_WATER_RISES,
    /* 0x16 */ DESERT_COLOSSUS_REQUIEM,
    /* 0x17 */ CUTSCENE_MAP_CURSE_YOU,
    /* 0x18 */ JABU_JABU_INTRO,
    /* 0x19 */ CHAMBER_OF_SAGES_LIGHT_MEDALLION,
    /* 0x1A */ TEMPLE_OF_TIME_KOKIRI_EMERALD_2, //duplicate of 0x000F
    /* 0x1B */ TEMPLE_OF_TIME_GORON_RUBY_2, //duplicate of 0x0010
    /* 0x1C */ TEMPLE_OF_TIME_ZORAS_SAPPHIRE_2, //duplicate of 0x0011
    /* 0x1D */ CHAMBER_OF_SAGES_FOREST_MEDALLION,
    /* 0x1E */ CHAMBER_OF_SAGES_FIRE_MEDALLION,
    /* 0x1F */ CHAMBER_OF_SAGES_WATER_MEDALLION,
    /* 0x20 */ HYRULE_FIELD_FLASHBACK, //lacs part 4
    /* 0x21 */ HYRULE_FIELD_AFTER_LAKE_HYLIA_OWL,
    /* 0x22 */ CUTSCENE_MAP_GANON_AFTER_USE_MS,
    /* 0x23 */ HYRULE_FIELD_INTRO_ZELDA_ESCAPE,
    /* 0x24 */ INVALID_DESTINATION_24,
    /* 0x25 */ INVALID_DESTINATION_25,
    /* 0x26 */ CUTSCENE_MAP_SHEIKAH_LEGEND, //lacs part 2
    /* 0x27 */ TEMPLE_OF_TIME_ZELDA_REVEAL, //lacs part 3
    /* 0x28 */ TEMPLE_OF_TIME_GET_LIGHT_ARROWS, //lacs part 5
    /* 0x29 */ LAKE_HYLIA_AFTER_BLUE_WARP,
    /* 0x2A */ KAKARIKO_VILLAGE_DRAIN_WELL,
    /* 0x2B */ WINDMILL_AFTER_DRAIN_WELL,
    /* 0x2C */ TEMPLE_OF_TIME_AFTER_DOOR_OF_TIME_OPENS,
    /* 0x2D */ INVALID_DESTINATION_2D,
    /* 0x2E */ TEMPLE_OF_TIME_AFTER_USE_MS_FIRST_2, // duplicate of 0x0012
    /* 0x2F */ KAKARIKO_VILLAGE_NOCTURNE_PART_2,
    /* 0x30 */ DESERT_COLOSSUS_AFTER_REQUIEM,
    /* 0x31 */ TEMPLE_OF_TIME_AFTER_LIGHT_ARROWS,
    /* 0x32 */ KAKARIKO_VILLAGE_AFTER_NOCTURNE,
    /* 0x33 */ HYRULE_FIELD_IMPA_ESCORT_CS,
    /* 0x34 */ TEMPLE_OF_TIME_SONG_OF_TIME,
    /* 0x35 */ HYRULE_FIELD_AFTER_SONG_OF_TIME,
    /* 0x36 */ GERUDO_VALLEY_CREDITS,
    /* 0x37 */ GERUDO_FORTRESS_CREDITS,
    /* 0x38 */ KAKARIKO_VILLAGE_CREDITS,
    /* 0x39 */ DEATH_MOUNTAIN_TRAIL_CREDITS_1,
    /* 0x3A */ GORON_CITY_CREDITS, // unused?
    /* 0x3B */ LAKE_HYLIA_CREDITS,
    /* 0x3C */ ZORAS_FOUNTAIN_CREDITS, // unused
    /* 0x3D */ ZORAS_DOMAIN_CREDITS,
    /* 0x3E */ KOKIRI_FOREST_CREDITS_1,
    /* 0x3F */ KOKIRI_FOREST_CREDITS_2,
    /* 0x40 */ HYRULE_FIELD_CREDITS,
    /* 0x41 */ LON_LON_RANCH_CREDITS_1,
    /* 0x42 */ KAKARIKO_VILLAGE_AFTER_TRAIL_OWL,
    /* 0x43 */ HTRULE_FIELD_UNUSED_ENTRANCE,
    /* 0x44 */ CUTSCENE_MAP_FIRE,
    /* 0x45 */ KOKIRI_FOREST_POST_FOREST_MEDALLION,
    /* 0x46 */ DEATH_MOUNTAIN_TRAIL_CREDITS_2,
    /* 0x47 */ TEMPLE_OF_TIME_CREDITS,
    /* 0x48 */ ZELDAS_COURTYARD_CREDITS,
    /* 0x49 */ LON_LON_RANCH_CREDITS_1_2, // duplicate of 0x0041
    /* 0x4A */ LON_LON_RANCH_CREDITS_2,
    /* 0x4B */ LON_LON_RANCH_CREDITS_3,
    /* 0x4C */ LON_LON_RANCH_CREDITS_4,
    /* 0x4D */ LON_LON_RANCH_CREDITS_5,
    /* 0x4E */ LON_LON_RANCH_CREDITS_6,
    /* 0x4F */ LON_LON_RANCH_NO_CS_1,
    /* 0x50 */ LON_LON_RANCH_NO_CS_2,
    /* 0x51 */ LON_LON_RANCH_NO_CS_3,
    /* 0x52 */ LON_LON_RANCH_NO_CS_4,
    /* 0x53 */ LON_LON_RANCH_NO_CS_5,
    /* 0x54 */ LON_LON_RANCH_NO_CS_6,
    /* 0x55 */ LON_LON_RANCH_NO_CS_7,
    /* 0x56 */ LON_LON_RANCH_NO_CS_8,
    /* 0x57 */ LON_LON_RANCH_NO_CS_9,
    /* 0x58 */ LON_LON_RANCH_NO_CS_10,
    /* 0x59 */ LON_LON_RANCH_NO_CS_11,
    /* 0x5A */ LON_LON_RANCH_NO_CS_12,
    /* 0x5B */ LON_LON_RANCH_NO_CS_13,
    /* 0x5C */ LON_LON_RANCH_NO_CS_14,
    /* 0x5D */ LON_LON_RANCH_NO_CS_15,
    /* 0x5E */ LON_LON_RANCH_NO_CS_EPONAS_SONG,
    /* 0x5F */ CONDITIONAL_DESTINATION, // TODO more descriptive name?
    /* 0x60 */ DESERT_COLOSSUS_SPIRIT_BLUE_WARP,
    /* 0x61 */ GRAVEYARD_AFTER_SHADOW_BLUE_WARP,
    /* 0x62 */ DEATH_MOUNTAIN_CRATER_AFTER_FIRE_BLUE_WARP,
    /* 0x63 */ SACRED_FOREST_MEADOW_AFTER_FOREST_BLUE_WARP,
    /* 0x64 */ KOKIRI_FOREST_AFTER_FOREST_BLUE_WARP,
    /* 0x65 */ DESERT_COLOSSUS_AFTER_SILVER_GAUNTLETS,
    /* 0x66 */ TEMPLE_OF_TIME_FRONT_OF_PEDESTAL,
    /* 0x67 */ HYRULE_FIELD_TITLE_SCREEN,
    /* 0x68 */ SPIRIT_TEMPLE_BOSS_TITLE_SCREEN,
    /* 0x69 */ GRAVEYARD_SUNS_SONG,
    /* 0x6A */ ROYAL_FAMILYS_TOMB_SUNS_SONG,
    /* 0x6B */ GANONS_CASTLE_AFTER_FOREST_TRIAL,
    /* 0x6C */ GANONS_CASTLE_AFTER_WATER_TRIAL,
    /* 0x6D */ GANONS_CASTLE_AFTER_SHADOW_TRIAL,
    /* 0x6E */ GANONS_CASTLE_AFTER_FIRE_TRIAL,
    /* 0x6F */ GANONS_CASTLE_AFTER_LIGHT_TRIAL,
    /* 0x70 */ GANONS_CASTLE_AFTER_SPIRIT_TRIAL,
    /* 0x71 */ GANONS_CASTLE_DISPEL_BARRIER_IF_CONDITIONS,
    /* 0x72 */ HYRULE_FIELD_INTRO,
    /* 0x73 */ HYRULE_FIELD_AFTER_IMPA_ESCORT,
    /* 0x74 */ DESERT_COLOSSUS_SPIRIT_BLUE_WARP_2,
    /* 0x75 */ HYRULE_FIELD_SKY,
    /* 0x76 */ GANON_BATTLE_TOWER_COLLAPSE,
    /* 0x77 */ ZELDAS_COURTYARD_RECEIVE_LETTER
} CutsceneTerminatorDestination;

typedef struct {
    /* 0x00 */ u16 entrance;       // entrance index upon which the cutscene should trigger
    /* 0x02 */ u8  ageRestriction; // 0 for adult only, 1 for child only, 2 for both ages
    /* 0x03 */ u8  flag;           // eventChkInf flag bound to the entrance cutscene
    /* 0x04 */ void* segAddr;      // segment offset location of the cutscene
} EntranceCutscene; // size = 0x8

typedef struct {
    /* 0x00 */ s8    continueFlag;
    /* 0x01 */ s8    cameraRoll;
    /* 0x02 */ u16   nextPointFrame;
    /* 0x04 */ f32   viewAngle; // in degrees
    /* 0x08 */ Vec3s pos;
} CutsceneCameraPoint; // size = 0x10

typedef struct {
    /* 0x00 */ Vec3f at;
    /* 0x0C */ Vec3f eye;
    /* 0x18 */ s16 roll;
    /* 0x1A */ s16 fov;
} CutsceneCameraDirection; // size = 0x1C

typedef struct {
    /* 0x0 */ CutsceneCameraPoint* atPoints;
    /* 0x4 */ CutsceneCameraPoint* eyePoints;
    /* 0x8 */ s16 relativeToPlayer;
} CutsceneCameraMove; // size = 0xC

#endif
