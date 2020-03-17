#ifndef _Z_OBJ_COMB_H_
#define _Z_OBJ_COMB_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x68];
} ObjComb; // size = 0x01B4

extern const ActorInit Obj_Comb_InitVars;

#endif
