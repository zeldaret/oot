#ifndef Z_EN_WALL_TUBO_H
#define Z_EN_WALL_TUBO_H

#include "ultra64.h"
#include "actor.h"

struct EnWallTubo;

typedef void (*EnWallTuboActionFunc)(struct EnWallTubo*, struct PlayState*);

typedef struct EnWallTubo {
    /* 0x000 */ Actor actor;
    /* 0x14C */ EnWallTuboActionFunc actionFunc;
    /* 0x150 */ s16 timer;
    /* 0x152 */ char pad_152[2];
    /* 0x154 */ Vec3f effCenterPos;
    /* 0x160 */ struct EnBomBowlMan* bowlingGirl;
    /* 0x164 */ Vec3f homePos;
} EnWallTubo; // size = 0x0170

#endif
