#ifndef _Z_BOSS_GANONDROF_H_
#define _Z_BOSS_GANONDROF_H_

#include <ultra64.h>
#include <global.h>

struct BossGanondrof;

typedef struct BossGanondrof {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xCC];
    /* 0x0218 */ Vec3f bodyPartsPos[24];
    /* 0x03C8 */ char unk_3C8[0x1B0];
} BossGanondrof; // size = 0x0578

extern const ActorInit Boss_Ganondrof_InitVars;

#endif
