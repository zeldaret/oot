#ifndef Z64SAVE_H
#define Z64SAVE_H

#include "ultra64.h"
#include "z64math.h"

typedef struct {
    /* 0x00 */ u8 buttonItems[4];
    /* 0x04 */ u8 cButtonSlots[3];
    /* 0x08 */ u16 equipment;
} ItemEquips; // size = 0x0A

typedef struct {
    /* 0x00 */ u8 items[24];
    /* 0x18 */ s8 ammo[16];
    /* 0x28 */ u16 equipment;
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
    /* 0x00 */ s16 scene;
    /* 0x02 */ Vec3s pos;
    /* 0x08 */ s16 angle;
} HorseData; // size = 0x0A

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


// eventChkInf

#define EVENTCHKINF_02 0x02
#define EVENTCHKINF_03 0x03
#define EVENTCHKINF_04 0x04
#define EVENTCHKINF_05 0x05
#define EVENTCHKINF_07 0x07
#define EVENTCHKINF_09 0x09
#define EVENTCHKINF_0A 0x0A
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
#define EVENTCHKINF_22 0x22
#define EVENTCHKINF_23 0x23
#define EVENTCHKINF_25 0x25
#define EVENTCHKINF_2F 0x2F
#define EVENTCHKINF_30 0x30
#define EVENTCHKINF_31 0x31
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
#define EVENTCHKINF_5B 0x5B
#define EVENTCHKINF_65 0x65
#define EVENTCHKINF_67 0x67
#define EVENTCHKINF_68 0x68
#define EVENTCHKINF_69 0x69
#define EVENTCHKINF_6A 0x6A

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
#define EVENTCHKINF_8C 0x8C
#define EVENTCHKINF_8D 0x8D
#define EVENTCHKINF_8E 0x8E
#define EVENTCHKINF_8F 0x8F

// 0x90-0x93
#define EVENTCHKINF_90_91_92_93_INDEX 9
#define EVENTCHKINF_90_SHIFT 0
#define EVENTCHKINF_91_SHIFT 1
#define EVENTCHKINF_92_SHIFT 2
#define EVENTCHKINF_93_SHIFT 3
#define EVENTCHKINF_90_MASK (1 << EVENTCHKINF_90_SHIFT)
#define EVENTCHKINF_91_MASK (1 << EVENTCHKINF_91_SHIFT)
#define EVENTCHKINF_92_MASK (1 << EVENTCHKINF_92_SHIFT)
#define EVENTCHKINF_93_MASK (1 << EVENTCHKINF_93_SHIFT)
#define EVENTCHKINF_90 ((EVENTCHKINF_90_91_92_93_INDEX << 4) | EVENTCHKINF_90_SHIFT)
#define EVENTCHKINF_91 ((EVENTCHKINF_90_91_92_93_INDEX << 4) | EVENTCHKINF_91_SHIFT)
#define EVENTCHKINF_92 ((EVENTCHKINF_90_91_92_93_INDEX << 4) | EVENTCHKINF_92_SHIFT)
#define EVENTCHKINF_93 ((EVENTCHKINF_90_91_92_93_INDEX << 4) | EVENTCHKINF_93_SHIFT)

#define EVENTCHKINF_94 0x94
#define EVENTCHKINF_95 0x95
#define EVENTCHKINF_96 0x96
#define EVENTCHKINF_9C 0x9C
#define EVENTCHKINF_AA 0xAA
#define EVENTCHKINF_B0 0xB0
#define EVENTCHKINF_B2 0xB2
#define EVENTCHKINF_C3 0xC3
#define EVENTCHKINF_C4 0xC4
#define EVENTCHKINF_C5 0xC5
#define EVENTCHKINF_C7 0xC7
#define EVENTCHKINF_C8 0xC8
#define EVENTCHKINF_C9 0xC9

// 0xD0-0xD6
#define EVENTCHKINF_D0_D1_D2_D3_D4_D5_D6_INDEX 13
#define EVENTCHKINF_D0_SHIFT 0
#define EVENTCHKINF_D1_SHIFT 1
#define EVENTCHKINF_D2_SHIFT 2
#define EVENTCHKINF_D3_SHIFT 3
#define EVENTCHKINF_D4_SHIFT 4
#define EVENTCHKINF_D5_SHIFT 5
#define EVENTCHKINF_D6_SHIFT 6
#define EVENTCHKINF_D0_MASK (1 << EVENTCHKINF_D0_SHIFT)
#define EVENTCHKINF_D1_MASK (1 << EVENTCHKINF_D1_SHIFT)
#define EVENTCHKINF_D2_MASK (1 << EVENTCHKINF_D2_SHIFT)
#define EVENTCHKINF_D3_MASK (1 << EVENTCHKINF_D3_SHIFT)
#define EVENTCHKINF_D4_MASK (1 << EVENTCHKINF_D4_SHIFT)
#define EVENTCHKINF_D5_MASK (1 << EVENTCHKINF_D5_SHIFT)
#define EVENTCHKINF_D6_MASK (1 << EVENTCHKINF_D6_SHIFT)
#define EVENTCHKINF_D0 ((EVENTCHKINF_D0_D1_D2_D3_D4_D5_D6_INDEX << 4) | EVENTCHKINF_D0_SHIFT)
#define EVENTCHKINF_D1 ((EVENTCHKINF_D0_D1_D2_D3_D4_D5_D6_INDEX << 4) | EVENTCHKINF_D1_SHIFT)
#define EVENTCHKINF_D2 ((EVENTCHKINF_D0_D1_D2_D3_D4_D5_D6_INDEX << 4) | EVENTCHKINF_D2_SHIFT)
#define EVENTCHKINF_D3 ((EVENTCHKINF_D0_D1_D2_D3_D4_D5_D6_INDEX << 4) | EVENTCHKINF_D3_SHIFT)
#define EVENTCHKINF_D4 ((EVENTCHKINF_D0_D1_D2_D3_D4_D5_D6_INDEX << 4) | EVENTCHKINF_D4_SHIFT)
#define EVENTCHKINF_D5 ((EVENTCHKINF_D0_D1_D2_D3_D4_D5_D6_INDEX << 4) | EVENTCHKINF_D5_SHIFT)
#define EVENTCHKINF_D6 ((EVENTCHKINF_D0_D1_D2_D3_D4_D5_D6_INDEX << 4) | EVENTCHKINF_D6_SHIFT)

