#ifndef _Z_BG_HIDAN_KOWARERUKABE_H_
#define _Z_BG_HIDAN_KOWARERUKABE_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x78];
} BgHidanKowarerukabe; // size = 0x01C4

extern const ActorInit Bg_Hidan_Kowarerukabe_InitVars;

#endif
