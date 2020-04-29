#ifndef _Z_BG_GATE_SHUTTER_H_
#define _Z_BG_GATE_SHUTTER_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ActorFunc actionFunc;
    /* 0x0168 */ s16 isOpening; // 1 if gate is opening
    /* 0x016C */ Vec3f somePos;
    /* 0x0178 */ s16 unk_178;
} BgGateShutter; // size = 0x017C

extern const ActorInit Bg_Gate_Shutter_InitVars;

#endif
