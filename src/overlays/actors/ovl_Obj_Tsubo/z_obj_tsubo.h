#ifndef _Z_OBJ_TSUBO_H_
#define _Z_OBJ_TSUBO_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x54];
} ObjTsubo; // size = 0x01A0

extern const ActorInit Obj_Tsubo_InitVars;

#endif
