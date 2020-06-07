#ifndef _Z_BOSS_GANON2_H_
#define _Z_BOSS_GANON2_H_

#include <ultra64.h>
#include <global.h>

struct BossGanon2;

typedef struct BossGanon2 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x798];
} BossGanon2; // size = 0x08E4

extern const ActorInit Boss_Ganon2_InitVars;

#endif
