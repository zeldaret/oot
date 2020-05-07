#ifndef _Z_BG_HIDAN_DALM_H_
#define _Z_BG_HIDAN_DALM_H_

#include <ultra64.h>
#include <global.h>

struct BgHidanDalm;

typedef struct BgHidanDalm {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1B0];
} BgHidanDalm; // size = 0x02FC

extern const ActorInit Bg_Hidan_Dalm_InitVars;

#endif
