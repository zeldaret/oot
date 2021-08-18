#ifndef _Z_OBJ_LIFT_H_
#define _Z_OBJ_LIFT_H_

#include "ultra64.h"
#include "global.h"

struct ObjLift;

typedef void (*ObjLiftActionFunc)(struct ObjLift*, GlobalContext*);

typedef struct ObjLift {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ObjLiftActionFunc actionFunc;
    /* 0x0168 */ Vec3s unk168;
    /* 0x016E */ s16 timer;
} ObjLift; // size = 0x0170

extern const ActorInit Obj_Lift_InitVars;

#endif
