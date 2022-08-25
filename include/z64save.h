#ifndef Z64SAVE_H
#define Z64SAVE_H

#include "ultra64.h"
#include "z64math.h"

typedef enum {
    /* 0x0 */ MAGIC_STATE_IDLE, // Regular gameplay
    /* 0x1 */ MAGIC_STATE_CONSUME_SETUP, // Sets the speed at which magic border flashes
    /* 0x2 */ MAGIC_STATE_CONSUME, // Consume magic until target is reached or no more magic is available
    /* 0x3 */ MAGIC_STATE_METER_FLASH_1, // Flashes border and freezes Dark Link
    /* 0x4 */ MAGIC_STATE_METER_FLASH_2, // Flashes border and draws yellow magic to preview target consumption
    /* 0x5 */ MAGIC_STATE_RESET, // Reset colors and return to idle
    /* 0x6 */ MAGIC_STATE_METER_FLASH_3, // Flashes border with no additional behaviour
    /* 0x7 */ MAGIC_STATE_CONSUME_LENS, // Magic slowly consumed by lens. 
    /* 0x8 */ MAGIC_STATE_STEP_CAPACITY, // Step `magicCapacity` to full capacity
    /* 0x9 */ MAGIC_STATE_FILL, // Add magic until magicFillTarget is reached.
    /* 0xA */ MAGIC_STATE_ADD // Add requested magic
} MagicState;

typedef enum {
    /* 0 */ MAGIC_CONSUME_NOW, // Consume Magic immediately without preview
    /* 1 */ MAGIC_CONSUME_WAIT_NO_PREVIEW, // Sets consume target but waits to consume. No yellow magic preview to target consumption. Unused
    /* 2 */ MAGIC_CONSUME_NOW_ALT, // Identical behaviour to MAGIC_CONSUME_NOW. Unused
    /* 3 */ MAGIC_CONSUME_LENS, // Lens consumption
    /* 4 */ MAGIC_CONSUME_WAIT_PREVIEW, // Sets consume target but waits to consume. Draws yellow magic to target consumption
    /* 5 */ MAGIC_ADD // Sets a target to add magic
} MagicChangeType;

#define MAGIC_NORMAL_METER 0x30
#define MAGIC_DOUBLE_METER (2 * MAGIC_NORMAL_METER)

typedef struct {
    /* 0x00 */ u8 buttonItems[4];
    /* 0x04 */ u8 cButtonSlots[3];
    /* 0x08 */ u16 equipment; // a mask where each nibble corresponds to a type of equipment `EquipmentType`, and each nibble is a piece `EquipValue*`
} ItemEquips; // size = 0x0A

typedef struct {
    /* 0x00 */ u8 items[24];
    /* 0x18 */ s8 ammo[16];
    /* 0x28 */ u16 equipment; // a mask where each nibble corresponds to a type of equipment `EquipmentType`, and each bit to an owned piece `EquipInv*`
    /* 0x2C */ u32 upgrades;
    /* 0x30 */ u32 questItems;
    /* 0x34 */ u8 dungeonItems[20];
    /* 0x48 */ s8 dungeonKeys[19];
    /* 0x5B */ s8 defenseHearts;
    /* 0x5C */ s16 gsTokens;
} Inventory; // size = 0x5E

typedef struct {
    /* 0x00 */ u32 chest;
    /* 0x04 */ u32 swch;
    /* 0x08 */ u32 clear;
    /* 0x0C */ u32 collect;
    /* 0x10 */ u32 unk;
    /* 0x14 */ u32 rooms;
    /* 0x18 */ u32 floors;
} SavedSceneFlags; // size = 0x1C

typedef struct {
    /* 0x00 */ s16 sceneId;
    /* 0x02 */ Vec3s pos;
    /* 0x08 */ s16 angle;
} HorseData; // size = 0x0A

/**
 * The respawn mode names refer to the perceived player movement when respawning
 * "down": being on ground
 * "return": coming from the ground
 * "top": coming from the air
 */
typedef enum {
    /* 0x00 */ RESPAWN_MODE_DOWN,   /* Normal Void Outs */
    /* 0x01 */ RESPAWN_MODE_RETURN, /* Grotto Returnpoints */
    /* 0x02 */ RESPAWN_MODE_TOP,    /* Farore's Wind */
    /* 0x03 */ RESPAWN_MODE_MAX
} RespawnMode;

typedef struct {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ s16 yaw;
    /* 0x0E */ s16 playerParams;
    /* 0x10 */ s16 entranceIndex;
    /* 0x12 */ u8 roomIndex;
    /* 0x13 */ s8 data;
    /* 0x14 */ u32 tempSwchFlags;
    /* 0x18 */ u32 tempCollectFlags;
} RespawnData; // size = 0x1C

typedef struct {
    /* 0x00 */ Vec3i pos;
    /* 0x0C */ s32 yaw;
    /* 0x10 */ s32 playerParams;
    /* 0x14 */ s32 entranceIndex;
    /* 0x18 */ s32 roomIndex;
    /* 0x1C */ s32 set;
    /* 0x20 */ s32 tempSwchFlags;
    /* 0x24 */ s32 tempCollectFlags;
} FaroresWindData; // size = 0x28

