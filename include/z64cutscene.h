#ifndef _Z64CUTSCENE_H_
#define _Z64CUTSCENE_H_

#include "ultra64.h"

typedef struct {
    /* 0x00 */ u16 entrance;       // entrance index upon which the cutscene should trigger
    /* 0x02 */ u8  ageRestriction; // 0 for adult only, 1 for child only, 2 for both ages
    /* 0x03 */ u8  flag;           // eventChkInf flag bound to the entrance cutscene
    /* 0x04 */ u32 segAddr;        // segment offset location of the cutscene
} EntranceCutscene; // size = 0x8

typedef struct {
    /* 0x00 */ s8    continueFlag;
    /* 0x01 */ s8    cameraRoll;
    /* 0x02 */ u16   nextPointFrame;
    /* 0x04 */ f32   viewAngle; // in degrees
    /* 0x08 */ Vec3s pos;
} CutsceneCameraPoint; // size = 0x10

typedef struct {
    /* 0x00 */ u16 base;
    /* 0x02 */ u16 startFrame;
    /* 0x04 */ u16 endFrame;
} CsCmdBase;

typedef struct {
    /* 0x00 */ u8  unk_00;
    /* 0x01 */ u8  setting;
    /* 0x02 */ u16 startFrame;
    /* 0x04 */ u16 endFrame;
} CsCmdEnvLighting;

typedef struct {
    /* 0x00 */ u8  unk_00;
    /* 0x01 */ u8  sequence;
    /* 0x02 */ u16 startFrame;
    /* 0x04 */ u16 endFrame;
} CsCmdMusicChange;

typedef struct {
    /* 0x00 */ u16 type;
    /* 0x02 */ u16 startFrame;
    /* 0x04 */ u16 endFrame;
} CsCmdMusicFade;

typedef struct {
    /* 0x00 */ u16 unk_00;
    /* 0x02 */ u16 startFrame;
    /* 0x04 */ u16 endFrame;
    /* 0x06 */ u8  unk_06;
    /* 0x07 */ u8  unk_07;
    /* 0x08 */ u8  unk_08;
} CsCmdUnknown9;

typedef struct {
    /* 0x00 */ u16 unk_00;
    /* 0x02 */ u16 startFrame;
    /* 0x04 */ u16 endFrame;
    /* 0x06 */ u8  hour;
    /* 0x07 */ u8  minute;
} CsCmdDayTime;

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
    CS_STATE_IDLE,
    CS_STATE_SKIPPABLE_INIT,
    CS_STATE_SKIPPABLE_EXEC,
    CS_STATE_UNSKIPPABLE_INIT,
    CS_STATE_UNSKIPPABLE_EXEC
} CutsceneState;

typedef enum {
    CS_CMD_00 = 0x0000,
    CS_CMD_CAMERA_POS = 0x0001,
    CS_CMD_CAMERA_FOCUS = 0x0002,
    CS_CMD_MISC = 0x0003,
    CS_CMD_SET_LIGHTING = 0x0004,
    CS_CMD_CAMERA_POS_PLAYER = 0x0005,
    CS_CMD_CAMERA_FOCUS_PLAYER = 0x0006,
    CS_CMD_07 = 0x0007,
    CS_CMD_08 = 0x0008,
    CS_CMD_09 = 0x0009,
    CS_CMD_TEXTBOX = 0x0013,
    CS_CMD_SET_PLAYER_ACTION = 0x000A,
    CS_CMD_SET_ACTOR_ACTION_1 = 0x000F,
    CS_CMD_SET_ACTOR_ACTION_2 = 0x000E,
    CS_CMD_SET_ACTOR_ACTION_3 = 0x0019,
    CS_CMD_SET_ACTOR_ACTION_4 = 0x001D,
    CS_CMD_SET_ACTOR_ACTION_5 = 0x001E,
    CS_CMD_SET_ACTOR_ACTION_6 = 0x002C,
    CS_CMD_SET_ACTOR_ACTION_7 = 0x001F,
    CS_CMD_SET_ACTOR_ACTION_8 = 0x0031,
    CS_CMD_SET_ACTOR_ACTION_9 = 0x003E,
    CS_CMD_SET_ACTOR_ACTION_10 = 0x008F,
    CS_CMD_SCENE_TRANS_FX = 0x002D,
    CS_CMD_NOP = 0x000B,
    CS_CMD_PLAYBGM = 0x0056,
    CS_CMD_STOPBGM = 0x0057,
    CS_CMD_FADEBGM = 0x007C,
    CS_CMD_SETTIME = 0x008C,
    CS_CMD_TERMINATOR = 0x03E8,
    CS_CMD_END = 0xFFFF
} CutsceneCmd;

