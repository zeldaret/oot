#ifndef Z_BG_JYA_HAHENIRON_H
#define Z_BG_JYA_HAHENIRON_H

#include "ultra64.h"
#include "z64actor.h"

struct BgJyaHaheniron;

typedef void (*BgJyaHahenironActionFunc)(struct BgJyaHaheniron*, struct PlayState*);

typedef struct BgJyaHaheniron {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ BgJyaHahenironActionFunc actionFunc;
    /* 0x0150 */ ColliderJntSph collider;
    /* 0x0170 */ ColliderJntSphElement colliderElements[1];
    /* 0x01B0 */ s16 timer;
} BgJyaHaheniron; // size = 0x01B4

#endif
