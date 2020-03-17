#ifndef _Z_BG_HIDAN_SIMA_H_
#define _Z_BG_HIDAN_SIMA_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xC0];
} BgHidanSima; // size = 0x020C

extern const ActorInit Bg_Hidan_Sima_InitVars;

#endif
