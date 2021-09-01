#ifndef _Z_OBJ_KIBAKO2_H_
#define _Z_OBJ_KIBAKO2_H_

#include "ultra64.h"
#include "global.h"

struct ObjKibako2;

typedef void (*ObjKibako2ActionFunc)(struct ObjKibako2*, GlobalContext*);

typedef struct ObjKibako2 {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ColliderCylinder collider;
    /* 0x01B0 */ ObjKibako2ActionFunc actionFunc;
    /* 0x01B4 */ s16 collectibleFlag;
} ObjKibako2; // size = 0x01B8

#endif
