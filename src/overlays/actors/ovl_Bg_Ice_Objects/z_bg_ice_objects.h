#ifndef _Z_BG_ICE_OBJECTS_H_
#define _Z_BG_ICE_OBJECTS_H_

#include "ultra64.h"
#include "global.h"

struct BgIceObjects;

typedef struct BgIceObjects {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x28];
} BgIceObjects; // size = 0x0174

extern const ActorInit Bg_Ice_Objects_InitVars;

#endif
