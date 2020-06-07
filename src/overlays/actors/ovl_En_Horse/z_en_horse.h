#ifndef _Z_EN_HORSE_H_
#define _Z_EN_HORSE_H_

#include <ultra64.h>
#include <global.h>

struct EnHorse;

typedef struct EnHorse {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x2B0];
} EnHorse; // size = 0x03FC

extern const ActorInit En_Horse_InitVars;

#endif
