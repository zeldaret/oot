#ifndef Z_EN_JJ_H
#define Z_EN_JJ_H

#include "ultra64.h"
#include "actor.h"

#include "assets/objects/object_jj/object_jj.h"

typedef enum EnJjType {
    /* -1 */ EN_JJ_TYPE_MAIN = -1,
    /*  0 */ EN_JJ_TYPE_HEAD_COL,
    /*  1 */ EN_JJ_TYPE_1
} EnJjType;

struct EnJj;

typedef void (*EnJjActionFunc)(struct EnJj*, struct PlayState*);

typedef struct EnJj {
    /* 0x000 */ DynaPolyActor dyna;
    /* 0x164 */ SkelAnime skelAnime;
    /* 0x1A8 */ Vec3s jointTable[OBJECT_JJ_LIMB_MAX];
    /* 0x22C */ Vec3s morphTable[OBJECT_JJ_LIMB_MAX];
    /* 0x2B0 */ ColliderCylinder collider;
    /* 0x2FC */ EnJjActionFunc actionFunc;
    /* 0x300 */ struct EnJj* headCol;
    /* 0x304 */ Actor* effDust;
    /* 0x308 */ s16 headRot;
    /* 0x30A */ u16 csStateFlags;
    /* 0x30C */ s16 timer;
    /* 0x30E */ u8 eyeTexIndex;
    /* 0x30F */ u8 eyeTimer;
    /* 0x310 */ u8 eyeExtraBlinkAmount;
    /* 0x311 */ u8 nextEyeExtraBlinkAmount;
    /* 0x312 */ char pad_312[2];
} EnJj; // size = 0x314

#endif
