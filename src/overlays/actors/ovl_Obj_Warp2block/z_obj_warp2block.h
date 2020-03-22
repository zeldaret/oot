#ifndef _Z_OBJ_WARP2BLOCK_H_
#define _Z_OBJ_WARP2BLOCK_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x2C];
} ObjWarp2block; // size = 0x0178

extern const ActorInit Obj_Warp2block_InitVars;

#endif
