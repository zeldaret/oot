#ifndef _Z_EN_TITE_H_
#define _Z_EN_TITE_H_

#include "ultra64.h"
#include "global.h"

struct EnTite;

typedef void (*EnTiteActionFunc)(struct EnTite*, GlobalContext*);

typedef struct EnTite {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s limbDrawTable[25];
    /* 0x0226 */ Vec3s transitionDrawTable[25];
    /* 0x02BC */ u8 unk2BC;
    /* 0x02BD */ u8 unk2BD;
    /* 0x02C0 */ EnTiteActionFunc actionFunc;
    /* 0x02C4 */ struct_80032E24 unk2C4;
    /* 0x02DC */ s32 unk2DC;
    /* 0x02E0 */ s16 unk2E0;
    /* 0x02E2 */ u8 unk2E2;
    /* 0x02E3 */ u8 unk2E3;
    /* 0x02E4 */ u8 unk2E4;
    /* 0x02E8 */ ColliderJntSph collider;
    /* 0x0308 */ ColliderJntSphItem colliderItem;
    /* 0x0348 */ Vec3f footPosFrontLeft; // front left foot footPosFrontLeft
    /* 0x0354 */ Vec3f footPosFrontRight; // front right foot footPosFrontRight
    /* 0x0360 */ Vec3f footPosBackRight; // back right foot footPosBackRight
    /* 0x036C */ Vec3f footPosBackLeft; // back left foot footPosBackLeft
} EnTite; // size = 0x0378

extern const ActorInit En_Tite_InitVars;

#endif
