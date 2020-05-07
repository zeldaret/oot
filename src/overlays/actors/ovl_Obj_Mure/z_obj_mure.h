#ifndef _Z_OBJ_MURE_H_
#define _Z_OBJ_MURE_H_

#include <ultra64.h>
#include <global.h>

struct ObjMure;

typedef struct ObjMure {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x60];
} ObjMure; // size = 0x01AC

extern const ActorInit Obj_Mure_InitVars;

#endif
