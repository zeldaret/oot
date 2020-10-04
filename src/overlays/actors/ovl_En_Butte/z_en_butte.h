#ifndef _Z_EN_BUTTE_H_
#define _Z_EN_BUTTE_H_

#include "ultra64.h"
#include "global.h"

struct EnButte;

typedef struct EnButte {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x11C];
} EnButte; // size = 0x0268

extern const ActorInit En_Butte_InitVars;

#endif
