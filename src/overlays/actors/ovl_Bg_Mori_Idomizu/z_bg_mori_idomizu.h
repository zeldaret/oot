#ifndef _Z_BG_MORI_IDOMIZU_H_
#define _Z_BG_MORI_IDOMIZU_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x14];
} BgMoriIdomizu; // size = 0x0160

extern const ActorInit Bg_Mori_Idomizu_InitVars;

#endif
