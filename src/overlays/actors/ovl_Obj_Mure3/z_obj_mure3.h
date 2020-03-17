#ifndef _Z_OBJ_MURE3_H_
#define _Z_OBJ_MURE3_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x24];
} ObjMure3; // size = 0x0170

extern const ActorInit Obj_Mure3_InitVars;

#endif
