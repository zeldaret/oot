#ifndef _Z_EN_AM_H_
#define _Z_EN_AM_H_

#include "ultra64.h"
#include "global.h"

struct EnAm;

typedef void (*EnAmActionFunc)(struct EnAm*, GlobalContext*);

typedef struct EnAm {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ SkelAnime skelAnime;
    /* 0x01A8 */ s32 unk_1A8;
    /* 0x01AC */ Vec3s jointTable[14];
    /* 0x0200 */ Vec3s morphTable[14];
    /* 0x0254 */ EnAmActionFunc actionFunc;
    /* 0x0258 */ s16 unk_258;
    /* 0x025A */ char unk_25A[0x2];
    /* 0x025C */ char unk_25C[0x18];
    /* 0x0274 */ ColliderCylinder cylinder1;
    /* 0x02C0 */ ColliderCylinder cylinder2;
    /* 0x030C */ ColliderQuad hitCollider;
} EnAm; // size = 0x038C

typedef enum {
    /* 0 */ ARMOS_STATUE,
    /* 1 */ ARMOS_ENEMY
} ArmosType;

extern const ActorInit En_Am_InitVars;

#endif
