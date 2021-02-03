#ifndef _Z_EN_FU_H_
#define _Z_EN_FU_H_

#include "ultra64.h"
#include "global.h"

struct EnFu;

typedef void (*EnFuActionFunc)(struct EnFu*, GlobalContext*);

typedef struct EnFu {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinder collider;
    /* 0x0198 */ SkelAnime skelanime;
    /* 0x01DC */ Vec3s jointTable[16];
    /* 0x023C */ Vec3s morphTable[16];
    /* 0x029C */ Vec3s lookAngleOffset; // offset applied to neck rotation to look at link when he is close
    /* 0x02A2 */ Vec3s unk_2A2; 
    /* 0x02A8 */ u16 behaviorFlags;
    /* 0x02AA */ u16 facialExpression;
    /* 0x02AC */ EnFuActionFunc actionFunc;
} EnFu; // size = 0x02B0

extern const ActorInit En_Fu_InitVars;

#endif
