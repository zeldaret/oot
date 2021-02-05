#ifndef _Z_DEMO_DU_H_
#define _Z_DEMO_DU_H_

#include "ultra64.h"
#include "global.h"

struct DemoDu;

typedef struct DemoDu {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ s16 eyeTexIndex;
    /* 0x0192 */ s16 blinkTimer;
    /* 0x0194 */ s16 mouthTexIndex;
    /* 0x0198 */ s32 updateIndex;
    /* 0x019C */ s32 drawIndex;
    /* 0x01A0 */ s32 unused;
    /* 0x01A4 */ f32 unk_1A4;
    /* 0x01A8 */ s32 shadowAlpha;
    /* 0x01AC */ s32 unk_1AC; // maybe a bool?
    /* 0x01B0 */ s32 unk_1B0;
} DemoDu; // size = 0x01B4

extern const ActorInit Demo_Du_InitVars;

typedef enum DemoDu_Type {
    /* 0x00 */ DEMO_DU_TYPE_CS_FIREMEDALLION, // default
    /* 0x01 */ DEMO_DU_TYPE_CS_GORONS_RUBY,
    /* 0x02 */ DEMO_DU_TYPE_02,
    /* 0x03 */ DEMO_DU_TYPE_CS_CREDITS
} DemoDu_Type;

#endif
