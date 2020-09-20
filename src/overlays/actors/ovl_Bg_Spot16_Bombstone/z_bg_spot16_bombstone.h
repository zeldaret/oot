#ifndef _Z_BG_SPOT16_BOMBSTONE_H_
#define _Z_BG_SPOT16_BOMBSTONE_H_

#include <ultra64.h>
#include <global.h>
#include "overlays/actors/ovl_En_Bombf/z_en_bombf.h"

struct BgSpot16Bombstone;

typedef void (*BgSpot16BombstoneActionFunc)(struct BgSpot16Bombstone*, GlobalContext*);

typedef struct BgSpot16Bombstone {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ BgSpot16BombstoneActionFunc actionFunc;
    /* 0x0150 */ s32 unk_150;
    /* 0x0154 */ s16 unk_154;
    /* 0x0156 */ s16 unk_156;
    /* 0x0158 */ s16 unk_158;
    /* 0x0158 */ char unk_15A[0x2];
    /* 0x015C */ f32 unk_15C;
    /* 0x0160 */ f32 unk_160;
    /* 0x0164 */ ColliderJntSph colliderJntSph;
    /* 0x0184 */ ColliderJntSphItem colliderJntSphItem;
    /* 0x01C4 */ ColliderCylinder colliderCylinder;
    /* 0x0210 */ s16 unk_210;
    /* 0x0212 */ s16 unk_212;
    /* 0x0214 */ s8 unk_214; // bankIndex? passed to Object_IsLoaded
    /* 0x0215 */ char unk_215[0x3];
} BgSpot16Bombstone; // size = 0x0218

extern const ActorInit Bg_Spot16_Bombstone_InitVars;

#endif
