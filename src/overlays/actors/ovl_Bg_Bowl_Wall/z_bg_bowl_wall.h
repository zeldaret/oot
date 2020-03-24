#ifndef _Z_BG_BOWL_WALL_H_
#define _Z_BG_BOWL_WALL_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x3C];
} BgBowlWall; // size = 0x0188

extern const ActorInit Bg_Bowl_Wall_InitVars;

#endif
