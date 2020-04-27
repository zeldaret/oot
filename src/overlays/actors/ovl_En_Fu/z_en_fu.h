#ifndef _Z_EN_FU_H_
#define _Z_EN_FU_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinderMain collider;
    /* 0x0198 */ SkelAnime skelanime;
    /* 0x01DC */ Vec3s limbDrawTable[16];
    /* 0x023C */ Vec3s transitionDrawTable[16];
    /* 0x029C */ Vec3s unk_29C;
    /* 0x02A2 */ Vec3s unk_2A2;
    /* 0x02A8 */ u16 unk_2A8; //0 = stop, 2 = moving, 1 = ?
    /* 0x02AA */ u16 facialExpression;
    /* 0x02AC */ ActorFunc actionFunc;
} EnFu; // size = 0x02B0

extern const ActorInit En_Fu_InitVars;

#endif
