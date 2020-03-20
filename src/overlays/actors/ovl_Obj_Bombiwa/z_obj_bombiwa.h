#ifndef _Z_OBJ_BOMBIWA_H_
#define _Z_OBJ_BOMBIWA_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinderMain collider;
} ObjBombiwa; // size = 0x0198

extern const ActorInit Obj_Bombiwa_InitVars;

#endif
