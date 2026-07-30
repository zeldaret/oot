#ifndef Z_EN_WALL_TUBO_H
#define Z_EN_WALL_TUBO_H

#include "ultra64.h"
#include "actor.h"

struct EnWallTubo;

typedef void (*EnWallTuboActionFunc)(struct EnWallTubo*, struct PlayState*);

typedef struct EnWallTubo {
    /* 0x000 */ Actor actor;
    /* 0x14C */ EnWallTuboActionFunc unk14C;
    /* 0x150 */ s16 unk150;
    /* 0x152 */ char pad152[2];
    /* 0x154 */ Vec3f unk154;
    /* 0x160 */ struct EnBomBowlMan* unk160;
    /* 0x164 */ Vec3f unk164;
} EnWallTubo; // size = 0x0170

#endif
