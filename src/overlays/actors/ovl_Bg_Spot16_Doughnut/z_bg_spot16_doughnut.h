#ifndef _Z_BG_SPOT16_DOUGHNUT_H_
#define _Z_BG_SPOT16_DOUGHNUT_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x8];
} BgSpot16Doughnut; // size = 0x0154

extern const ActorInit Bg_Spot16_Doughnut_InitVars;

#endif