typedef struct {
    /* 0x0000 */ s32 entranceIndex; // start of `save` substruct, originally called "memory"
    /* 0x0004 */ s32 linkAge; // 0: Adult; 1: Child (see enum `LinkAge`)
    /* 0x0008 */ s32 cutsceneIndex;
    /* 0x000C */ u16 dayTime; // "zelda_time"
    /* 0x0010 */ s32 nightFlag;
    /* 0x0014 */ s32 totalDays;
    /* 0x0018 */ s32 bgsDayCount; // increments with totalDays, can be cleared with `Environment_ClearBgsDayCount`
    /* 0x001C */ char newf[6]; // string "ZELDAZ". start of `info` substruct, originally called "information"
    /* 0x0022 */ u16 deaths;
    /* 0x0024 */ char playerName[8];
    /* 0x002C */ s16 n64ddFlag;
    /* 0x002E */ s16 healthCapacity; // "max_life"
    /* 0x0030 */ s16 health; // "now_life"
    /* 0x0032 */ s8 magicLevel; // 0 for no magic/new load, 1 for magic, 2 for double magic
    /* 0x0033 */ s8 magic; // current magic available for use
    /* 0x0034 */ s16 rupees;
    /* 0x0036 */ u16 swordHealth;
    /* 0x0038 */ u16 naviTimer;
    /* 0x003A */ u8 isMagicAcquired;
    /* 0x003B */ char unk_3B[0x01];
    /* 0x003C */ u8 isDoubleMagicAcquired;
    /* 0x003D */ u8 doubleDefense;
    /* 0x003E */ u8 bgsFlag;
    /* 0x003F */ u8 ocarinaGameRoundNum;
    /* 0x0040 */ ItemEquips childEquips;
    /* 0x004A */ ItemEquips adultEquips;
    /* 0x0054 */ u32 unk_54; // this may be incorrect, currently used for alignment
    /* 0x0058 */ char unk_58[0x0E];
    /* 0x0066 */ s16 savedSceneId;
    /* 0x0068 */ ItemEquips equips;
    /* 0x0074 */ Inventory inventory;
    /* 0x00D4 */ SavedSceneFlags sceneFlags[124];
    /* 0x0E64 */ FaroresWindData fw;
    /* 0x0E8C */ char unk_E8C[0x10];
    /* 0x0E9C */ s32 gsFlags[6];
    /* 0x0EB4 */ char unk_EB4[0x4];
    /* 0x0EB8 */ s32 highScores[7];
    /* 0x0ED4 */ u16 eventChkInf[14]; // "event_chk_inf"
    /* 0x0EF0 */ u16 itemGetInf[4]; // "item_get_inf"
    /* 0x0EF8 */ u16 infTable[30]; // "inf_table"
    /* 0x0F34 */ char unk_F34[0x04];
    /* 0x0F38 */ u32 worldMapAreaData; // "area_arrival"
    /* 0x0F3C */ char unk_F3C[0x4];
    /* 0x0F40 */ u8 scarecrowLongSongSet;
    /* 0x0F41 */ u8 scarecrowLongSong[0x360];
    /* 0x12A1 */ char unk_12A1[0x24];
    /* 0x12C5 */ u8 scarecrowSpawnSongSet;
    /* 0x12C6 */ u8 scarecrowSpawnSong[0x80];
    /* 0x1346 */ char unk_1346[0x02];
    /* 0x1348 */ HorseData horseData;
    /* 0x1352 */ u16 checksum; // "check_sum"
    /* 0x1354 */ s32 fileNum; // "file_no"
    /* 0x1358 */ char unk_1358[0x0004];
    /* 0x135C */ s32 gameMode;
    /* 0x1360 */ s32 sceneLayer; // "counter"
    /* 0x1364 */ s32 respawnFlag; // "restart_flag"
    /* 0x1368 */ RespawnData respawn[RESPAWN_MODE_MAX]; // "restart_data"
    /* 0x13BC */ f32 entranceSpeed;
    /* 0x13C0 */ u16 entranceSound;
    /* 0x13C2 */ char unk_13C2[0x0001];
    /* 0x13C3 */ u8 retainWeatherMode;
    /* 0x13C4 */ s16 dogParams;
    /* 0x13C6 */ u8 textTriggerFlags;
    /* 0x13C7 */ u8 showTitleCard;
    /* 0x13C8 */ s16 nayrusLoveTimer;
    /* 0x13CA */ char unk_13CA[0x0002];
    /* 0x13CC */ s16 rupeeAccumulator;
    /* 0x13CE */ s16 timer1State;
    /* 0x13D0 */ s16 timer1Value;
    /* 0x13D2 */ s16 timer2State;
    /* 0x13D4 */ s16 timer2Value;
    /* 0x13D6 */ s16 timerX[2];
    /* 0x13DA */ s16 timerY[2];
    /* 0x13DE */ char unk_13DE[0x0002];
    /* 0x13E0 */ u8 seqId;
    /* 0x13E1 */ u8 natureAmbienceId;
    /* 0x13E2 */ u8 buttonStatus[5];
    /* 0x13E7 */ u8 unk_13E7; // alpha related
    /* 0x13E8 */ u16 unk_13E8; // alpha type?
    /* 0x13EA */ u16 unk_13EA; // also alpha type?
    /* 0x13EC */ u16 unk_13EC; // alpha type counter?
    /* 0x13EE */ u16 unk_13EE; // previous alpha type?
    /* 0x13F0 */ s16 magicState; // determines magic meter behavior on each frame
    /* 0x13F2 */ s16 prevMagicState; // used to resume the previous state after adding or filling magic
    /* 0x13F4 */ s16 magicCapacity; // maximum magic available
    /* 0x13F6 */ s16 magicFillTarget; // target used to fill magic. Target can either be full capacity (Magic_Fill, magic upgrades), or the saved magic amount (loading a file, game over)
    /* 0x13F8 */ s16 magicTarget; // target for magic to step to when adding or consuming magic
    /* 0x13FA */ u16 eventInf[4]; // "event_inf"
    /* 0x1402 */ u16 mapIndex; // intended for maps/minimaps but commonly used as the dungeon index
    /* 0x1404 */ u16 minigameState;
    /* 0x1406 */ u16 minigameScore; // "yabusame_total"
    /* 0x1408 */ char unk_1408[0x0001];
    /* 0x1409 */ u8 language; // NTSC 0: Japanese; 1: English | PAL 0: English; 1: German; 2: French
    /* 0x140A */ u8 audioSetting;
    /* 0x140B */ char unk_140B[0x0001];
    /* 0x140C */ u8 zTargetSetting; // 0: Switch; 1: Hold
    /* 0x140E */ u16 forcedSeqId; // immediately start playing the sequence if set
    /* 0x1410 */ u8 cutsceneTransitionControl; // context dependent usage: can either trigger a delayed fade or control fill alpha
    /* 0x1411 */ char unk_1411[0x0001];
    /* 0x1412 */ u16 nextCutsceneIndex;
    /* 0x1414 */ u8 cutsceneTrigger;
    /* 0x1415 */ u8 chamberCutsceneNum;
    /* 0x1416 */ u16 nextDayTime; // "next_zelda_time"
    /* 0x1418 */ u8 transFadeDuration;
    /* 0x1419 */ u8 transWipeSpeed;
    /* 0x141A */ u16 skyboxTime;
    /* 0x141C */ u8 dogIsLost;
    /* 0x141D */ u8 nextTransitionType;
    /* 0x141E */ char unk_141E[0x0002];
    /* 0x1420 */ s16 worldMapArea;
    /* 0x1422 */ s16 sunsSongState; // controls the effects of suns song
    /* 0x1424 */ s16 healthAccumulator;
} SaveContext; // size = 0x1428

