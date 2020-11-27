#ifndef _Z_BOSS_GANON2_H_
#define _Z_BOSS_GANON2_H_

#include "ultra64.h"
#include "global.h"

struct BossGanon2;

typedef void (*BossGanon2ActionFunc)(struct BossGanon2*, GlobalContext*);

typedef struct BossGanon2 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ BossGanon2ActionFunc actionFunc;
    /* 0x0194 */ char unk_194[0x290];
    /* 0x0424 */ ColliderJntSph unk_424;
    /* 0x0444 */ ColliderJntSph unk_444;
    /* 0x0464 */ ColliderJntSphItem unk_464[16];
    /* 0x0864 */ ColliderJntSphItem unk_864[2];
} BossGanon2; // size = 0x08E4

extern const ActorInit Boss_Ganon2_InitVars;

#endif
