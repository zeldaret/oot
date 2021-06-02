#ifndef _Z_EN_KO_H_
#define _Z_EN_KO_H_

#include "ultra64.h"
#include "global.h"

struct EnKo;

typedef struct EnKo {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1D8];
} EnKo; // size = 0x0324

extern const ActorInit En_Ko_InitVars;

#endif
