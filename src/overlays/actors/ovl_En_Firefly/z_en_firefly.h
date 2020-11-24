#ifndef _Z_EN_FIREFLY_H_
#define _Z_EN_FIREFLY_H_

#include "ultra64.h"
#include "global.h"

struct EnFirefly;

typedef void (*EnFireflyActionFunc)(struct EnFirefly*, GlobalContext*);

typedef struct EnFirefly {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x24];
    /* 0x0170 */ SkelAnime skelAnime;
    /* 0x01B4 */ EnFireflyActionFunc actionFunc;
    /* 0x01B8 */ u8 unk_1B8;
    /* 0x01B9 */ u8 unk_1B9;
    /* 0x01BA */ s16 unk_1BA;
    /* 0x01BC */ char unk_1BC[0x2];
    /* 0x01BE */ Vec3s limbDrawTable[0x1C];
    // /* 0x025C */ char unk_25C[0xA];
    /* 0x0266 */ Vec3s transitionDrawTable[0x1C];
    /* 0x030E */ char unk_30E[0x2];
    /* 0x0310 */ f32 unk_310;
    /* 0x0314 */ ColliderJntSph collider;
    /* 0x0344 */ ColliderJntSphItem colliderItem;
} EnFirefly; // size = 0x0374

extern const ActorInit En_Firefly_InitVars;

#endif
