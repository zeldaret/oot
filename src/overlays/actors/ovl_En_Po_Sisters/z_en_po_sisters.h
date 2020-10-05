#ifndef _Z_EN_PO_SISTERS_H_
#define _Z_EN_PO_SISTERS_H_

#include "ultra64.h"
#include "global.h"

struct EnPoSisters;

typedef struct EnPoSisters {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1EC];
} EnPoSisters; // size = 0x0338

extern const ActorInit En_Po_Sisters_InitVars;

#endif
