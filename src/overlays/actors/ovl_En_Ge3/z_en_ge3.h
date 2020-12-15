#ifndef _Z_EN_GE3_H_
#define _Z_EN_GE3_H_

#include "ultra64.h"
#include "global.h"

struct EnGe3;

typedef void (*EnGe3ActionFunc)(struct EnGe3*, GlobalContext*);

typedef struct EnGe3 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinder collider;
    /* 0x0198 */ SkelAnime skelAnime;
    /* 0x01DC */ Vec3s limbDrawTable[0x18];
    /* 0x026C */ Vec3s transitionDrawTable[0x18];
    /* 0x02FC */ s16 unk_2FC;
    /* 0x02FC */ s16 unk_2FE;
    /* 0x0300 */ Vec3s unk_300;
    /* 0x0306 */ Vec3s unk_306;
    /* 0x030C */ u16 unk_30C;
    /* 0x014C */ char unk_30E[0x2];
    /* 0x0310 */ EnGe3ActionFunc actionFunc;
} EnGe3; // size = 0x0314

extern const ActorInit En_Ge3_InitVars;

#endif
