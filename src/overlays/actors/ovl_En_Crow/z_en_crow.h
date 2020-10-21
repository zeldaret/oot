#ifndef _Z_EN_CROW_H_
#define _Z_EN_CROW_H_

#include "ultra64.h"
#include "global.h"

struct EnCrow;

typedef struct EnCrow {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x14C];
} EnCrow; // size = 0x0298

extern const ActorInit En_Crow_InitVars;

#endif
