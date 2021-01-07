#ifndef _Z_EN_GE2_H_
#define _Z_EN_GE2_H_

#include "ultra64.h"
#include "global.h"

struct EnGe2;

typedef void (*EnGe2ActionFunc)(struct EnGe2*, GlobalContext*);

typedef struct EnGe2 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinder collider;
    /* 0x0198 */ SkelAnime skelAnime;
    /* 0x01DC */ Vec3s jointTable[22];
    /* 0x0260 */ Vec3s morphTable[22];
    /* 0x02E4 */ s16 eyeIndex; // eyeIndex
    /* 0x02E6 */ s16 blinkTimer; // blinkTimer
    /* 0x02E8 */ Vec3s unk_2E8;
    /* 0x02EE */ Vec3s unk_2EE;
    /* 0x02F4 */ u16 unk_2F4;
    /* 0x02F6 */ s16 unk_2F6;
    /* 0x02F8 */ s16 unk_2F8;
    // /* 0x02FA */ char unk_2FA[0x2];
    /* 0x02FC */ f32 unk_2FC;
    /* 0x0300 */ u16 unk_300;
    /* 0x0302 */ u16 unk_302;
    /* 0x0304 */ u8 unk_304;
    /* 0x0305 */ u8 unk_305;
    /* 0x0306 */ u8 unk_306;
    // /* 0x0307 */ char unk_307;
    /* 0x0308 */ EnGe2ActionFunc actionFunc;
} EnGe2; // size = 0x030C

extern const ActorInit En_Ge2_InitVars;

#endif
