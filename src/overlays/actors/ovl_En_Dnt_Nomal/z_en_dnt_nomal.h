#ifndef _Z_EN_DNT_NOMAL_H_
#define _Z_EN_DNT_NOMAL_H_

#include "ultra64.h"
#include "global.h"

struct EnDntNomal;

typedef struct EnDntNomal {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x214];
} EnDntNomal; // size = 0x0360

extern const ActorInit En_Dnt_Nomal_InitVars;

#endif
