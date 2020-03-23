#ifndef _Z_OBJ_TIMEBLOCK_H_
#define _Z_OBJ_TIMEBLOCK_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x30];
} ObjTimeblock; // size = 0x017C

extern const ActorInit Obj_Timeblock_InitVars;

#endif
