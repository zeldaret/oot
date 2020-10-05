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
    /* 0x0000 */ u8 items[24];
    /* 0x0018 */ s8 ammo[16];
    /* 0x0028 */ u16 equipment;
    /* 0x002C */ u32 upgrades;
    /* 0x0030 */ u32 questItems;
    /* 0x0034 */ u8 dungeonItems[20];
    /* 0x0048 */ s8 dungeonKeys[19];
    /* 0x005B */ s8 defenseHearts;
    /* 0x005C */ s16 gsTokens;
} SaveItems; // size = 0x5E

typedef struct {
    /* 0x00 */ u32 chest;
    /* 0x04 */ u32 swch;
    /* 0x08 */ u32 clear;
    /* 0x0C */ u32 collect;
    /* 0x10 */ u32 unk;
    /* 0x14 */ u32 rooms;
    /* 0x18 */ u32 floors;
} SaveSceneFlags; // size = 0x1C

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
    /* 0x0E64 */ Vec3i pos;
    /* 0x0E70 */ s32  yaw;
    /* 0x0E74 */ s32  playerParams;
    /* 0x0E78 */ s32  entranceIndex;
    /* 0x0E7C */ s32  roomIndex;
    /* 0x0E80 */ s32  set;
    /* 0x0E84 */ s32  tempSwchFlags;
    /* 0x0E88 */ s32  tempCollectFlags;
} FaroresWindInfo;

typedef struct {
    /* 0x0000 */ char newf[6]; // string "ZELDAZ"
    /* 0x0006 */ s16 deaths;
    /* 0x0008 */ char playerName[8];
    /* 0x0010 */ s16 n64ddFlag;
    /* 0x0012 */ s16 healthCapacity; // "max_life"
    /* 0x0014 */ s16 health; // "now_life"
    /* 0x0016 */ s8 magicLevel;
    /* 0x0017 */ s8 magic;
    /* 0x0018 */ s16 rupees;
    /* 0x001A */ u16 swordHealth;
    /* 0x001C */ u16 naviTimer;
    /* 0x001E */ u8 magicAcquired;
    /* 0x001F */ char unk_1F[0x0001];
    /* 0x0020 */ u8 doubleMagic;
    /* 0x0021 */ u8 doubleDefense;
    /* 0x0022 */ u8 bgsFlag;
    /* 0x0024 */ ItemEquips childEquips;
    /* 0x002E */ ItemEquips adultEquips;
    /* 0x0038 */ u32 unk_38; // this may be incorrect, currently used for alignement
    /* 0x003C */ char unk_3C[0x00E];
    /* 0x004A */ s16 savedSceneNum;
} SaveSub1C; // size = 0x4C

typedef struct {
    /* 0x001C */ SaveSub1C    sub_1C;
    /* 0x0068 */ ItemEquips   equips;
    /* 0x0074 */ SaveItems    items;
    /* 0x00D4 */ SaveSceneFlags sceneFlags[124];
    /* 0x0E64 */ FaroresWindInfo fw;
    /* 0x0E8C */ char unk_E8C[0x0010];
    /* 0x0E9C */ s32 gsFlags[6];
    /* 0x0EB4 */ char unk_EB4[0x0010];
    /* 0x0EC4 */ s32 unk_EC4;
    /* 0x0EC8 */ char unk_EC8[0x000C];
    /* 0x0ED4 */ u16 eventChkInf[14]; // "event_chk_inf"
    /* 0x0EF0 */ u16 itemGetInf[4]; // "item_get_inf"
    /* 0x0EF8 */ u16 infTable[30]; // "inf_table"
    /* 0x0F34 */ char unk_F34[0x0004];
    /* 0x0F38 */ u32 worldMapAreaData; // "area_arrival"
    /* 0x0F3C */ char unk_F3C[0x4];
    /* 0x0F40 */ u8 scarecrowCustomSongSet;
    /* 0x0F41 */ u8 scarecrowCustomSong[0x360];
    /* 0x12A1 */ char unk_12A1[0x24];
    /* 0x12C5 */ u8 scarecrowSpawnSongSet;
    /* 0x12C6 */ u8 scarecrowSpawnSong[0x0080];
    /* 0x1346 */ char unk_1346[0x0002];
    /* 0x1348 */ HorseData horseData;
    /* 0x1352 */ u16 checksum; // "check_sum"
} SaveInfo;

