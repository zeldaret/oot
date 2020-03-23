#ifndef _Z_OBJ_HSBLOCK_H_
#define _Z_OBJ_HSBLOCK_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1C];
} ObjHsblock; // size = 0x0168

extern const ActorInit Obj_Hsblock_InitVars;

#endif
