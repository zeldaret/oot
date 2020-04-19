#ifndef _Z_BG_SPOT00_HANEBASI_H_
#define _Z_BG_SPOT00_HANEBASI_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ char unk_164[0x1C];
} BgSpot00Hanebasi; // size = 0x0180

extern const ActorInit Bg_Spot00_Hanebasi_InitVars;

#endif