typedef struct {
    /* 0x0000 */ s32 entranceIndex;
    /* 0x0004 */ s32 linkAge; // 0: Adult; 1: Child
    /* 0x0008 */ s32 cutsceneIndex;
    /* 0x000C */ u16 dayTime; // "zelda_time"
    /* 0x0010 */ s32 nightFlag;
    /* 0x0014 */ s32 unk_14;
    /* 0x0018 */ s32 unk_18;
    /* 0x001C */ SaveInfo info;
} Save;

typedef struct {
    /* 0x0000 */ Save         save;
    /* 0x1354 */ s32          fileNum; // "file_no"
    /* 0x1358 */ char         unk_1358[0x0004];
    /* 0x135C */ s32          gameMode;
    /* 0x1360 */ s32          sceneSetupIndex;
    /* 0x1364 */ s32          respawnFlag; // "restart_flag"
    /* 0x1368 */ RespawnData  respawn[3]; // "restart_data"
    /* 0x13BC */ f32          unk_13BC;
    /* 0x13C0 */ u16          unk_13C0;
    /* 0x13C2 */ char         unk_13C2[0x0001];
    /* 0x13C3 */ u8           unk_13C3;
    /* 0x13C4 */ s16          dogParams;
    /* 0x13C6 */ u8           textTriggerFlags;
    /* 0x13C7 */ u8           unk_13C7;
    /* 0x13C8 */ s16          nayrusLoveTimer;
    /* 0x13CA */ char         unk_13CA[0x0002];
    /* 0x13CC */ s16          rupeeAccumulator;
    /* 0x13CE */ s16          timer1State;
    /* 0x13D0 */ s16          timer1Value;
    /* 0x13D2 */ s16          timer2State;
    /* 0x13D4 */ s16          timer2Value;
    /* 0x13D6 */ s16          timerX[2];
    /* 0x13DA */ s16          timerY[2];
    /* 0x13DE */ char         unk_13DE[0x0002];
    /* 0x13E0 */ u8           seqIndex;
    /* 0x13E1 */ u8           nightSeqIndex;
    /* 0x13E2 */ u8           buttonStatus[5];
    /* 0x13E7 */ u8           unk_13E7;
    /* 0x13E8 */ u16          unk_13E8; // alpha type?
    /* 0x13EA */ u16          unk_13EA; // also alpha type?
    /* 0x13EC */ u16          unk_13EC; // alpha type counter?
    /* 0x13EE */ u16          unk_13EE; // previous alpha type?
    /* 0x13F0 */ s16          unk_13F0;
    /* 0x13F2 */ s16          unk_13F2;
    /* 0x13F4 */ s16          unk_13F4;
    /* 0x13F6 */ s16          unk_13F6;
    /* 0x13F8 */ s16          unk_13F8;
    /* 0x13FA */ u16          eventInf[4]; // "event_inf"
    /* 0x1402 */ u16          mapIndex; // intended for maps/minimaps but commonly used as the dungeon index
    /* 0x1404 */ u16          minigameState;
    /* 0x1406 */ u16          minigameScore; // "yabusame_total"
    /* 0x1408 */ char         unk_1408[0x0001];
    /* 0x1409 */ u8           language;
    /* 0x140A */ u8           audioSetting;
    /* 0x140B */ char         unk_140B[0x0001];
    /* 0x140C */ u8           zTargetingSetting; // 0: Switch; 1: Hold
    /* 0x140E */ u16          unk_140E; // bgm related
    /* 0x1410 */ u8           unk_1410;
    /* 0x1411 */ u8           unk_1411;
    /* 0x1412 */ u16          nextCutsceneIndex;
    /* 0x1414 */ u8           cutsceneTrigger;
    /* 0x1415 */ u8           chamberCutsceneNum;
    /* 0x1416 */ u16          nextDayTime; // "next_zelda_time"
    /* 0x1418 */ u8           fadeDuration;
    /* 0x1419 */ u8           unk_1419; // transition related
    /* 0x141A */ u16          environmentTime;
    /* 0x141C */ u8           dogIsLost;
    /* 0x141D */ u8           nextTransition;
    /* 0x141E */ char         unk_141E[0x0002];
    /* 0x1420 */ s16          worldMapArea;
    /* 0x1422 */ s16          unk_1422; // day time related
    /* 0x1424 */ s16          healthAccumulator;
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