typedef enum {
    /* 0x00 */ BTN_ENABLED,
    /* 0xFF */ BTN_DISABLED = 0xFF
} ButtonStatus;

typedef enum {
    /* 0x00 */ CHAMBER_CS_FOREST,
    /* 0x01 */ CHAMBER_CS_FIRE,
    /* 0x02 */ CHAMBER_CS_WATER,
    /* 0x03 */ CHAMBER_CS_SPIRIT,
    /* 0x04 */ CHAMBER_CS_SHADOW,
    /* 0x05 */ CHAMBER_CS_LIGHT
} ChamberCutsceneNum;

typedef enum {
    /* 0x00 */ HS_HBA,          // horseback archery
    /* 0x01 */ HS_POE_POINTS,
    /* 0x02 */ HS_FISHING,
    /* 0x03 */ HS_HORSE_RACE,
    /* 0x04 */ HS_MARATHON,
    /* 0x05 */ HS_UNK_05,
    /* 0x06 */ HS_DAMPE_RACE
} HighScores;

typedef enum {
    /* 0 */ SUNSSONG_INACTIVE,
    /* 1 */ SUNSSONG_START, // the suns ocarina effect signals that the song has finished playing
    /* 2 */ SUNSSONG_SPEED_TIME, // suns was played where time passes, speed up the advancement of time
    /* 3 */ SUNSSONG_SPECIAL // time does not advance, but signals the song was played. used for freezing redeads
} SunsSongState;

typedef enum {
    /* 0 */ GAMEMODE_NORMAL,
    /* 1 */ GAMEMODE_TITLE_SCREEN,
    /* 2 */ GAMEMODE_FILE_SELECT, // Note: only instance type transitions swap to file select
    /* 3 */ GAMEMODE_END_CREDITS
} GameMode;

typedef enum {
    /* 0 */ SCENE_LAYER_CHILD_DAY,
    /* 1 */ SCENE_LAYER_CHILD_NIGHT,
    /* 2 */ SCENE_LAYER_ADULT_DAY,
    /* 3 */ SCENE_LAYER_ADULT_NIGHT,
    /* 4 */ SCENE_LAYER_CUTSCENE_FIRST 
} SceneLayer;

#define IS_CUTSCENE_LAYER (gSaveContext.sceneLayer >= SCENE_LAYER_CUTSCENE_FIRST)

typedef enum {
    /* 0 */ LINK_AGE_ADULT,
    /* 1 */ LINK_AGE_CHILD
} LinkAge;



/*
 *
 * SaveContext flags
 *
 */


/*
 * SaveContext.eventChkInf
 */

#define EVENTCHKINF_02 0x02
#define EVENTCHKINF_03 0x03
#define EVENTCHKINF_04 0x04
#define EVENTCHKINF_05 0x05
#define EVENTCHKINF_07 0x07
#define EVENTCHKINF_09 0x09
#define EVENTCHKINF_0A 0x0A
#define EVENTCHKINF_0B 0x0B
#define EVENTCHKINF_0C 0x0C
#define EVENTCHKINF_0F 0x0F
#define EVENTCHKINF_10 0x10
#define EVENTCHKINF_11 0x11
#define EVENTCHKINF_12 0x12
#define EVENTCHKINF_13 0x13
#define EVENTCHKINF_14 0x14
#define EVENTCHKINF_15 0x15
#define EVENTCHKINF_16 0x16
#define EVENTCHKINF_18 0x18
#define EVENTCHKINF_1B 0x1B
#define EVENTCHKINF_1C 0x1C
#define EVENTCHKINF_1D 0x1D
#define EVENTCHKINF_1E 0x1E
#define EVENTCHKINF_20 0x20
#define EVENTCHKINF_21 0x21
#define EVENTCHKINF_22 0x22
#define EVENTCHKINF_23 0x23
#define EVENTCHKINF_25 0x25
#define EVENTCHKINF_2A 0x2A
#define EVENTCHKINF_2B 0x2B
#define EVENTCHKINF_2C 0x2C
#define EVENTCHKINF_2D 0x2D
#define EVENTCHKINF_2F 0x2F
#define EVENTCHKINF_30 0x30
#define EVENTCHKINF_31 0x31
#define EVENTCHKINF_32 0x32
#define EVENTCHKINF_33 0x33
#define EVENTCHKINF_37 0x37
#define EVENTCHKINF_38 0x38
#define EVENTCHKINF_39 0x39
#define EVENTCHKINF_3A 0x3A
#define EVENTCHKINF_3B 0x3B
#define EVENTCHKINF_3C 0x3C

// 0x40
#define EVENTCHKINF_40_INDEX 4
#define EVENTCHKINF_40_SHIFT 0
#define EVENTCHKINF_40_MASK (1 << EVENTCHKINF_40_SHIFT)
#define EVENTCHKINF_40 ((EVENTCHKINF_40_INDEX << 4) | EVENTCHKINF_40_SHIFT)

#define EVENTCHKINF_41 0x41
#define EVENTCHKINF_42 0x42
#define EVENTCHKINF_43 0x43
#define EVENTCHKINF_45 0x45
#define EVENTCHKINF_48 0x48
#define EVENTCHKINF_49 0x49
#define EVENTCHKINF_4A 0x4A
#define EVENTCHKINF_4B 0x4B
#define EVENTCHKINF_4C 0x4C
#define EVENTCHKINF_4D 0x4D
#define EVENTCHKINF_4E 0x4E
#define EVENTCHKINF_4F 0x4F
#define EVENTCHKINF_50 0x50
#define EVENTCHKINF_51 0x51
#define EVENTCHKINF_52 0x52
#define EVENTCHKINF_54 0x54
#define EVENTCHKINF_55 0x55
#define EVENTCHKINF_59 0x59
#define EVENTCHKINF_5A 0x5A
#define EVENTCHKINF_5B 0x5B
#define EVENTCHKINF_5C 0x5C
#define EVENTCHKINF_65 0x65
#define EVENTCHKINF_67 0x67
#define EVENTCHKINF_68 0x68
#define EVENTCHKINF_69 0x69
#define EVENTCHKINF_6A 0x6A

