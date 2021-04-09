#ifndef _Z_EN_GOMA_H_
#define _Z_EN_GOMA_H_

#include "ultra64.h"
#include "global.h"

struct EnGoma;

typedef void (*EnGomaActionFunc)(struct EnGoma*, GlobalContext*);

typedef struct EnGoma {
    /* 0x000 */ Actor actor;
    /* 0x14C */ SkelAnime skelanime;
    /* 0x190 */ Vec3s jointTable[24];
    /* 0x220 */ Vec3s morphTable[24];
    /* 0x2B0 */ EnGomaActionFunc actionFunc;
    /* 0x2B4 */ s16 unk_2B4;
    /* 0x2B6 */ s16 unk_2B6;
    /* 0x2B8 */ s16 unk_2B8;
    /* 0x2BA */ s16 unk_2BA;
    /* 0x2BC */ s16 unk_2BC;
    /* 0x2BE */ s16 unk_2BE;
    /* 0x2C0 */ s16 unk_2C0;
    /* 0x2C2 */ s16 unk_2C2;
    /* 0x2C4 */ s16 unk_2C4;
    /* 0x2C6 */ s16 unk_2C6;
    /* 0x2C8 */ s16 unk_2C8; // some debug spawn ID
    /* 0x2CA */ s16 unk_2CA;
    /* 0x2CC */ s16 unk_2CC;
    /* 0x2D0 */ f32 unk_2D0;
    /* 0x2D4 */ f32 unk_2D4;
    /* 0x2D8 */ f32 unk_2D8;
    /* 0x2DC */ f32 unk_2DC;
    /* 0x2E0 */ f32 unk_2E0[3];
    /* 0x2EC */ f32 unk_2EC;
    /* 0x2F0 */ f32 unk_2F0;
    /* 0x2F4 */ s32 unk_2F4;
    /* 0x2F8 */ s16 unk_2F8;
    /* 0x2FA */ s16 unk_2FA;
    /* 0x2FC */ Vec3f unk_2FC;
    /* 0x308 */ Gfx* unk_308; // set by z_boss_goma
    /* 0x30C */ ColliderCylinder colCyl1;
    /* 0x358 */ ColliderCylinder colCyl2;
} EnGoma; // size = 0x03A4

extern const ActorInit En_Goma_InitVars;

#endif
