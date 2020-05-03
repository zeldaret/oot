#ifndef _Z_EN_ZL1_H_
#define _Z_EN_ZL1_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ ActorFunc actionFunc;
    /* 0x0194 */ ColliderCylinder collider;
    /* 0x01E0 */ char unk_1E0[0x6];
    /* 0x01E6 */ s16 unk_1E6;
    /* 0x01E8 */ char unk_1E8[0x4];
    /* 0x01EC */ s32 unk_1EC;
    /* 0x01F0 */ char unk_1F0[0x4];
    /* 0x01F4 */ s32 unk_1F4;
    /* 0x01F8 */ s32 unk_1F8;
    /* 0x01FC */ char unk_1FC[0x4];
    /* 0x0200 */ s16 unk_200;
    /* 0x0202 */ s16 unk_202;
    /* 0x0204 */ s16 unk_204;
    /* 0x0206 */ s16 unk_206;
    /* 0x0208 */ s16 unk_208;
    /* 0x020A */ s16 unk_20A;
} EnZl1; // size = 0x020C

extern const ActorInit En_Zl1_InitVars;

#endif
