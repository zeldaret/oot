#ifndef _Z_EN_INSECT_H_
#define _Z_EN_INSECT_H_

#include <ultra64.h>
#include <global.h>

struct EnInsect;

typedef struct EnInsect {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderJntSph collider;
    /* 0x016C */ ColliderJntSphItem colliderItem;
    /* 0x01AC */ SkelAnime skelAnime;
    /* 0x01F0 */ Vec3s limbDrawTable[24];
    /* 0x0280 */ Vec3s transitionDrawTable[24];
    /* 0x0310 */ char unk_310[0x004];
    /* 0x0314 */ u16 unk_314;
    /* 0x0316 */ char unk_316[4];
    /* 0x031A */ s16 unk_31A;
    /* 0x031C */ s16 unk_31C;
    /* 0x031E */ char unk_31E[0x002];
    /* 0x0320 */ UNK_PTR unk_320;
    /* 0x031E */ char unk_324[0x008];
} EnInsect; // size = 0x032C

extern const ActorInit En_Insect_InitVars;

#endif
