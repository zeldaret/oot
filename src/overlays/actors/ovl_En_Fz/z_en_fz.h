#ifndef _Z_EN_FZ_H_
#define _Z_EN_FZ_H_

#include "ultra64.h"
#include "global.h"

struct EnFz;

typedef struct EnFz {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xA88];
} EnFz; // size = 0x0BD4

extern const ActorInit En_Fz_InitVars;

#endif
