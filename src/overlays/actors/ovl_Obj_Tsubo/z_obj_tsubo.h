#ifndef _Z_OBJ_TSUBO_H_
#define _Z_OBJ_TSUBO_H_

#include "ultra64.h"
#include "global.h"

struct ObjTsubo;

typedef void (*ObjTsuboActionFunc)(struct ObjTsubo*, GlobalContext*);

typedef struct ObjTsubo {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ObjTsuboActionFunc actionFunc;
    /* 0x0150 */ ColliderCylinder collider;
    /* 0x019C */ s8 objTsuboBankIndex;
} ObjTsubo; // size = 0x01A0

#endif

