#ifndef _Z_EN_GELDB_H_
#define _Z_EN_GELDB_H_

#include "ultra64.h"
#include "global.h"

struct EnGeldB;

typedef struct EnGeldB {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1CC];
    /* 0x0318 */ s16 unk_318;
    /* 0x031A */ char unk_31A[0x1CA];
} EnGeldB; // size = 0x04E4

extern const ActorInit En_Geldb_InitVars;

#endif
