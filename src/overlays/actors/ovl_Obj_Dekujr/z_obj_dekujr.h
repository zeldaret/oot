#ifndef _Z_OBJ_DEKUJR_H_
#define _Z_OBJ_DEKUJR_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x58];
} ObjDekujr; // size = 0x01A4

extern const ActorInit Obj_Dekujr_InitVars;

#endif
