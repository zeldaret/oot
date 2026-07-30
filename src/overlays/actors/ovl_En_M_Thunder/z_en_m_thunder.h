#ifndef Z_EN_M_THUNDER_H
#define Z_EN_M_THUNDER_H

#include "ultra64.h"
#include "actor.h"
#include "light.h"

struct EnMThunder;

typedef void (*EnMThunderActionFunc)(struct EnMThunder*, struct PlayState*);

typedef struct EnMThunder {
    /* 0x000 */ Actor actor;
    /* 0x14C */ ColliderCylinder unk14C;
    /* 0x198 */ LightNode* unk198;
    /* 0x19C */ LightInfo unk19C;
    /* 0x1AA */ char pad1AA[2];
    /* 0x1AC */ f32 spinAttackTimer;
    /* 0x1B0 */ f32 spinAttackAlpha;
    /* 0x1B4 */ f32 spinTrailTexScroll;
    /* 0x1B8 */ f32 spinChargePercent;
    /* 0x1BC */ f32 dimmingIntensity;
    /* 0x1C0 */ EnMThunderActionFunc actionFunc;
    /* 0x1C4 */ u16 followPlayerTimer;
    /* 0x1C6 */ u8 attackStrength; // see `EnMThunderAttackStrength`
    /* 0x1C7 */ u8 swordType;      // see `EnMThunderSwordType`
    /* 0x1C8 */ u8 chargeAlpha;
    /* 0x1C9 */ u8 targetScale;
    /* 0x1CA */ u8 isUsingMagic;
    /* 0x1CB */ char pad1CB[1];
} EnMThunder; // size = 0x1CC

#endif
