#ifndef _Z_EN_GM_H_
#define _Z_EN_GM_H_

#include "ultra64.h"
#include "global.h"

struct EnGm;

typedef struct EnGm {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x184];
} EnGm; // size = 0x02D0

extern const ActorInit En_Gm_InitVars;

#endif
