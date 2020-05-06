#ifndef _Z_EN_HEISHI3_H_
#define _Z_EN_HEISHI3_H_

#include <ultra64.h>
#include <global.h>
#include <vt.h>

struct EnHeishi3;

typedef void (*EnHeishi3ActionFunc)(struct EnHeishi3*, GlobalContext*);

typedef struct EnHeishi3 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s limbDrawTable[17];
    /* 0x01F6 */ Vec3s transitionDrawTable[17];
    /* 0x025C */ EnHeishi3ActionFunc actionFunc;
    /* 0x0260 */ Vec3s vec_260;
    /* 0x0266 */ char unk_266[0xC];
    /* 0x0272 */ s16 unk_272;
    /* 0x0274 */ s16 unk_274;
    /* 0x0276 */ u8 unk_276;
    /* 0x0278 */ s16 unk_278;
    /* 0x027A */ char unk_27A[0x2];
    /* 0x027C */ ColliderCylinder cylinderCollider;
} EnHeishi3; // size = 0x02C8

extern const ActorInit En_Heishi3_InitVars;

#endif