// 0x6B
#define EVENTCHKINF_6B_INDEX 6
#define EVENTCHKINF_6B_SHIFT 11
#define EVENTCHKINF_6B_MASK (1 << EVENTCHKINF_6B_SHIFT)
#define EVENTCHKINF_6B ((EVENTCHKINF_6B_INDEX << 4) | EVENTCHKINF_6B_SHIFT)

#define EVENTCHKINF_6E 0x6E
#define EVENTCHKINF_6F 0x6F
#define EVENTCHKINF_70 0x70
#define EVENTCHKINF_71 0x71
#define EVENTCHKINF_72 0x72
#define EVENTCHKINF_73 0x73
#define EVENTCHKINF_74 0x74
#define EVENTCHKINF_75 0x75
#define EVENTCHKINF_76 0x76
#define EVENTCHKINF_77 0x77
#define EVENTCHKINF_78 0x78
#define EVENTCHKINF_80 0x80
#define EVENTCHKINF_82 0x82
#define EVENTCHKINF_8C 0x8C
#define EVENTCHKINF_8D 0x8D
#define EVENTCHKINF_8E 0x8E
#define EVENTCHKINF_8F 0x8F

// 0x90-0x93
// carpenters freed from the gerudo
#define EVENTCHKINF_CARPENTERS_FREE_INDEX 9
#define EVENTCHKINF_CARPENTERS_FREE_SHIFT(n) (0 + (n))
#define EVENTCHKINF_CARPENTERS_FREE_MASK(n) (1 << EVENTCHKINF_CARPENTERS_FREE_SHIFT(n))
#define EVENTCHKINF_CARPENTERS_FREE(n) ((EVENTCHKINF_CARPENTERS_FREE_INDEX << 4) | EVENTCHKINF_CARPENTERS_FREE_SHIFT(n))
#define EVENTCHKINF_CARPENTERS_FREE_MASK_ALL (\
      EVENTCHKINF_CARPENTERS_FREE_MASK(0)     \
    | EVENTCHKINF_CARPENTERS_FREE_MASK(1)     \
    | EVENTCHKINF_CARPENTERS_FREE_MASK(2)     \
    | EVENTCHKINF_CARPENTERS_FREE_MASK(3)    )
#define GET_EVENTCHKINF_CARPENTERS_FREE_ALL() \
    CHECK_FLAG_ALL(gSaveContext.eventChkInf[EVENTCHKINF_CARPENTERS_FREE_INDEX], EVENTCHKINF_CARPENTERS_FREE_MASK_ALL)

#define EVENTCHKINF_94 0x94
#define EVENTCHKINF_95 0x95
#define EVENTCHKINF_96 0x96
#define EVENTCHKINF_9C 0x9C
#define EVENTCHKINF_A0 0xA0
#define EVENTCHKINF_A1 0xA1
#define EVENTCHKINF_A3 0xA3
#define EVENTCHKINF_A4 0xA4
#define EVENTCHKINF_A5 0xA5
#define EVENTCHKINF_A6 0xA6
#define EVENTCHKINF_A7 0xA7
#define EVENTCHKINF_A8 0xA8
#define EVENTCHKINF_A9 0xA9
#define EVENTCHKINF_AA 0xAA
#define EVENTCHKINF_AC 0xAC
#define EVENTCHKINF_AD 0xAD
#define EVENTCHKINF_B0 0xB0
#define EVENTCHKINF_B1 0xB1
#define EVENTCHKINF_B2 0xB2
#define EVENTCHKINF_B3 0xB3
#define EVENTCHKINF_B4 0xB4
#define EVENTCHKINF_B5 0xB5
#define EVENTCHKINF_B6 0xB6
#define EVENTCHKINF_B7 0xB7
#define EVENTCHKINF_B8 0xB8
#define EVENTCHKINF_B9 0xB9
#define EVENTCHKINF_BA 0xBA
#define EVENTCHKINF_BB 0xBB
#define EVENTCHKINF_BC 0xBC
#define EVENTCHKINF_BD 0xBD
#define EVENTCHKINF_BE 0xBE
#define EVENTCHKINF_BF 0xBF
#define EVENTCHKINF_C0 0xC0
#define EVENTCHKINF_C1 0xC1
#define EVENTCHKINF_C3 0xC3
#define EVENTCHKINF_C4 0xC4
#define EVENTCHKINF_C5 0xC5
#define EVENTCHKINF_C6 0xC6
#define EVENTCHKINF_C7 0xC7
#define EVENTCHKINF_C8 0xC8
#define EVENTCHKINF_C9 0xC9

// 0xD0-0xD6
#define EVENTCHKINF_SONGS_FOR_FROGS_INDEX 13
#define EVENTCHKINF_SONGS_FOR_FROGS_CHOIR_SHIFT  0
#define EVENTCHKINF_SONGS_FOR_FROGS_ZL_SHIFT     1
#define EVENTCHKINF_SONGS_FOR_FROGS_EPONA_SHIFT  2
#define EVENTCHKINF_SONGS_FOR_FROGS_SUNS_SHIFT   3
#define EVENTCHKINF_SONGS_FOR_FROGS_SARIA_SHIFT  4
#define EVENTCHKINF_SONGS_FOR_FROGS_SOT_SHIFT    5
#define EVENTCHKINF_SONGS_FOR_FROGS_STORMS_SHIFT 6
#define EVENTCHKINF_SONGS_FOR_FROGS_CHOIR_MASK  (1 << EVENTCHKINF_SONGS_FOR_FROGS_CHOIR_SHIFT)
#define EVENTCHKINF_SONGS_FOR_FROGS_ZL_MASK     (1 << EVENTCHKINF_SONGS_FOR_FROGS_ZL_SHIFT)
#define EVENTCHKINF_SONGS_FOR_FROGS_EPONA_MASK  (1 << EVENTCHKINF_SONGS_FOR_FROGS_EPONA_SHIFT)
#define EVENTCHKINF_SONGS_FOR_FROGS_SUNS_MASK   (1 << EVENTCHKINF_SONGS_FOR_FROGS_SUNS_SHIFT)
#define EVENTCHKINF_SONGS_FOR_FROGS_SARIA_MASK  (1 << EVENTCHKINF_SONGS_FOR_FROGS_SARIA_SHIFT)
#define EVENTCHKINF_SONGS_FOR_FROGS_SOT_MASK    (1 << EVENTCHKINF_SONGS_FOR_FROGS_SOT_SHIFT)
#define EVENTCHKINF_SONGS_FOR_FROGS_STORMS_MASK (1 << EVENTCHKINF_SONGS_FOR_FROGS_STORMS_SHIFT)
#define EVENTCHKINF_SONGS_FOR_FROGS_CHOIR  ((EVENTCHKINF_SONGS_FOR_FROGS_INDEX << 4) | EVENTCHKINF_SONGS_FOR_FROGS_CHOIR_SHIFT)
#define EVENTCHKINF_SONGS_FOR_FROGS_ZL     ((EVENTCHKINF_SONGS_FOR_FROGS_INDEX << 4) | EVENTCHKINF_SONGS_FOR_FROGS_ZL_SHIFT)
#define EVENTCHKINF_SONGS_FOR_FROGS_EPONA  ((EVENTCHKINF_SONGS_FOR_FROGS_INDEX << 4) | EVENTCHKINF_SONGS_FOR_FROGS_EPONA_SHIFT)
#define EVENTCHKINF_SONGS_FOR_FROGS_SUNS   ((EVENTCHKINF_SONGS_FOR_FROGS_INDEX << 4) | EVENTCHKINF_SONGS_FOR_FROGS_SUNS_SHIFT)
#define EVENTCHKINF_SONGS_FOR_FROGS_SARIA  ((EVENTCHKINF_SONGS_FOR_FROGS_INDEX << 4) | EVENTCHKINF_SONGS_FOR_FROGS_SARIA_SHIFT)
#define EVENTCHKINF_SONGS_FOR_FROGS_SOT    ((EVENTCHKINF_SONGS_FOR_FROGS_INDEX << 4) | EVENTCHKINF_SONGS_FOR_FROGS_SOT_SHIFT)
#define EVENTCHKINF_SONGS_FOR_FROGS_STORMS ((EVENTCHKINF_SONGS_FOR_FROGS_INDEX << 4) | EVENTCHKINF_SONGS_FOR_FROGS_STORMS_SHIFT)

