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
    /* 0x0194 */ s16 unk_194; // index for D_8096CE84
    /* 0x0196 */ char unk_196[0x02];
    /* 0x0198 */ s32 updateIndex;
    /* 0x019C */ s32 drawIndex;
    /* 0x01A0 */ char unk_1A0[0x04];
    /* 0x01A4 */ f32 unk_1A4;
    /* 0x01A8 */ s32 unk_1A8;
    /* 0x01AC */ s32 unk_1AC; // maybe a bool?
    /* 0x01B0 */ s32 unk_1B0;
} DemoDu; // size = 0x01B4

extern const ActorInit Demo_Du_InitVars;

#endif
