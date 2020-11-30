#ifndef _Z_EN_FIREFLY_H_
#define _Z_EN_FIREFLY_H_

#include "ultra64.h"
#include "global.h"

struct EnFirefly;

typedef void (*EnFireflyActionFunc)(struct EnFirefly*, GlobalContext*);

typedef struct EnFirefly {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ Vec3f bodyPartsPos[3];
    /* 0x0170 */ SkelAnime skelAnime;
    /* 0x01B4 */ EnFireflyActionFunc actionFunc;
    /* 0x01B8 */ u8 auraType; // determines the trail: none/fire/ice
    /* 0x01B9 */ u8 bodyLit; // determines the body color (orange for Fire Keese, black otherwise), and if it becomes a normal Keese after hitting Link
    /* 0x01BA */ s16 timer;
    /* 0x01BC */ s16 targetPitch;
    /* 0x01BE */ Vec3s limbDrawTable[28];
    /* 0x0266 */ Vec3s transitionDrawTable[28];
    /* 0x030E */ char unk_30E[0x2];
    /* 0x0310 */ f32 maxAltitude;
    /* 0x0314 */ ColliderJntSph collider;
    /* 0x0344 */ ColliderJntSphItem colliderItems[1];
} EnFirefly; // size = 0x0374

extern const ActorInit En_Firefly_InitVars;

#endif
