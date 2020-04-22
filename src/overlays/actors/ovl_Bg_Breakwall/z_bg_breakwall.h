#ifndef _Z_BG_BREAKWALL_H_
#define _Z_BG_BREAKWALL_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ char unk_164[0x88];
    /* 0x01EC */ ActorFunc actionFunc;
} BgBreakwall; // size = 0x01F0

extern const ActorInit Bg_Breakwall_InitVars;

#endif
