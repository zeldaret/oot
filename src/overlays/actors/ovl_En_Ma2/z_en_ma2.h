#ifndef _Z_EN_MA2_H_
#define _Z_EN_MA2_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ ActorFunc actionFunc;
    /* 0x0194 */ ColliderCylinderMain collider;
    /* 0x01E0 */ struct_80034A14_arg1 unk_1E0;
    /* 0x0208 */ s16 unk_208;
    /* 0x020A */ s16 unk_20A;
    /* 0x020C */ s16 unk_20C;
    /* 0x020E */ s16 unk_20E;
    /* 0x0210 */ s16 unk_210;
    /* 0x0212 */ char unk_212[0x2];
    /* 0x0214 */ Vec3s unk_214[0x12];
    /* 0x0280 */ char unk_280[0x4];
} EnMa2; // size = 0x0284

extern const ActorInit En_Ma2_InitVars;

#endif
