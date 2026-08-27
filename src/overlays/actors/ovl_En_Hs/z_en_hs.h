#ifndef Z_EN_HS_H
#define Z_EN_HS_H

#include "ultra64.h"
#include "actor.h"

struct EnHs;

typedef void (*EnHsActionFunc)(struct EnHs*, struct PlayState*);

typedef struct EnHs {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinder collider;
    /* 0x0198 */ SkelAnime skelAnime;
    /* 0x01DC */ Vec3s jointTable[16];
    /* 0x023C */ Vec3s morphTable[16];
    /* 0x029C */ Vec3s headRot;
    /* 0x02A2 */ Vec3s torsoRot;
    /* 0x02A8 */ u16 trackingFlags;
    /* 0x02AA */ s16 cojiroSfxTimer;
    /* 0x02AC */ EnHsActionFunc actionFunc;
} EnHs; // size = 0x02B0

#endif
