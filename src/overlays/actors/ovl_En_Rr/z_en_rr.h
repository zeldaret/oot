#ifndef _Z_EN_RR_H_
#define _Z_EN_RR_H_

#include "ultra64.h"
#include "global.h"

struct EnRr;

typedef struct EnRr {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x2278];
} EnRr; // size = 0x23C4

extern const ActorInit En_Rr_InitVars;

#endif
