#ifndef _Z_OBJ_ICE_POLY_H_
#define _Z_OBJ_ICE_POLY_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xA0];
} ObjIcePoly; // size = 0x01EC

extern const ActorInit Obj_Ice_Poly_InitVars;

#endif
