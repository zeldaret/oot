#ifndef _Z_OBJ_BOMBIWA_H_
#define _Z_OBJ_BOMBIWA_H_

#include "ultra64.h"
#include "global.h"

struct ObjBombiwa;

typedef struct ObjBombiwa {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinder collider;
} ObjBombiwa; // size = 0x0198

#endif
