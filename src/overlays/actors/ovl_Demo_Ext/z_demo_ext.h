#ifndef Z_DEMO_EXT_H
#define Z_DEMO_EXT_H

#include "ultra64.h"
#include "actor.h"

struct DemoExt;

typedef struct DemoExt {
    /* 0x000 */ Actor actor;
    /* 0x14C */ s32 unk14C;
    /* 0x150 */ s32 unk150;
    /* 0x154 */ s32 cueId;
    /* 0x158 */ s16 texScrollStep[4];
    /* 0x160 */ s16 texScrollPos[4];
    /* 0x168 */ s16 unk168;
    /* 0x16A */ char pad16A[2];
    /* 0x16C */ f32 unk16C;
    /* 0x170 */ s32 unk170;
    /* 0x174 */ s32 unk174;
    /* 0x178 */ Vec3f unk178;
} DemoExt; // size = 0x184

#endif
