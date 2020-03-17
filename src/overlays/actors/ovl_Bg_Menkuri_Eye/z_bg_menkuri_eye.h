#ifndef _Z_BG_MENKURI_EYE_H_
#define _Z_BG_MENKURI_EYE_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x64];
} BgMenkuriEye; // size = 0x01B0

extern const ActorInit Bg_Menkuri_Eye_InitVars;

#endif
