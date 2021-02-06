#ifndef _Z_EN_ANUBICE_FIRE_H_
#define _Z_EN_ANUBICE_FIRE_H_

#include "ultra64.h"
#include "global.h"

struct EnAnubiceFire;

typedef void (*EnAnubiceFireActionFunc)(struct EnAnubiceFire*, GlobalContext*);

typedef struct EnAnubiceFire {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnAnubiceFireActionFunc unk_14C;
    /* 0x0150 */ f32 unk_150;
    /* 0x0150 */ f32 unk_154;
    /* 0x0150 */ char unk_158[0x02];
    /* 0x015A */ s16 unk_15A;
    /* 0x015C */ char unk_15C[0x02];
    /* 0x015E */ s16 unk_15E;
    /* 0x0178 */ Vec3f unk_160[6];
    /* 0x01A8 */ ColliderCylinder cylinder;
} EnAnubiceFire; // size = 0x01F4

extern const ActorInit En_Anubice_Fire_InitVars;

#endif
