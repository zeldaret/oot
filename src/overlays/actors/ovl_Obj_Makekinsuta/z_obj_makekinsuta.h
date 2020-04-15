#ifndef _Z_OBJ_MAKEKINSUTA_H_
#define _Z_OBJ_MAKEKINSUTA_H_

#include <ultra64.h>
#include <global.h>
#include <vt.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ActorFunc actionFunc;
    /* 0x150  */ s16 unk_150;
    /* 0x152  */ s16 unk_152;
} ObjMakekinsuta; // size = 0x0154

extern const ActorInit Obj_Makekinsuta_InitVars;

#endif
