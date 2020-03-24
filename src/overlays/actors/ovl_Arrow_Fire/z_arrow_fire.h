#ifndef _Z_ARROW_FIRE_H_
#define _Z_ARROW_FIRE_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x20];
} ArrowFire; // size = 0x016C

extern const ActorInit Arrow_Fire_InitVars;

#endif
