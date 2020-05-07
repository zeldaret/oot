#ifndef _Z_BOSS_GANONDROF_H_
#define _Z_BOSS_GANONDROF_H_

#include <ultra64.h>
#include <global.h>

struct BossGanondrof;

typedef struct BossGanondrof {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x42C];
} BossGanondrof; // size = 0x0578

extern const ActorInit Boss_Ganondrof_InitVars;

#endif