// 0xDA-0xDE
#define EVENTCHKINF_DA_DB_DC_DD_DE_INDEX 13
#define EVENTCHKINF_DA_MASK (1 << 10)
#define EVENTCHKINF_DB_MASK (1 << 11)
#define EVENTCHKINF_DC_MASK (1 << 12)
#define EVENTCHKINF_DD_MASK (1 << 13)
#define EVENTCHKINF_DE_MASK (1 << 14)

// itemGetInf

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

#define ITEMGETINF_18_19_1A_INDEX 1
#define ITEMGETINF_18_MASK (1 << 8)
#define ITEMGETINF_19_MASK (1 << 9)
#define ITEMGETINF_1A_MASK (1 << 10)

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

typedef struct {
    /* 0x0000 */ s32 entranceIndex; // start of `save` substruct, originally called "memory"
    /* 0x0004 */ s32 linkAge; // 0: Adult; 1: Child
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
    /* 0x0032 */ s8 magicLevel;
    /* 0x0033 */ s8 magic;
    /* 0x0034 */ s16 rupees;
    /* 0x0036 */ u16 swordHealth;
    /* 0x0038 */ u16 naviTimer;
    /* 0x003A */ u8 magicAcquired;
    /* 0x003B */ char unk_3B[0x01];
    /* 0x003C */ u8 doubleMagic;
    /* 0x003D */ u8 doubleDefense;
    /* 0x003E */ u8 bgsFlag;
    /* 0x003F */ u8 ocarinaGameRoundNum;
    /* 0x0040 */ ItemEquips childEquips;
    /* 0x004A */ ItemEquips adultEquips;
    /* 0x0054 */ u32 unk_54; // this may be incorrect, currently used for alignement
    /* 0x0058 */ char unk_58[0x0E];
    /* 0x0066 */ s16 savedSceneNum;
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
    /* 0x0F40 */ u8 scarecrowCustomSongSet;
    /* 0x0F41 */ u8 scarecrowCustomSong[0x360];
    /* 0x12A1 */ char unk_12A1[0x24];
    /* 0x12C5 */ u8 scarecrowSpawnSongSet;
    /* 0x12C6 */ u8 scarecrowSpawnSong[0x80];
    /* 0x1346 */ char unk_1346[0x02];
    /* 0x1348 */ HorseData horseData;
    /* 0x1352 */ u16 checksum; // "check_sum"
    /* 0x1354 */ s32 fileNum; // "file_no"
    /* 0x1358 */ char unk_1358[0x0004];
    /* 0x135C */ s32 gameMode;
    /* 0x1360 */ s32 sceneSetupIndex;
    /* 0x1364 */ s32 respawnFlag; // "restart_flag"
    /* 0x1368 */ RespawnData respawn[3]; // "restart_data"
    /* 0x13BC */ f32 entranceSpeed;
    /* 0x13C0 */ u16 entranceSound;
    /* 0x13C2 */ char unk_13C2[0x0001];
    /* 0x13C3 */ u8 unk_13C3;
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
    /* 0x13F0 */ s16 unk_13F0; // magic related
    /* 0x13F2 */ s16 unk_13F2; // magic related
    /* 0x13F4 */ s16 unk_13F4; // magic related
    /* 0x13F6 */ s16 unk_13F6; // magic related
    /* 0x13F8 */ s16 unk_13F8; // magic related
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
    /* 0x1410 */ u8 unk_1410; // transition related
    /* 0x1411 */ char unk_1411[0x0001];
    /* 0x1412 */ u16 nextCutsceneIndex;
    /* 0x1414 */ u8 cutsceneTrigger;
    /* 0x1415 */ u8 chamberCutsceneNum;
    /* 0x1416 */ u16 nextDayTime; // "next_zelda_time"
    /* 0x1418 */ u8 fadeDuration;
    /* 0x1419 */ u8 unk_1419; // transition related
    /* 0x141A */ u16 skyboxTime;
    /* 0x141C */ u8 dogIsLost;
    /* 0x141D */ u8 nextTransition;
    /* 0x141E */ char unk_141E[0x0002];
    /* 0x1420 */ s16 worldMapArea;
    /* 0x1422 */ s16 sunsSongState; // controls the effects of suns song
    /* 0x1424 */ s16 healthAccumulator;
} SaveContext; // size = 0x1428

typedef enum {
    /* 0x00 */ RESPAWN_MODE_DOWN,   /* Normal Void Outs */
    /* 0x01 */ RESPAWN_MODE_RETURN, /* Grotto Returnpoints */
    /* 0x02 */ RESPAWN_MODE_TOP     /* Farore's Wind */
} RespawnMode;

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

#endif