// 0xDA-0xDE
#define EVENTCHKINF_DA_DB_DC_DD_DE_INDEX 13
#define EVENTCHKINF_DA_MASK (1 << 10)
#define EVENTCHKINF_DB_MASK (1 << 11)
#define EVENTCHKINF_DC_MASK (1 << 12)
#define EVENTCHKINF_DD_MASK (1 << 13)
#define EVENTCHKINF_DE_MASK (1 << 14)


/*
 * SaveContext.itemGetInf
 */

#define ITEMGETINF_02 0x02
#define ITEMGETINF_03 0x03
#define ITEMGETINF_04 0x04
#define ITEMGETINF_05 0x05
#define ITEMGETINF_06 0x06
#define ITEMGETINF_07 0x07
#define ITEMGETINF_08 0x08
#define ITEMGETINF_09 0x09
#define ITEMGETINF_0A 0x0A
#define ITEMGETINF_0B 0x0B
#define ITEMGETINF_0C 0x0C
#define ITEMGETINF_0D 0x0D
#define ITEMGETINF_0E 0x0E
#define ITEMGETINF_0F 0x0F
#define ITEMGETINF_10 0x10
#define ITEMGETINF_11 0x11
#define ITEMGETINF_12 0x12
#define ITEMGETINF_13 0x13
#define ITEMGETINF_15 0x15
#define ITEMGETINF_16 0x16
#define ITEMGETINF_17 0x17

// 0x18-0x1A
#define ITEMGETINF_18_19_1A_INDEX 1
#define ITEMGETINF_18_SHIFT 8
#define ITEMGETINF_19_SHIFT 9
#define ITEMGETINF_1A_SHIFT 10
#define ITEMGETINF_18_MASK (1 << ITEMGETINF_18_SHIFT)
#define ITEMGETINF_19_MASK (1 << ITEMGETINF_19_SHIFT)
#define ITEMGETINF_1A_MASK (1 << ITEMGETINF_1A_SHIFT)
#define ITEMGETINF_18 ((ITEMGETINF_18_19_1A_INDEX << 4) | ITEMGETINF_18_SHIFT)
#define ITEMGETINF_19 ((ITEMGETINF_18_19_1A_INDEX << 4) | ITEMGETINF_19_SHIFT)
#define ITEMGETINF_1A ((ITEMGETINF_18_19_1A_INDEX << 4) | ITEMGETINF_1A_SHIFT)

#define ITEMGETINF_1B 0x1B
#define ITEMGETINF_1C 0x1C
#define ITEMGETINF_1D 0x1D
#define ITEMGETINF_1E 0x1E
#define ITEMGETINF_1F 0x1F
#define ITEMGETINF_23 0x23
#define ITEMGETINF_24 0x24
#define ITEMGETINF_25 0x25
#define ITEMGETINF_26 0x26
#define ITEMGETINF_2A 0x2A
#define ITEMGETINF_2C 0x2C
#define ITEMGETINF_2E 0x2E
#define ITEMGETINF_30 0x30
#define ITEMGETINF_31 0x31
#define ITEMGETINF_38 0x38
#define ITEMGETINF_39 0x39
#define ITEMGETINF_3A 0x3A
#define ITEMGETINF_3B 0x3B
#define ITEMGETINF_3F 0x3F


/*
 * SaveContext.infTable
 */

