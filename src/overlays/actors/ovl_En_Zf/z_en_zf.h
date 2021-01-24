#ifndef _Z_EN_ZF_H_
#define _Z_EN_ZF_H_

#include "ultra64.h"
#include "global.h"

struct EnZf;

typedef void (*EnZfActionFunc)(struct EnZf*, GlobalContext*);

typedef struct EnZf {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x2C8];
    /* 0x0414 */ s32 blureIndex;
    /* 0x0418 */ ColliderCylinder bodyCollider;
    /* 0x0464 */ ColliderQuad daggerCollider;
    /* 0x04E4 */ char unk_4E4[0x84];
} EnZf; // size = 0x0568

extern const ActorInit En_Zf_InitVars;

#endif
