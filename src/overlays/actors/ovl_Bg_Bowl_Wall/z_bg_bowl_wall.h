#ifndef Z_BG_BOWL_WALL_H
#define Z_BG_BOWL_WALL_H

#include "ultra64.h"
#include "actor.h"

typedef enum BgBowlWallType {
    BG_BOWL_WALL_TYPE_FIRST_WALL,
    BG_BOWL_WALL_TYPE_SECOND_WALL
} BgBowlWallType;

struct BgBowlWall;

typedef void (*BgBowlWallActionFunc)(struct BgBowlWall*, struct PlayState*);

typedef struct BgBowlWall {
    /* 0x000 */ DynaPolyActor dyna;
    /* 0x164 */ BgBowlWallActionFunc actionFunc;
    /* 0x168 */ Vec3f homePos;
    /* 0x174 */ Vec3f effCenterPos;
    /* 0x180 */ s16 targetHit;
    /* 0x182 */ s16 timer;
    /* 0x184 */ struct EnBomBowlMan* bowlingGirl;
} BgBowlWall; // size = 0x188

#endif
