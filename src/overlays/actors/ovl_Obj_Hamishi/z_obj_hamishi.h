#ifndef _Z_OBJ_HAMISHI_H_
#define _Z_OBJ_HAMISHI_H_

#include <ultra64.h>
#include <global.h>

struct ObjHamishi;

typedef struct ObjHamishi {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x5C];
} ObjHamishi; // size = 0x01A8

extern const ActorInit Obj_Hamishi_InitVars;

#endif
