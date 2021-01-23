#ifndef _Z_BG_HIDAN_ROCK_H_
#define _Z_BG_HIDAN_ROCK_H_

#include "ultra64.h"
#include "global.h"

struct BgHidanRock;

typedef void (*BgHidanRockActionFunc)(struct BgHidanRock*, GlobalContext*);

typedef struct BgHidanRock {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgHidanRockActionFunc* callback;
    /* 0x0168 */ u8 unk_168;
    /* 0x0169 */ u8 unk_169;
    /* 0x016A */ u16 unk_16A;
    /* 0x016C */ char unk_16C[0x10];
    /* 0x017C */ ColliderCylinder collider;
} BgHidanRock; // size = 0x01C8

extern const ActorInit Bg_Hidan_Rock_InitVars;

#endif
