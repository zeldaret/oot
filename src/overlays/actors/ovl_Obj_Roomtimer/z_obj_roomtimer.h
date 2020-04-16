#ifndef _Z_OBJ_ROOMTIMER_H_
#define _Z_OBJ_ROOMTIMER_H_

#include <ultra64.h>
#include <global.h>
#include <z64.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ActorFunc updateFunc;
    /* 0x0150 */ u32 switchFlag;
} ObjRoomtimer; // size = 0x0154

extern const ActorInit Obj_Roomtimer_InitVars;

#endif
