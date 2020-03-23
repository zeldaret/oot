#ifndef _Z_BG_SPOT01_IDOMIZU_H_
#define _Z_BG_SPOT01_IDOMIZU_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xC];
} BgSpot01Idomizu; // size = 0x0158

extern const ActorInit Bg_Spot01_Idomizu_InitVars;

#endif
