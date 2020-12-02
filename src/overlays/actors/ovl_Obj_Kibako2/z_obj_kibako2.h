#ifndef _Z_OBJ_KIBAKO2_H_
#define _Z_OBJ_KIBAKO2_H_

#include "ultra64.h"
#include "global.h"

struct ObjKibako2;

typedef struct ObjKibako2 {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ char unk_164[0x54];
} ObjKibako2; // size = 0x01B8

extern const ActorInit Obj_Kibako2_InitVars;

#endif
