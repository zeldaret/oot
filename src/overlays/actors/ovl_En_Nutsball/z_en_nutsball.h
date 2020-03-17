#ifndef _Z_EN_NUTSBALL_H_
#define _Z_EN_NUTSBALL_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor     actor;
    /* 0x014C */ ActorFunc actionFunc;
    /* 0x0150 */ s8        objBankIndex;
    /* 0x0152 */ s16       timer;
    /* 0x0154 */ ColliderCylinderMain collider;
} EnNutsball; // size = 0x01A0

extern const ActorInit En_Nutsball_InitVars;

#endif
