#ifndef _Z_BG_ZG_H_
#define _Z_BG_ZG_H_

#include <ultra64.h>
#include <global.h>
#include <vt.h>

typedef struct
{
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ s32 funcIndex;
    /* 0x0168 */ s32 unk_168;
} BgZg; // size = 0x016C

extern const ActorInit Bg_Zg_InitVars;

#endif
