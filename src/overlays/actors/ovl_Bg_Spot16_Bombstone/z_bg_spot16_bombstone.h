#ifndef _Z_BG_SPOT16_BOMBSTONE_H_
#define _Z_BG_SPOT16_BOMBSTONE_H_

#include <ultra64.h>
#include <global.h>

struct BgSpot16Bombstone;

typedef void (*BgSpot16Bombstone)(struct BgSpot16Bombstone*, GlobalContext*);

typedef struct BgSpot16Bombstone {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x4];
    /* 0x0150 */ s32 unk_150;
    /* 0x0154 */ s16 unk_154;
    /* 0x0156 */ s16 unk_156;
    /* 0x0158 */ s16 unk_158;
    /* 0x0158 */ char unk_15A[0x2];
    /* 0x015C */ s32 unk_15C;
    /* 0x0160 */ s32 unk_160;
    /* 0x0164 */ ColliderJntSph colliderJntSph;
    /* 0x0184 */ ColliderJntSphItem colliderJntSphItem;
    /* 0x01C4 */ char unk_1C4[0x54];
    /* 0x01C4 -Collider_DestroyCylinder */
} BgSpot16Bombstone; // size = 0x0218

extern const ActorInit Bg_Spot16_Bombstone_InitVars;

#endif
