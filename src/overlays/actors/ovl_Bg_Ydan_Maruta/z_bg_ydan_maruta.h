#ifndef _Z_BG_YDAN_MARUTA_H_
#define _Z_BG_YDAN_MARUTA_H_

#include <ultra64.h>
#include <global.h>

struct BgYdanMaruta;

typedef struct BgYdanMaruta {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xF8];
} BgYdanMaruta; // size = 0x0244

extern const ActorInit Bg_Ydan_Maruta_InitVars;

#endif