#define INFTABLE_VISITED_KOKIRI_FOREST_WIP 0x00
#define INFTABLE_GREETED_BY_SARIA 0x01
#define INFTABLE_TOLD_SARIA_ABOUT_MIDO_WIP 0x03
#define INFTABLE_SPOKE_TO_SARIA_IN_HER_HOUSE 0x05
#define INFTABLE_SHOWED_MIDO_FAIRY 0x0C
#define INFTABLE_MIDO_SUGGESTED_SWORD_SHIELD 0x0E
#define INFTABLE_MIDO_BLAMES_LINK_FOR_DEKU_TREE_DEATH 0x10
#define INFTABLE_MIDO_GREETS_ADULT_LINK 0x15
#define INFTABLE_PLAYED_SARIAS_SONG_FOR_MIDO_AS_ADULT 0x17
#define INFTABLE_MIDO_LEARNS_SARIA_AWOKE_AS_SAGE 0x19
#define INFTABLE_SPOKE_TO_KOKIRI_GIRL_BY_JUMPING_STONES 0x1E
#define INFTABLE_SPOKE_TO_KOKIRI_BOY_GUARDING_FOREST_EXIT 0x22
#define INFTABLE_SPOKE_TO_KOKIRI_BOY_CUTTING_GRASS 0x24
#define INFTABLE_SPOKE_TO_KOKIRI_GIRL_ABOVE_SHOP 0x26
#define INFTABLE_SPOKE_TO_GIRL_IN_SARIAS_HOUSE 0x28
#define INFTABLE_LEARNED_ABOUT_C_BUTTONS 0x2A
#define INFTABLE_LEARNED_ABOUT_ACTION_ICON 0x2B
#define INFTABLE_LEARNED_ABOUT_MAP 0x2E
#define INFTABLE_LEARNED_ABOUT_ITEMS 0x2F
#define INFTABLE_DID_NOT_LEARN_ABOUT_MAP_OR_ITEMS 0x30
#define INFTABLE_SPOKE_TO_KOKIRI_BOY_IN_MIDOS_HOUSE 0x41
#define INFTABLE_SPOKE_TO_KOKIRI_BOY_WANTS_TO_BE_BIG 0x47
#define INFTABLE_SPOKE_TO_KOKIRI_GIRL_REGARDING_MIDO_ACCUSING_LINK 0x51
#define INFTABLE_SPOKE_TO_KOKIRI_BOY_EVIL_WIND_FROM_FOREST_TEMPLE 0x59
#define INFTABLE_SPOKE_TO_KOKIRI_BOY_REGARDING_SARIA_MISSING 0x61
#define INFTABLE_SPOKE_TO_DEKU_TREE_SPROUT_AFTER_CUTSCENE 0x66
#define INFTABLE_SPOKE_TO_CASTLE_TOWN_ENTRANCE_GUARD 0x6A
#define INFTABLE_SPOKE_TO_DYING_CASTLE_TOWN_ALLEY_GUARD_WIP 0x6C
#define INFTABLE_SPOKE_TO_KAKARIKO_GUARD_REGARDING_MASK_SHOP 0x71
#define INFTABLE_GAVE_ZELDA_LETTER_TO_KAKARIKO_GUARD_WIP 0x76
#define INFTABLE_SOLD_KEATON_MASK_TO_KAKARIKO_GUARD_WIP 0x77
#define INFTABLE_SPOKE_TO_TALON_AT_LON_LON_RANCH_WIP 0x7E
#define INFTABLE_SPOKE_TO_MALON_IN_CASTLE_TOWN 0x84
#define INFTABLE_MALON_SAYS_EPONA_IS_AFRAID_OF_LINK 0x85
#define INFTABLE_SPOKE_TO_MALON_AFTER_WAKING_TALON_AT_HYRULE_CASTLE_WIP 0x8B
#define INFTABLE_PLAYED_EPONA_SONG_FOR_ADULT_MALON 0x8C
#define INFTABLE_UNUSED_MALON_ADULT_CHECK 0x8D
#define INFTABLE_TOOK_OUT_OCARINA_IN_FRONT_OF_ADULT_MALON_WIP 0x8E
#define INFTABLE_SPOKE_TO_INGO_AS_CHILD_BEFORE_WAKING_TALON_WIP 0x94
#define INFTABLE_SPOKE_TO_INGO_AS_CHILD_AFTER_WAKING_TALON 0x97
#define INFTABLE_SPOKE_TO_INGO_AS_ADULT 0x9A
#define INFTABLE_INGO_CHALLENGES_LINK_TO_WAGER_WIP 0xA2
#define INFTABLE_DECLINED_WAGER_FROM_INGO_WIP 0xAB
#define INFTABLE_SPOKE_TO_MEDIGORON_AS_CHILD_WIP 0xB0
#define INFTABLE_SPOKE_TO_MEDIGORON_AS_ADULT_BEFORE_OBTAINING_BIGGORON_SWORD_WIP 0xB1
#define INFTABLE_BIGGORON_ASKED_FOR_EYEDROPS 0xB4
#define INFTABLE_MET_POE_COLLECTOR_WIP 0xB6
#define INFTABLE_SPOKE_TO_FADO_AS_CHILD 0xB7
#define INFTABLE_SPOKE_TO_MALON_AFTER_DEFEATING_INGO 0xB8
#define INFTABLE_SPOKE_TO_MALON_AFTER_TAMING_EPONA 0xB9
#define INFTABLE_RECEIVED_POACHER_SAW_FROM_FADO 0xBC
#define INFTABLE_SPOKE_TO_HYLIAN_WOMAN_REGARDING_LON_LON_RANCH 0xC0
#define INFTABLE_SPOKE_TO_HYLIAN_WOMAN_REGARDING_ZELDA_ON_WHITE_HORSE 0xC1
#define INFTABLE_SPOKE_TO_HYLIAN_MAN_REGARDING_BEARD_AND_TALON 0xC2
#define INFTABLE_SPOKE_TO_HYLIAN_MAN_REGARDING_GANONDORF_ON_BLACK_HORSE 0xC3
#define INFTABLE_SPOKE_TO_SCARED_HYLIAN_MAN 0xC4
#define INFTABLE_SPOKE_TO_HYLIAN_MAN_REGARDING_ENJOYING_CASTLE_TOWN 0xC5
#define INFTABLE_SPOKE_TO_OLD_HYLIAN_WOMAN_REGARDING_MAKING_LOTS_OF_MONEY 0xC6
#define INFTABLE_SPOKE_TO_OLD_HYLIAN_MAN_REGARDING_SHEIKAH_TRIBE 0xC7
#define INFTABLE_SPOKE_TO_YOUNG_HYLIAN_WOMAN_REGARDING_TEMPLE_OF_TIME 0xC8
#define INFTABLE_SPOKE_TO_YOUNG_HYLIAN_WOMAN_AFTER_ZELDA_ESCAPE 0xC9
#define INFTABLE_SPOKE_TO_LAUGHING_MAN_REGARDING_SNEAKING_INTO_CASTLE 0xCA
#define INFTABLE_SPOKE_TO_HYLIAN_WOMAN_REGARDING_TALON 0xCB
#define INFTABLE_SPOKE_TO_OLD_HYLIAN_WOMAN_REGARDING_LEAVING_TOWN 0xCC
#define INFTABLE_SPOKE_TO_MAN_REGARDING_BEING_CAUGHT_SNEAKING_INTO_CASTLE 0xCD
#define INFTABLE_DUPLICATE_SPOKE_TO_OLD_HYLIAN_WOMAN_REGARDING_MAKING_LOTS_OF_MONEY 0xCE
#define INFTABLE_DUPLICATE_ENJOYING_CASTLE_TOWN 0xD0
#define INFTABLE_SPOKE_TO_HONEY 0xD2
#define INFTABLE_DUPLICATE_SHEIKAH_TRIBE_MESSAGE 0xD4
#define INFTABLE_UNUSED_MESSAGE 0xD6
#define INFTABLE_UNUSED_CARPENTER_TEXT_DAMPE_ACTOR 0xD8
#define INFTABLE_GREETED_BY_DAMPE_AS_CHILD_WIP 0xD9
#define INFTABLE_SPOKE_TO_GORON_REGARDING_DODONGO_CAVERN_ENTRANCE 0xE0
#define INFTABLE_SPOKE_TO_GORON_REGARDING_FOREST 0xE3
#define INFTABLE_SPOKE_TO_GORON_REGARDING_DARUNIA_HIDING_SPIRITUAL_STONE 0xE6
#define INFTABLE_SPOKE_TO_GORON_REGARDING_BOMB_FLOWERS 0xEB
#define INFTABLE_SPOKE_TO_GORON_REGARDING_ROCK_DIET 0xF0
#define INFTABLE_SPOKE_TO_GORON_REGARDING_EATING_GORON_RUBY 0xF4
#define INFTABLE_SPOKE_TO_GORON_REGARDING_DARUNIA_LIKING_FOREST_MUSIC 0xF8
#define INFTABLE_ATTEMPTED_TO_BUY_BOMBS_BEFORE_BOMB_BAG_WIP 0xFC
#define INFTABLE_RECEIVED_GORON_TUNIC_FROM_GORON_LINK_WIP 0x109
#define INFTABLE_UNUSED_GORON_FLAG 0x10A
#define INFTABLE_SPOKE_TO_GORON_LINK_REGARDING_VOLVAGIA 0x10B
#define INFTABLE_STOPPED_GORON_LINK_ROLLING_WIP 0x10C
#define INFTABLE_SPOKE_TO_GORON_LINK_REGARDING_GANONDORF_KIDNAPPING_GORONS 0x10D
#define INFTABLE_SPOKE_TO_GORON_LINK_REGARDING_FIRE_TEMPLE_ENTRANCE 0x10E
#define INFTABLE_SPOKE_TO_GORON_LINK_AFTER_FIRE_TEMPLE_CLEAR 0x10F
#define INFTABLE_MET_DARUNIA_IN_GORON_CITY_AS_CHILD 0x113
#define INFTABLE_MET_DARUNIA_IN_FIRE_TEMPLE_WIP 0x11A
#define INFTABLE_RECEIVED_BOMB_BAG_UPGRADE_FROM_ROLLING_GORON_WIP 0x11E
#define INFTABLE_SPOKE_TO_ZORA_REGARDING_ZORA_FOUNTAIN 0x124
#define INFTABLE_SPOKE_TO_ZORA_REGARDING_KING_ZORA 0x129
#define INFTABLE_DUPLICATE_SPOKE_TO_ZORA_REGARDING_KING_ZORA 0x12A
#define INFTABLE_SEEN_FROZEN_KING_ZORA_WIP 0x138
#define INFTABLE_REVIVED_KING_ZORA 0x139
#define INFTABLE_RUTO_JABU_JABU_ON_BLUE_SWITCH_WIP 0x140
#define INFTABLE_RUTO_JABU_JABU_MET_WIP 0x141
#define INFTABLE_RUTO_JABU_JABU_SPOKEN_TO_WIP 0x142
#define INFTABLE_RUTO_JABU_JABU_CAN_BE_ESCORTED_WIP 0x143
#define INFTABLE_RUTO_JABU_JABU_WANTS_TO_BE_THROWN_TOWARDS_SAPPHIRE_WIP 0x144
#define INFTABLE_RUTO_JABU_JABU_ON_SAPPHIRE_PLATFORM_WIP 0x145
#define INFTABLE_RUTO_JABU_JABU_KIDNAPPED_WIP 0x146
#define INFTABLE_RUTO_JABU_JABU_SPAWNS_ON_FLOOR_1_WIP 0x147
#define INFTABLE_SPOKE_TO_HYLIAN_MAN_IN_IMPA_HOUSE_AS_CHILD 0x160
#define INFTABLE_SPOKE_TO_HYLIAN_MAN_IN_IMPA_HOUSE_NIGHT 0x161
#define INFTABLE_SPOKE_TO_HYLIAN_MAN_IN_IMPA_HOUSE 0x162
#define INFTABLE_GREETED_IN_KAKARIKO_BY_CARPENTER_BOSS_WIFE 0x163
#define INFTABLE_SPOKE_TO_CARPENTER_BOSS_WIFE_REGARDING_HARDSHIPS 0x164
#define INFTABLE_SPOKE_TO_COMPOSER_BROTHER_REGARDING_SUN_SONG 0x166
#define INFTABLE_SPOKE_TO_COMPOSER_BROTHER_REGARDING_HISTORY 0x16A
#define INFTABLE_SAID_DECLINED_OBTAINING_SILVER_GAUNTLETS_FOR_NABOORU 0x16C
#define INFTABLE_SPOKE_TO_CARPENTER_BOSS_REGARDING_BROKEN_GERUDO_BRIDGE_WIP 0x170
#define INFTABLE_DECLINED_GIVING_SAW_TO_CARPENTER_BOSS 0x171
#define INFTABLE_SPOKE_TO_CARPENTER_BOSS_REGARDING_IMPROVING_KAKARIKO_VILLAGE_WIP 0x172
#define INFTABLE_SPOKE_TO_CARPENTER_REGARDING_CRUEL_GANG_OF_THIEVES 0x176
#define INFTABLE_SPOKE_TO_CARPENTER_REGARDING_GERUDO_HORSEBACK_ARCHERY 0x178
#define INFTABLE_DECLINED_SELLING_BUNNY_MASK_TO_RUNNING_MAN_WIP 0x17C
#define INFTABLE_SPOKE_TO_RUNNING_MAN_REGARDING_RACE_TO_LOST_WOODS 0x17F
#define INFTABLE_RECEIVED_GERUDO_ARCHERY_HEART_PIECE_WIP 0x190
#define INFTABLE_RECEIVED_HEART_PIECE_FOR_FINDING_RICHARD_WIP 0x191
#define INFTABLE_BOUGHT_DEKU_STICK_UPGRADE_CAPACITY_20_WIP 0x192
#define INFTABLE_BOUGHT_DEKU_NUT_UPGRADE_CAPACITY_30_WIP 0x193
#define INFTABLE_SPOKE_TO_OWL_IN_LAKE_HYLIA_WIP 0x195
#define INFTABLE_SPOKE_TO_CURSED_MAN_REGARDING_GOLDEN_SKULLTULAS 0x196
#define INFTABLE_SPOKE_TO_CURSED_MAN_REGARDING_GETTING_REWARDS_FROM_HEALED_KIDS 0x197
#define INFTABLE_RECEIVED_MAGIC 0x198

