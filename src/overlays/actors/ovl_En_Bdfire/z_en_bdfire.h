#ifndef _Z_EN_BDFIRE_H_
#define _Z_EN_BDFIRE_H_

#include "ultra64.h"
#include "global.h"

struct EnBdfire;

typedef struct EnBdfire {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x98];
} EnBdfire; // size = 0x01E4

extern const ActorInit En_Bdfire_InitVars;

#endif
