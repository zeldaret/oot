#ifndef Z_BG_JYA_HAHENIRON_H
#define Z_BG_JYA_HAHENIRON_H

#include "ultra64.h"
#include "actor.h"

struct BgJyaHaheniron;

typedef void (*BgJyaHahenironActionFunc)(struct BgJyaHaheniron*, struct PlayState*);

typedef struct BgJyaHaheniron {
    /* 0x000 */ Actor actor;
    /* 0x14C */ BgJyaHahenironActionFunc unk14C;
    /* 0x150 */ ColliderJntSph unk150;
    /* 0x170 */ ColliderJntSphElement unk170[1];
    /* 0x1B0 */ s16 unk1B0;
    /* 0x1B2 */ char pad1B2[2];
} BgJyaHaheniron; // size = 0x01B4

#endif
