#ifndef _Z_MAGIC_FIRE_H_
#define _Z_MAGIC_FIRE_H_

#include "ultra64.h"
#include "global.h"

struct MagicFire;

typedef struct MagicFire {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x60];
} MagicFire; // size = 0x01AC

extern const ActorInit Magic_Fire_InitVars;

#endif
