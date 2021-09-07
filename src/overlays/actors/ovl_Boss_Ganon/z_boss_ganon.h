#ifndef _Z_BOSS_GANON_H_
#define _Z_BOSS_GANON_H_

#include "ultra64.h"
#include "global.h"

struct BossGanon;

typedef void (*BossGanonActionFunc)(struct BossGanon*, GlobalContext*);

typedef struct BossGanon {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x4C];
    /* 0x0198 */ u8 unk_198;
    /* 0x0199 */ char unk_199[0x57F];
    /* 0x0718 */ s16 organFadeTimer;
    /* 0x071A */ char unk_71A[0x2];
} BossGanon; // size = 0x071C

#endif
