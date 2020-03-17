#ifndef _Z_BG_DODOAGO_H_
#define _Z_BG_DODOAGO_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x104];
} BgDodoago; // size = 0x0250

extern const ActorInit Bg_Dodoago_InitVars;

#endif
