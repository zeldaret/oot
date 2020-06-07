#ifndef _Z_BG_HIDAN_HAMSTEP_H_
#define _Z_BG_HIDAN_HAMSTEP_H_

#include <ultra64.h>
#include <global.h>

struct BgHidanHamstep;

typedef struct BgHidanHamstep {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xFC];
} BgHidanHamstep; // size = 0x0248

extern const ActorInit Bg_Hidan_Hamstep_InitVars;

#endif
