#ifndef _Z_OBJ_OSHIHIKI_H_
#define _Z_OBJ_OSHIHIKI_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x88];
} ObjOshihiki; // size = 0x01D4

extern const ActorInit Obj_Oshihiki_InitVars;

#endif
