#ifndef _Z_OBJ_WARP2BLOCK_H_
#define _Z_OBJ_WARP2BLOCK_H_

#include "ultra64.h"
#include "global.h"

struct ObjWarp2block;

typedef void (*ObjWarp2blockActionFunc)(struct ObjWarp2block*, GlobalContext*);

typedef struct ObjWarp2block {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ObjWarp2blockActionFunc actionFunc_164;
    /* 0x0168 */ ObjWarp2blockActionFunc actionFunc_168;
    /* 0x016C */ char unk_16C[0xC];
} ObjWarp2block; // size = 0x0178

extern const ActorInit Obj_Warp2block_InitVars;

#endif
