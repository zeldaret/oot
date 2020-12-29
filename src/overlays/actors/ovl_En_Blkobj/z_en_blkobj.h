#ifndef _Z_EN_BLKOBJ_H_
#define _Z_EN_BLKOBJ_H_

#include "ultra64.h"
#include "global.h"

struct EnBlkobj;

typedef void (*EnBlkobjActionFunc)(struct EnBlkobj*, GlobalContext*);

typedef struct EnBlkobj {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ s16 alpha;
    /* 0x0166 */ s16 timer;
    /* 0x0168 */ EnBlkobjActionFunc actionFunc;
} EnBlkobj; // size = 0x016C

extern const ActorInit En_Blkobj_InitVars;

#endif
