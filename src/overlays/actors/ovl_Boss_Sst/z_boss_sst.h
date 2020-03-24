#ifndef _Z_BOSS_SST_H_
#define _Z_BOSS_SST_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x94C];
} BossSst; // size = 0x0A98

extern const ActorInit Boss_Sst_InitVars;

#endif
