#ifndef _Z_BG_BOWL_WALL_H_
#define _Z_BG_BOWL_WALL_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ActorFunc actionFunc;
    /* 0x0168 */ char unk_168[0x20];
} BgBowlWall; // size = 0x0188

extern const ActorInit Bg_Bowl_Wall_InitVars;

#endif
