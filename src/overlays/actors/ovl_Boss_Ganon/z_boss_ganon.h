#ifndef _Z_BOSS_GANON_H_
#define _Z_BOSS_GANON_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x5CC];
    /* 0x0718 */ s16 organFadeTimer;
    /* 0x071A */ char unk_71A[0x2];
} BossGanon; // size = 0x071C

extern const ActorInit Boss_Ganon_InitVars;

#endif
