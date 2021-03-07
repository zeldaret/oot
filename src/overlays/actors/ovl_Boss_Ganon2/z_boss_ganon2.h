#ifndef _Z_BOSS_GANON2_H_
#define _Z_BOSS_GANON2_H_

#include "ultra64.h"
#include "global.h"

struct BossGanon2;

typedef struct BossGanon2 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1C8];
    /* 0x0314 */ u8 unk_314;
    /* 0x0315 */ char unk_315[0x0F];
    /* 0x0324 */ f32 unk_324;
    /* 0x0328 */ char unk_328[0x5BC];
} BossGanon2; // size = 0x08E4

extern const ActorInit Boss_Ganon2_InitVars;

#endif
