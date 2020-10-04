#ifndef _Z_BG_HIDAN_CURTAIN_H_
#define _Z_BG_HIDAN_CURTAIN_H_

#include "ultra64.h"
#include "global.h"

struct BgHidanCurtain;

typedef struct BgHidanCurtain {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x58];
} BgHidanCurtain; // size = 0x01A4

extern const ActorInit Bg_Hidan_Curtain_InitVars;

#endif
