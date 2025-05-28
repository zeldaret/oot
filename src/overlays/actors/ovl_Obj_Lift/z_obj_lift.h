#ifndef Z_OBJ_LIFT_H
#define Z_OBJ_LIFT_H

#include "ultra64.h"
#include "z64actor.h"

struct ObjLift;

typedef void (*ObjLiftActionFunc)(struct ObjLift*, struct PlayState*);

typedef struct ObjLift {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ObjLiftActionFunc actionFunc;
    /* 0x0168 */ Vec3s shakeOrientation;
    /* 0x016E */ s16 timer;
} ObjLift; // size = 0x0170

#endif
