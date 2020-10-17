#ifndef _Z_EN_SIOFUKI_H_
#define _Z_EN_SIOFUKI_H_

#include "ultra64.h"
#include "global.h"

struct EnSiofuki;

typedef void (*EnSiofukiActionFunc)(struct EnSiofuki*, GlobalContext*);

typedef struct EnSiofuki {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ EnSiofukiActionFunc actionFunc;
    /* 0x0168 */ s32 timer;
    /* 0x016C */ f32 initPosY;
    /* 0x0170 */ f32 unk_170;
    /* 0x0174 */ f32 unk_174;
    /* 0x0178 */ f32 unk_178;
    /* 0x017C */ f32 unk_17C;
    /* 0x0180 */ f32 unk_180;
    /* 0x0184 */ s32 splashTimer;
    /* 0x0188 */ s32 applySpeed;
    /* 0x018C */ f32 appliedSpeed;
    /* 0x0190 */ f32 targetAppliedSpeed;
    /* 0x0194 */ s16 appliedYaw;
    /* 0x0196 */ s16 initRotY;
    /* 0x0198 */ f32 unk_198;
    /* 0x019C */ u8 sfxFlags;
} EnSiofuki; // size = 0x01A0

extern const ActorInit En_Siofuki_InitVars;

#endif
