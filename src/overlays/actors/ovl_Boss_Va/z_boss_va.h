#ifndef _Z_BOSS_VA_H_
#define _Z_BOSS_VA_H_

#include "ultra64.h"
#include "global.h"

struct BossVa;

typedef struct BossVa {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x26C];
} BossVa; // size = 0x03B8

extern const ActorInit Boss_Va_InitVars;

#endif
