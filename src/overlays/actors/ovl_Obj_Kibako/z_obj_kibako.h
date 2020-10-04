#ifndef _Z_OBJ_KIBAKO_H_
#define _Z_OBJ_KIBAKO_H_

#include "ultra64.h"
#include "global.h"

struct ObjKibako;

typedef struct ObjKibako {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x50];
} ObjKibako; // size = 0x019C

extern const ActorInit Obj_Kibako_InitVars;

#endif
