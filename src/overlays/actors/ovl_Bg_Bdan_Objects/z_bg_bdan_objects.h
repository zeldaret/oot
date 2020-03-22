#ifndef _Z_BG_BDAN_OBJECTS_H_
#define _Z_BG_BDAN_OBJECTS_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x70];
} BgBdanObjects; // size = 0x01BC

extern const ActorInit Bg_Bdan_Objects_InitVars;

#endif
