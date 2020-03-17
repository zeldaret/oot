#ifndef _Z_OBJ_LIFT_H_
#define _Z_OBJ_LIFT_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x24];
} ObjLift; // size = 0x0170

extern const ActorInit Obj_Lift_InitVars;

#endif
