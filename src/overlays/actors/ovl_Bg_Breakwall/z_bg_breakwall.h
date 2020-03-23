#ifndef _Z_BG_BREAKWALL_H_
#define _Z_BG_BREAKWALL_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xA4];
} BgBreakwall; // size = 0x01F0

extern const ActorInit Bg_Breakwall_InitVars;

#endif
