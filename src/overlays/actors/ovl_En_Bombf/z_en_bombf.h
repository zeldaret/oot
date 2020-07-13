#ifndef _Z_EN_BOMBF_H_
#define _Z_EN_BOMBF_H_

#include <ultra64.h>
#include <global.h>

struct EnBombf;

typedef void (*EnBombfActionFunc)(struct EnBombf*, struct GlobalContext*);

typedef struct EnBombf {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinder bombCollider;
    /* 0x0198 */ ColliderJntSph jntSphList;
    /* 0x01B8 */ ColliderJntSphItem explosionCollider[1];
    /* 0x01F8 */ s16 timer;
    /* 0x01FA */ char unk_1FA[0x2];
    /* 0x01FC */ EnBombfActionFunc actionFunc;
    /* 0x0200 */ s32 unk_200;
    /* 0x0204 */ u8 bumpOn;
    /* 0x0206 */ s16 flashSpeedScale;
    /* 0x0208 */ f32 flashIntensity;
    /* 0x020C */ f32 unk_20C;
} EnBombf; // size = 0x0210

extern const ActorInit En_Bombf_InitVars;

#endif
