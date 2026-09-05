#ifndef Z_EN_DEKUBABA_H
#define Z_EN_DEKUBABA_H

#include "ultra64.h"
#include "actor.h"

#include "assets/objects/object_dekubaba/object_dekubaba.h"

typedef enum EnDekubabaType {
    EN_DEKUBABA_TYPE_NORMAL,
    EN_DEKUBABA_TYPE_BIG
} EnDekubabaType;

struct EnDekubaba;

typedef void (*EnDekubabaActionFunc)(struct EnDekubaba*, struct PlayState*);

typedef struct EnDekubaba {
    /* 0x000 */ Actor actor;
    /* 0x14C */ Vec3f unk_14C[2]; // unused
    /* 0x164 */ Vec3f unk_164;    // unused
    /* 0x170 */ Vec3f homePos;    // unused
    /* 0x17C */ SkelAnime skelAnime;
    /* 0x1C0 */ EnDekubabaActionFunc actionFunc;
    /* 0x1C4 */ char pad_1C4[2];
    /* 0x1C6 */ s16 actionState;
    /* 0x1C8 */ s16 wobbleTarget;
    /* 0x1CA */ s16 stemPartsRot[3];
    /* 0x1D0 */ Vec3s jointTable[DEKUBABA_HEAD_LIMB_MAX];
    /* 0x200 */ Vec3s morphTable[DEKUBABA_HEAD_LIMB_MAX];
    /* 0x230 */ f32 scaleFac;
    /* 0x234 */ struct CollisionPoly* floorPoly;
    /* 0x238 */ ColliderJntSph collider;
    /* 0x258 */ ColliderJntSphElement colliderElements[7];
} EnDekubaba; // size = 0x418

#endif
