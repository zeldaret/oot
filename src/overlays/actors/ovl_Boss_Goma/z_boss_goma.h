#ifndef _Z_BOSS_GOMA_H_
#define _Z_BOSS_GOMA_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x9D0];
} BossGoma; // size = 0x0B1C

extern const ActorInit Boss_Goma_InitVars;

#endif
