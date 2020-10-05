#ifndef _Z_EN_MM_H_
#define _Z_EN_MM_H_

#include "ultra64.h"
#include "global.h"

struct EnMm;

typedef struct EnMm {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1D4];
} EnMm; // size = 0x0320

extern const ActorInit En_Mm_InitVars;

#endif
