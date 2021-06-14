#ifndef _Z_EN_EIYER_H_
#define _Z_EN_EIYER_H_

#include "ultra64.h"
#include "global.h"

struct EnEiyer;

typedef void (*EnEiyerUpdateFunc)(struct EnEiyer *, GlobalContext*);

typedef struct EnEiyer {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelanime;
    /* 0x0190 */ EnEiyerUpdateFunc actionFunc;
    /* 0x0194 */ s16 unk_194;
    /* 0x0196 */ s16 targetYaw;
    /* 0x0198 */ Vec3s jointTable[19];
    /* 0x020A */ Vec3s morphTable[19];
    /* 0x027C */ Vec3f unk_27C;
    ///* 0x027C */ f32 unk_27C;
    ///* 0x0280 */ f32 unk_280;
    ///* 0x0284 */ f32 unk_284;
    /* 0x0288 */ ColliderCylinder colCyl;
} EnEiyer; // size = 0x02D4

extern const ActorInit En_Eiyer_InitVars;

#endif
