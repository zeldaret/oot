#ifndef _Z_BG_HIDAN_HROCK_H_
#define _Z_BG_HIDAN_HROCK_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xF8];
} BgHidanHrock; // size = 0x0244

extern const ActorInit Bg_Hidan_Hrock_InitVars;

#endif
