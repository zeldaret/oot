#ifndef _Z_EN_MA1_H_
#define _Z_EN_MA1_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ ActorFunc actionFunc;
    /* 0x0194 */ ColliderCylinderMain collider;
    /* 0x01E0 */ char unk_1E0[0x8];
    /* 0x01E8 */ s16 unk_1E8;
    /* 0x01EA */ char unk_1EA[0x26];
} EnMa1; // size = 0x0210

extern const ActorInit En_Ma1_InitVars;

#endif
