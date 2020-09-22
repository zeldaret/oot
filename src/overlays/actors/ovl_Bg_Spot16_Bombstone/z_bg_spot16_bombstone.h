#ifndef _Z_BG_SPOT16_BOMBSTONE_H_
#define _Z_BG_SPOT16_BOMBSTONE_H_

#include <ultra64.h>
#include <global.h>

struct BgSpot16Bombstone;

typedef void (*BgSpot16BombstoneActionFunc)(struct BgSpot16Bombstone*, GlobalContext*);

typedef struct BgSpot16Bombstone {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ BgSpot16BombstoneActionFunc actionFunc;
    /* 0x0150 */ Gfx* unk_150;
    /* 0x0154 */ s16 unk_154;
    /* 0x0156 */ s16 switchFlag;
    /* 0x0158 */ s16 unk_158;
    /* 0x015C */ f32 sinRotation;
    /* 0x0160 */ f32 cosRotation;
    /* 0x0164 */ ColliderJntSph colliderJntSph;
    /* 0x0184 */ ColliderJntSphItem colliderJntSphItems[1];
    /* 0x01C4 */ ColliderCylinder colliderCylinder;
    /* 0x0210 */ s16 unk_210;
    /* 0x0212 */ s16 unk_212;
    /* 0x0214 */ s8 bombiwaBankIndex;
} BgSpot16Bombstone; // size = 0x0218

extern const ActorInit Bg_Spot16_Bombstone_InitVars;

#endif