// 0x199-0x19F
#define INFTABLE_199_19A_19B_19C_19D_19E_19F_INDEX 25
#define INFTABLE_199_MASK (1 << 9)
#define INFTABLE_19A_MASK (1 << 10)
#define INFTABLE_19B_MASK (1 << 11)
#define INFTABLE_19C_MASK (1 << 12)
#define INFTABLE_19D_MASK (1 << 13)
#define INFTABLE_19E_MASK (1 << 14)
#define INFTABLE_19F_MASK (1 << 15)

// 0x1A0-0x1AF
#define INFTABLE_1AX_INDEX 26
#define INFTABLE_1A0_SHIFT 0
#define INFTABLE_1A1_SHIFT 1
#define INFTABLE_1A2_SHIFT 2
#define INFTABLE_1A3_SHIFT 3
#define INFTABLE_1A4_SHIFT 4
#define INFTABLE_1A5_SHIFT 5
#define INFTABLE_1A6_SHIFT 6
#define INFTABLE_1A7_SHIFT 7
#define INFTABLE_1A8_SHIFT 8
#define INFTABLE_1A9_SHIFT 9
#define INFTABLE_1AB_SHIFT 11
#define INFTABLE_1AD_SHIFT 13

// 0x1D0-0x1DF
#define INFTABLE_1DX_INDEX 29


