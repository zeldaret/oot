#ifndef Z_OBJ_HSBLOCK_H
#define Z_OBJ_HSBLOCK_H

#include "ultra64.h"
#include "z64actor.h"

struct ObjHsblock;

typedef void (*ObjHsblockActionFunc)(struct ObjHsblock*, struct PlayState*);

typedef struct ObjHsblock {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ObjHsblockActionFunc actionFunc;
} ObjHsblock; // size = 0x0168

#endif
