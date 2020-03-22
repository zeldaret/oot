#ifndef _Z_BG_SPOT09_OBJ_H_
#define _Z_BG_SPOT09_OBJ_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1C];
} BgSpot09Obj; // size = 0x0168

extern const ActorInit Bg_Spot09_Obj_InitVars;

#endif
