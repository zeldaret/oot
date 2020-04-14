#ifndef _Z_OBJ_SWITCH_H_
#define _Z_OBJ_SWITCH_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ char unk_164[0xF4];
} ObjSwitch; // size = 0x0258

extern const ActorInit Obj_Switch_InitVars;

#endif
