#ifndef _Z_BG_HAKA_TRAP_H_
#define _Z_BG_HAKA_TRAP_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ActorFunc actionFunc;
    /* 0x0168 */ char unk_168[0x10];
    /* 0x0178 */ ColliderCylinderMain collider_178;
    /* 0x01C4 */ ColliderCylinderMain collider_1C4;
    /* 0x0210 */ char unk_210[0x8C];
} BgHakaTrap; // size = 0x029C

extern const ActorInit Bg_Haka_Trap_InitVars;

#endif
