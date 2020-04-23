#ifndef _Z_OBJ_WARP2BLOCK_H_
#define _Z_OBJ_WARP2BLOCK_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ActorFunc actionFunc_164;
    /* 0x0168 */ ActorFunc actionFunc_168;
    /* 0x016C */ char unk_16C[0xC];
} ObjWarp2block; // size = 0x0178

extern const ActorInit Obj_Warp2block_InitVars;

#endif
