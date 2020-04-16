#ifndef _Z_OBJ_LIFT_H_
#define _Z_OBJ_LIFT_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ char unk_164[0xC];
} ObjLift; // size = 0x0170

extern const ActorInit Obj_Lift_InitVars;

#endif
