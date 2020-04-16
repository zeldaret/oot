#ifndef _Z_OBJ_BEAN_H_
#define _Z_OBJ_BEAN_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ char unk_164[0x94];
} ObjBean; // size = 0x01F8

extern const ActorInit Obj_Bean_InitVars;

#endif
