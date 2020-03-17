#ifndef _Z_BG_SPOT02_OBJECTS_H_
#define _Z_BG_SPOT02_OBJECTS_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x28];
} BgSpot02Objects; // size = 0x0174

extern const ActorInit Bg_Spot02_Objects_InitVars;

#endif
