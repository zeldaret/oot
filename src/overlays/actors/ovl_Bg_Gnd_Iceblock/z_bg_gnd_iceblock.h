#ifndef _Z_BG_GND_ICEBLOCK_H_
#define _Z_BG_GND_ICEBLOCK_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ActorFunc actionFunc;
    /* 0x0168 */ Vec3f unk_168;
} BgGndIceblock; // size = 0x0174

extern const ActorInit Bg_Gnd_Iceblock_InitVars;

#endif
