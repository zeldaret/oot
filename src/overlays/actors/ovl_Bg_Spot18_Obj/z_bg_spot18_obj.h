#ifndef _Z_BG_SPOT18_OBJ_H_
#define _Z_BG_SPOT18_OBJ_H_

#include <ultra64.h>
#include <global.h>

struct BgSpot18Obj;

typedef struct BgSpot18Obj {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x20];
} BgSpot18Obj; // size = 0x016C

extern const ActorInit Bg_Spot18_Obj_InitVars;

#endif
