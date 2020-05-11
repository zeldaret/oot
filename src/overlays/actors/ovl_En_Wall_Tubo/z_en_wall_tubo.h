#ifndef _Z_EN_WALL_TUBO_H_
#define _Z_EN_WALL_TUBO_H_

#include <ultra64.h>
#include <global.h>

struct EnWallTubo;

typedef struct EnWallTubo {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x24];
} EnWallTubo; // size = 0x0170

extern const ActorInit En_Wall_Tubo_InitVars;

#endif