/*
 * SaveContext.eventInf
 */

// 0x00-0x0F
// horses related
#define EVENTINF_HORSES_INDEX 0
#define EVENTINF_HORSES_STATE_SHIFT 0
#define EVENTINF_HORSES_HORSETYPE_SHIFT 4
#define EVENTINF_HORSES_05_SHIFT 5
#define EVENTINF_HORSES_06_SHIFT 6
#define EVENTINF_HORSES_08_SHIFT 8
#define EVENTINF_HORSES_0A_SHIFT 10
#define EVENTINF_HORSES_0F_SHIFT 15 // unused?
#define EVENTINF_HORSES_STATE_MASK (0xF << EVENTINF_HORSES_STATE_SHIFT)
#define EVENTINF_HORSES_HORSETYPE_MASK (1 << EVENTINF_HORSES_HORSETYPE_SHIFT)
#define EVENTINF_HORSES_05_MASK (1 << EVENTINF_HORSES_05_SHIFT)
#define EVENTINF_HORSES_06_MASK (1 << EVENTINF_HORSES_06_SHIFT)
#define EVENTINF_HORSES_0F_MASK (1 << EVENTINF_HORSES_0F_SHIFT)
#define EVENTINF_HORSES_05 ((EVENTINF_HORSES_INDEX << 4) | EVENTINF_HORSES_05_SHIFT)
#define EVENTINF_HORSES_06 ((EVENTINF_HORSES_INDEX << 4) | EVENTINF_HORSES_06_SHIFT)
#define EVENTINF_HORSES_08 ((EVENTINF_HORSES_INDEX << 4) | EVENTINF_HORSES_08_SHIFT)
#define EVENTINF_HORSES_0A ((EVENTINF_HORSES_INDEX << 4) | EVENTINF_HORSES_0A_SHIFT)

typedef enum {
    /* 0 */ EVENTINF_HORSES_STATE_0,
    /* 1 */ EVENTINF_HORSES_STATE_1,
    /* 2 */ EVENTINF_HORSES_STATE_2,
    /* 3 */ EVENTINF_HORSES_STATE_3,
    /* 4 */ EVENTINF_HORSES_STATE_4,
    /* 5 */ EVENTINF_HORSES_STATE_5,
    /* 6 */ EVENTINF_HORSES_STATE_6,
    /* 7 */ EVENTINF_HORSES_STATE_7
} EventInfHorsesState;

// "InRaceSeq"
#define GET_EVENTINF_HORSES_STATE() \
    ((gSaveContext.eventInf[EVENTINF_HORSES_INDEX] & EVENTINF_HORSES_STATE_MASK) >> EVENTINF_HORSES_STATE_SHIFT)
#define SET_EVENTINF_HORSES_STATE(v)                                                   \
    gSaveContext.eventInf[EVENTINF_HORSES_INDEX] =                                     \
        (gSaveContext.eventInf[EVENTINF_HORSES_INDEX] & ~EVENTINF_HORSES_STATE_MASK) | \
        ((v) << EVENTINF_HORSES_STATE_SHIFT)

#define GET_EVENTINF_HORSES_HORSETYPE() \
    ((gSaveContext.eventInf[EVENTINF_HORSES_INDEX] & EVENTINF_HORSES_HORSETYPE_MASK) >> EVENTINF_HORSES_HORSETYPE_SHIFT)
#define SET_EVENTINF_HORSES_HORSETYPE(v)                                                   \
    gSaveContext.eventInf[EVENTINF_HORSES_INDEX] =                                         \
        (gSaveContext.eventInf[EVENTINF_HORSES_INDEX] & ~EVENTINF_HORSES_HORSETYPE_MASK) | \
        ((v) << EVENTINF_HORSES_HORSETYPE_SHIFT)

#define SET_EVENTINF_HORSES_0F(v)                  \
    gSaveContext.eventInf[EVENTINF_HORSES_INDEX] = \
        (gSaveContext.eventInf[EVENTINF_HORSES_INDEX] & ~EVENTINF_HORSES_0F_MASK) | ((v) << EVENTINF_HORSES_0F_SHIFT)


#define EVENTINF_10 0x10

// 0x20-0x24
#define EVENTINF_20_21_22_23_24_INDEX 2
#define EVENTINF_20_MASK (1 << 0)
#define EVENTINF_21_MASK (1 << 1)
#define EVENTINF_22_MASK (1 << 2)
#define EVENTINF_23_MASK (1 << 3)
#define EVENTINF_24_MASK (1 << 4)

#define EVENTINF_30 0x30



#endif
