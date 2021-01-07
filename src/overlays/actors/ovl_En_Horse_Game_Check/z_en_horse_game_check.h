#ifndef _Z_EN_HORSE_GAME_CHECK_H_
#define _Z_EN_HORSE_GAME_CHECK_H_

#include "ultra64.h"
#include "global.h"

struct EnHorseGameCheckBase;

typedef s32 (*EnHorseGameCheckFunc)(struct EnHorseGameCheckBase* this, GlobalContext* globalCtx);

typedef struct EnHorseGameCheckBase {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ s32 type;
} EnHorseGameCheckBase; // size = 0x0150

typedef struct EnHorseGameCheck1 {
    /* 0x0000 */ EnHorseGameCheckBase base;
    /* 0x0150 */ s32 unk_150;
    /* 0x0154 */ s32 unk_154[3];
    /* 0x0160 */ s32 unk_160[3];
    /* 0x016C */ Actor* unk_16C;
    /* 0x0170 */ s32 unk_170;
    /* 0x0174 */ s32 unk_174;
    /* 0x0178 */ s32 unk_178;
    /* 0x017C */ s32 unk_17C;
    /* 0x0180 */ s32 unk_180;
} EnHorseGameCheck1; // size = 0x0184

typedef struct EnHorseGameCheck2 {
    /* 0x0000 */ EnHorseGameCheckBase base;
    /* 0x0150 */ s32 unk_150;
    /* 0x0154 */ u32 unk_154;
} EnHorseGameCheck2; // size = 0x0158

typedef struct EnHorseGameCheck3 {
    /* 0x0000 */ EnHorseGameCheckBase base;
    /* 0x0150 */ s32 unk_150;
} EnHorseGameCheck3; // size = 0x0154

typedef struct EnHorseGameCheck4 {
    /* 0x0000 */ EnHorseGameCheckBase base;
    /* 0x0150 */ s32 unk_150;
    /* 0x0154 */ s32 unk_154;
    /* 0x0158 */ s32 unk_158[16];
    /* 0x0198 */ s32 unk_198;
    /* 0x019C */ s32 unk_19C;
    /* 0x01A0 */ s32 unk_1A0;
} EnHorseGameCheck4; // size = 0x01A4

typedef union EnHorseGameCheck {
    EnHorseGameCheck1 type1;
    EnHorseGameCheck2 type2;
    EnHorseGameCheck3 type3;
    EnHorseGameCheck4 type4;
} EnHorseGameCheck; // size = 0x01A4

typedef enum {
    /* 0 */ HORSEGAME_TYPE0,
    /* 1 */ HORSEGAME_TYPE1,
    /* 2 */ HORSEGAME_TYPE2,
    /* 3 */ HORSEGAME_TYPE3,
    /* 4 */ HORSEGAME_TYPE4
} EnHorseGameCheckType;

extern const ActorInit En_Horse_Game_Check_InitVars;

#endif
