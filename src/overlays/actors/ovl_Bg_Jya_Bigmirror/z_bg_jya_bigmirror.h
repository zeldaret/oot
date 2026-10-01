#ifndef Z_BG_JYA_BIGMIRROR_H
#define Z_BG_JYA_BIGMIRROR_H

#include "ultra64.h"
#include "actor.h"

struct BgJyaBigmirror;

typedef struct BgJyaBigmirror_sub14C {
    Actor* unk0;
    s16 unk4;
} BgJyaBigmirror_sub14C;

typedef struct BgJyaBigmirror {
    /* 0x000 */ Actor actor;
    /* 0x14C */ BgJyaBigmirror_sub14C unk14C[2];
    /* 0x15C */ u8 unk15C;
    /* 0x15D */ u8 unk15D;
    /* 0x15E */ char pad15E[2]; /* maybe part of unk15D[3]? */
    /* 0x160 */ Actor* unk160[3];
    /* 0x16C */ s32 mirRayObjectSlot;
    /* 0x170 */ f32 unk170;
} BgJyaBigmirror; // size = 0x174

#endif
