#ifndef _Z_EN_TORYO_H_
#define _Z_EN_TORYO_H_

#include "ultra64.h"
#include "global.h"

struct EnToryo;

typedef struct EnToryo {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x194];
} EnToryo; // size = 0x02E0

extern const ActorInit En_Toryo_InitVars;

#endif
