#ifndef _Z_EN_BLKOBJ_H_
#define _Z_EN_BLKOBJ_H_

#include <ultra64.h>
#include <global.h>

struct EnBlkobj;

typedef struct EnBlkobj {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x20];
} EnBlkobj; // size = 0x016C

extern const ActorInit En_Blkobj_InitVars;

#endif
