#ifndef _Z_OBJ_BEAN_H_
#define _Z_OBJ_BEAN_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xAC];
} ObjBean; // size = 0x01F8

extern const ActorInit Obj_Bean_InitVars;

#endif
