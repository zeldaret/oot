#ifndef _Z_BG_DDAN_JD_H_
#define _Z_BG_DDAN_JD_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ActorFunc actionFunc;
    /* 0x0168 */ char unk_168[0x8];
} BgDdanJd; // size = 0x0170

extern const ActorInit Bg_Ddan_Jd_InitVars;

#endif
