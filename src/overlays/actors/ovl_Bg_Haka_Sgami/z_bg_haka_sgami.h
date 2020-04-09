#ifndef _Z_BG_HAKA_SGAMI_H_
#define _Z_BG_HAKA_SGAMI_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ActorFunc actionFunc;
    /* 0x0150 */ char unk_150[0xC];
    /* 0x015C */ ColliderCylinderMain collider_15C;
    /* 0x01A8 */ ColliderCylinderMain collider_1A8;
    /* 0x01F4 */ char unk_1F4[0x144];
} BgHakaSgami; // size = 0x0338

extern const ActorInit Bg_Haka_Sgami_InitVars;

#endif
