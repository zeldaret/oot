#ifndef _Z_OBJ_KIBAKO2_H_
#define _Z_OBJ_KIBAKO2_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x6C];
} ObjKibako2; // size = 0x01B8

extern const ActorInit Obj_Kibako2_InitVars;

#endif
