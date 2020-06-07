#ifndef _Z_OBJ_HANA_H_
#define _Z_OBJ_HANA_H_

#include <ultra64.h>
#include <global.h>

struct ObjHana;

typedef struct ObjHana {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x4C];
} ObjHana; // size = 0x0198

extern const ActorInit Obj_Hana_InitVars;

#endif