#define CS_CMD_CONTINUE 0x00
#define CS_CMD_STOP 0xFF

typedef enum {
    /* 0x0000 */ UNK_0,
    /* 0x0001 */ FREE_PLAY_OCARINA,
    /* 0x0002 */ MINUET,
    /* 0x0003 */ BOLERO,
    /* 0x0004 */ SERENADE,
    /* 0x0005 */ REQUIEM,
    /* 0x0006 */ NOCTURNE,
    /* 0x0007 */ PRELUDE,
    /* 0x0008 */ SARIAS_SONG,
    /* 0x0009 */ EPONAS_SONG,
    /* 0x000A */ ZELDAS_LULLABY,
    /* 0x000B */ SUNS_SONG,
    /* 0x000C */ SONG_OF_TIME,
    /* 0x000D */ SONG_OF_STORMS,
    /* 0x000E */ UNK_E,
    /* 0x000F */ MINUET_PLAYBACK,
    /* 0x0010 */ BOLERO_PLAYBACK,
    /* 0x0011 */ SERENADE_PLAYBACK,
    /* 0x0012 */ REQUIEM_PLAYBACK,
    /* 0x0013 */ NOCTURNE_PLAYBACK,
    /* 0x0014 */ PRELUDE_PLAYBACK,
    /* 0x0015 */ SARIAS_SONG_PLAYBACK,
    /* 0x0016 */ EPONAS_SONG_PLAYBACK,
    /* 0x0017 */ ZELDAS_LULLABY_PLAYBACK,
    /* 0x0018 */ SUNS_SONG_PLAYBACK,
    /* 0x0019 */ SONG_OF_TIME_PLAYBACK,
    /* 0x001A */ SONG_OF_STORMS_PLAYBACK
} OcarinaSongActionIDs;

