#ifndef _Z_BG_SPOT18_FUTA_H_
#define _Z_BG_SPOT18_FUTA_H_

#include <ultra64.h>
#include <global.h>

struct BgSpot18Futa;

typedef struct BgSpot18Futa {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ u32 dynaPolyId;
    /* 0x0150 */ u32 unk_150[0x5];
} BgSpot18Futa; // size = 0x0154

extern const ActorInit Bg_Spot18_Futa_InitVars;
#endif
