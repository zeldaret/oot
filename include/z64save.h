#ifndef _Z64SRAM_H_
#define _Z64SRAM_H_

#include "ultra64.h"
#include "ultra64/gbi.h"
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

typedef struct {
    /* 0x00 */ char newf[6]; // string "ZELDAZ"
    /* 0x06 */ s16 deaths;
    /* 0x08 */ char playerName[8];
    /* 0x10 */ s16 n64ddFlag;
    /* 0x12 */ s16 healthCapacity; // "max_life"
    /* 0x14 */ s16 health; // "now_life"
    /* 0x16 */ s8 magicLevel;
    /* 0x17 */ s8 magic;
    /* 0x18 */ s16 rupees;
    /* 0x1A */ u16 swordHealth;
    /* 0x1C */ u16 naviTimer;
    /* 0x1E */ u8 magicAcquired;
    /* 0x1F */ u8 unk_1F;
    /* 0x20 */ u8 doubleMagic;
    /* 0x21 */ u8 doubleDefense;
    /* 0x22 */ u8 bgsFlag;
    /* 0x23 */ u8 ocarinaGameReward;
    /* 0x24 */ ItemEquips childEquips;
    /* 0x2E */ ItemEquips adultEquips;
    /* 0x38 */ u32 unk_38; // this may be incorrect, currently used for alignement
    /* 0x3C */ char unk_3C[0x0E];
    /* 0x4A */ s16 savedSceneNum;
} PlayerData; // size = 0x4C

typedef struct {
    /* 0x0000 */ PlayerData playerData; // "S_Private"
    /* 0x004C */ ItemEquips equips;
    /* 0x0058 */ Inventory inventory;
    /* 0x00B8 */ SavedSceneFlags sceneFlags[124];
    /* 0x0E48 */ FaroresWindData fw;
    /* 0x0E70 */ char unk_E70[0x10];
    /* 0x0E80 */ s32 gsFlags[6];
    /* 0x0E98 */ char unk_E98[0x10];
    /* 0x0EA8 */ s32 horseRaceRecord;
    /* 0x0EAC */ char unk_EAC[0x0C];
    /* 0x0EB8 */ u16 eventChkInf[14]; // "event_chk_inf"
    /* 0x0ED4 */ u16 itemGetInf[4]; // "item_get_inf"
    /* 0x0EDC */ u16 infTable[30]; // "inf_table"
    /* 0x0F18 */ char unk_F18[0x04];
    /* 0x0F1C */ u32 worldMapAreaData; // "area_arrival"
    /* 0x0F20 */ char unk_F20[0x4];
    /* 0x0F24 */ u8 scarecrowCustomSongSet;
    /* 0x0F25 */ u8 scarecrowCustomSong[0x360];
    /* 0x1285 */ char unk_1285[0x24];
    /* 0x12A9 */ u8 scarecrowSpawnSongSet;
    /* 0x12AA */ u8 scarecrowSpawnSong[0x80];
    /* 0x132A */ char unk_132A[0x02];
    /* 0x132C */ HorseData horseData;
    /* 0x1336 */ u16 checksum; // "check_sum"
} SaveInfo; // size = 0x1338

typedef struct {
    /* 0x00 */ s32 entranceIndex;
    /* 0x04 */ s32 linkAge; // 0: Adult; 1: Child
    /* 0x08 */ s32 cutsceneIndex;
    /* 0x0C */ u16 dayTime; // "zelda_time"
    /* 0x10 */ s32 nightFlag;
    /* 0x14 */ s32 numDays;
    /* 0x18 */ s32 unk_18; // increments with numDays, gets reset by goron for bgs and one other use
    /* 0x1C */ SaveInfo info; // "information"
} Save; // size = 0x1354

typedef struct {
    /* 0x0000 */ Save save; // data that gets restored when you load a save. "memory"
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
    /* 0x13E0 */ u8 seqIndex;
    /* 0x13E1 */ u8 nightSeqIndex;
    /* 0x13E2 */ u8 buttonStatus[5];
    /* 0x13E7 */ u8 unk_13E7;
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
    /* 0x1409 */ u8 language;
    /* 0x140A */ u8 audioSetting;
    /* 0x140B */ char unk_140B[0x0001];
    /* 0x140C */ u8 zTargetSetting; // 0: Switch; 1: Hold
    /* 0x140E */ u16 unk_140E; // bgm related
    /* 0x1410 */ u8 unk_1410; // transition related
    /* 0x1411 */ char unk_1411[0x0001];
    /* 0x1412 */ u16 nextCutsceneIndex;
    /* 0x1414 */ u8 cutsceneTrigger;
    /* 0x1415 */ u8 chamberCutsceneNum;
    /* 0x1416 */ u16 nextDayTime; // "next_zelda_time"
    /* 0x1418 */ u8 fadeDuration;
    /* 0x1419 */ u8 unk_1419; // transition related
    /* 0x141A */ u16 environmentTime;
    /* 0x141C */ u8 dogIsLost;
    /* 0x141D */ u8 nextTransition;
    /* 0x141E */ char unk_141E[0x0002];
    /* 0x1420 */ s16 worldMapArea;
    /* 0x1422 */ s16 unk_1422; // day time related
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

#endif