// TODO confirm correctness, clarify names
typedef enum {
    /* 0x0000 */ INVALID_x0,
    /* 0x0001 */ CUTSCENE_MAP_GANON_HORSE,
    /* 0x0002 */ CUTSCENE_MAP_THREE_GODESSES_POST_DEKU_TREE,
    /* 0x0003 */ GERUDO_VALLEY_DIN,
    /* 0x0004 */ DEATH_MOUNTAIN_TRAIL_NAYRU,
    /* 0x0005 */ KOKIRI_FOREST_FARORE,
    /* 0x0006 */ CUTSCENE_MAP_TRIFORCE_CREATION,
    /* 0x0007 */ KOKIRI_FOREST_RECEIVE_KOKIRI_EMERALD,
    /* 0x0008 */ TEMPLE_OF_TIME_AFTER_USE_MS,
    /* 0x0009 */ GERUDO_VALLEY_DIN_2,
    /* 0x000A */ LINKS_HOUSE_INTRO,
    /* 0x000B */ KOKIRI_FOREST_INTRO,
    /* 0x000C */ DEATH_MOUNTAIN_TRAIL_AFTER_GORON_RUBY,
    /* 0x000D */ ZORAS_FOUNTAIN_AFTER_ZORAS_SAPPHIRE,
    /* 0x000E */ KOKIRI_FOREST_AFTER_KOKIRI_EMERALD,
    /* 0x000F */ TEMPLE_OF_TIME_KOKIRI_EMERALD, //unused
    /* 0x0010 */ TEMPLE_OF_TIME_GORON_RUBY, //unused
    /* 0x0011 */ TEMPLE_OF_TIME_ZORAS_SAPPHIRE, //unused
    /* 0x0012 */ TEMPLE_OF_TIME_AFTER_USE_MS_FIRST,
    /* 0x0013 */ DEATH_MOUNTAIN_TRAIL_AFTER_INTRO,
    /* 0x0014 */ INVALID_x14,
    /* 0x0015 */ LAKE_HYLIA_WATER_RISES,
    /* 0x0016 */ DESERT_COLOSSUS_REQUIEM,
    /* 0x0017 */ CUTSCENE_MAP_CURSE_YOU,
    /* 0x0018 */ JABU_JABU_INTRO,
    /* 0x0019 */ CHAMBER_OF_SAGES_LIGHT_MEDALLION,
    /* 0x001A */ TEMPLE_OF_TIME_KOKIRI_EMERALD_2, //duplicate of 0x000F
    /* 0x001B */ TEMPLE_OF_TIME_GORON_RUBY_2, //duplicate of 0x0010
    /* 0x001C */ TEMPLE_OF_TIME_ZORAS_SAPPHIRE_2, //duplicate of 0x0011
    /* 0x001D */ CHAMBER_OF_SAGES_FOREST_MEDALLION,
    /* 0x001E */ CHAMBER_OF_SAGES_FIRE_MEDALLION,
    /* 0x001F */ CHAMBER_OF_SAGES_WATER_MEDALLION,
    /* 0x0020 */ HYRULE_FIELD_FLASHBACK, //lacs part 4
    /* 0x0021 */ HYRULE_FIELD_AFTER_LAKE_HYLIA_OWL,
    /* 0x0022 */ CUTSCENE_MAP_GANON_AFTER_USE_MS,
    /* 0x0023 */ HYRULE_FIELD_INTRO_ZELDA_ESCAPE,
    /* 0x0024 */ INVALID_x24,
    /* 0x0025 */ INVALID_x25,
    /* 0x0026 */ CUTSCENE_MAP_SHEIKAH_LEGEND, //lacs part 2
    /* 0x0027 */ TEMPPLE_OF_TIME_ZELDA_REVEAL, //lacs part 3
    /* 0x0028 */ TEMPLE_OF_TIME_GET_LIGHT_ARROWS, //lacs part 5
    /* 0x0029 */ LAKE_HYLIA_AFTER_BLUE_WARP,
    /* 0x002A */ KAKARIKO_VILLAGE_DRAIN_WELL,
    /* 0x002B */ WINDMILL_AFTER_DRAIN_WELL,
    /* 0x002C */ TEMPLE_OF_TIME_AFTER_DOOR_OF_TIME_OPENS,
    /* 0x002D */ INVALID_x2D,
    /* 0x002E */ TEMPLE_OF_TIME_AFTER_USE_MS_FIRST_2, // duplicate of 0x0012
    /* 0x002F */ KAKARIKO_VILLAGE_NOCTURNE_PART_2,
    /* 0x0030 */ DESERT_COLOSSUS_AFTER_REQUIEM,
    /* 0x0031 */ TEMPLE_OF_TIME_AFTER_LIGHT_ARROWS,
    /* 0x0032 */ KAKARIKO_VILLAGE_AFTER_NOCTURNE,
    /* 0x0033 */ HYRULE_FIELD_IMPA_ESCORT_CS,
    /* 0x0034 */ TEMPLE_OF_TIME_SONG_OF_TIME,
    /* 0x0035 */ HYRULE_FIELD_AFTER_SONG_OF_TIME,
    /* 0x0036 */ GERUDO_VALLEY_CREDITS,
    /* 0x0037 */ GERUDO_FORTRESS_CREDITS,
    /* 0x0038 */ KAKARIKO_VILLAGE_CREDITS,
    /* 0x0039 */ DEATH_MOUNTAIN_TRAIL_CREDITS_1,
    /* 0x003A */ GORON_CITY_CREDITS, // unused?
    /* 0x003B */ LAKE_HYLIA_CREDITS,
    /* 0x003C */ ZORAS_FOUNTAIN_CREDITS, // unused
    /* 0x003D */ ZORAS_DOMAIN_CREDITS,
    /* 0x003E */ KOKIRI_FOREST_CREDITS_1,
    /* 0x003F */ KOKIRI_FOREST_CREDITS_2,
    /* 0x0040 */ HYRULE_FIELD_CREDITS,
    /* 0x0041 */ LON_LON_RANCH_CREDITS_1,
    /* 0x0042 */ KAKARIKO_VILLAGE_AFTER_TRAIL_OWL,
    /* 0x0043 */ HTRULE_FIELD_UNUSED_ENTRANCE,
    /* 0x0044 */ CUTSCENE_MAP_FIRE,
    /* 0x0045 */ KOKIRI_FOREST_POST_FOREST_MEDALLION,
    /* 0x0046 */ DEATH_MOUNTAIN_TRAIL_CREDITS_2,
    /* 0x0047 */ TEMPLE_OF_TIME_CREDITS,
    /* 0x0048 */ ZELDAS_COURTYARD_CREDITS,
    /* 0x0049 */ LON_LON_RANCH_CREDITS_1_2, // duplicate of 0x0041
    /* 0x004A */ LON_LON_RANCH_CREDITS_2,
    /* 0x004B */ LON_LON_RANCH_CREDITS_3,
    /* 0x004C */ LON_LON_RANCH_CREDITS_4,
    /* 0x004D */ LON_LON_RANCH_CREDITS_5,
    /* 0x004E */ LON_LON_RANCH_CREDITS_6,
    /* 0x004F */ LON_LON_RANCH_NO_CS_1,
    /* 0x0050 */ LON_LON_RANCH_NO_CS_2,
    /* 0x0051 */ LON_LON_RANCH_NO_CS_3,
    /* 0x0052 */ LON_LON_RANCH_NO_CS_4,
    /* 0x0053 */ LON_LON_RANCH_NO_CS_5,
    /* 0x0054 */ LON_LON_RANCH_NO_CS_6,
    /* 0x0055 */ LON_LON_RANCH_NO_CS_7,
    /* 0x0056 */ LON_LON_RANCH_NO_CS_8,
    /* 0x0057 */ LON_LON_RANCH_NO_CS_9,
    /* 0x0058 */ LON_LON_RANCH_NO_CS_10,
    /* 0x0059 */ LON_LON_RANCH_NO_CS_11,
    /* 0x005A */ LON_LON_RANCH_NO_CS_12,
    /* 0x005B */ LON_LON_RANCH_NO_CS_13,
    /* 0x005C */ LON_LON_RANCH_NO_CS_14,
    /* 0x005D */ LON_LON_RANCH_NO_CS_15,
    /* 0x005E */ LON_LON_RANCH_NO_CS_EPONAS_SONG,
    /* 0x005F */ CONDITIONAL_DESTINATION, // TODO more descriptive name?
    /* 0x0060 */ DESERT_COLOSSUS_SPIRIT_BLUE_WARP,
    /* 0x0061 */ GRAVEYARD_AFTER_SHADOW_BLUE_WARP,
    /* 0x0062 */ DEATH_MOUNTAIN_CRATER_AFTER_FIRE_BLUE_WARP,
    /* 0x0063 */ SACRED_FOREST_MEADOW_AFTER_FOREST_BLUE_WARP,
    /* 0x0064 */ KOKIRI_FOREST_AFTER_FOREST_BLUE_WARP,
    /* 0x0065 */ DESERT_COLOSSUS_AFTER_SILVER_GAUNTLETS,
    /* 0x0066 */ TEMPLE_OF_TIME_FRONT_OF_PEDESTAL,
    /* 0x0067 */ HYRULE_FIELD_TITLE_SCREEN,
    /* 0x0068 */ SPIRIT_TEMPLE_BOSS_TITLE_SCREEN,
    /* 0x0069 */ GRAVEYARD_SUNS_SONG,
    /* 0x006A */ ROYAL_FAMILYS_TOMB_SUNS_SONG,
    /* 0x006B */ GANONS_CASTLE_AFTER_FOREST_TRIAL,
    /* 0x006C */ GANONS_CASTLE_AFTER_WATER_TRIAL,
    /* 0x006D */ GANONS_CASTLE_AFTER_SHADOW_TRIAL,
    /* 0x006E */ GANONS_CASTLE_AFTER_FIRE_TRIAL,
    /* 0x006F */ GANONS_CASTLE_AFTER_LIGHT_TRIAL,
    /* 0x0070 */ GANONS_CASTLE_AFTER_SPIRIT_TRIAL,
    /* 0x0071 */ GANONS_CASTLE_DISPEL_BARRIER_IF_CONDITIONS,
    /* 0x0072 */ HYRULE_FIELD_INTRO,
    /* 0x0073 */ HYRULE_FIELD_AFTER_IMPA_ESCORT,
    /* 0x0074 */ DESERT_COLOSSUS_SPIRIT_BLUE_WARP_2,
    /* 0x0075 */ HYRULE_FIELD_SKY,
    /* 0x0076 */ GANON_BATTLE_TOWER_COLLAPSE,
    /* 0x0077 */ ZELDAS_COURTYARD_RECEIVE_LETTER
} CutsceneTerminatorDestination;

#endif
