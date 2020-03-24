#ifndef _Z_EN_FIRE_ROCK_H_
#define _Z_EN_FIRE_ROCK_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x94];
} EnFireRock; // size = 0x01E0

extern const ActorInit En_Fire_Rock_InitVars;

#endif
