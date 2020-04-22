#ifndef _Z_BG_HAKA_TUBO_H_
#define _Z_BG_HAKA_TUBO_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ActorFunc actionFunc;
    /* 0x0168 */ char unk_168[0x9C];
} BgHakaTubo; // size = 0x0204

extern const ActorInit Bg_Haka_Tubo_InitVars;

#endif
