#ifndef Z_EN_RU2_H
#define Z_EN_RU2_H

#include "ultra64.h"
#include "global.h"

#define ENRU2_GET_SWITCH_FLAG(thisx) PARAMS_GET_U(thisx->actor.params, 8, 8)
#define ENRU2_GET_TYPE(thisx) PARAMS_GET_U(thisx->actor.params, 0, 8)

struct EnRu2;

typedef void (*EnRu2ActionFunc)(struct EnRu2*, PlayState*);
typedef void (*EnRu2DrawFunc)(struct EnRu2*, PlayState*);

typedef struct EnRu2 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s jointTable[23];
    /* 0x021A */ Vec3s morphTable[23];
    /* 0x02A4 */ s16 eyeIndex;
    /* 0x02A6 */ s16 blinkTimer;
    /* 0x02A8 */ s32 action;
    /* 0x02AC */ s32 drawConfig;
    /* 0x02B0 */ f32 fadeTimer;
    /* 0x02B4 */ u32 alpha;
    /* 0x02B8 */ s32 isLightBall;
    /* 0x02BC */ s32 cueId;
    /* 0x02C0 */ u16 swimmingUpFrame;
    /* 0x02C2 */ u8 textboxCount; // increments on advancement through dialogue in Water Temple
    /* 0x02C3 */ u8 lastDialogState;
    /* 0x02C4 */ f32 encounterTimer;
    /* 0x02C8 */ ColliderCylinder collider;
} EnRu2; // size = 0x0314

#endif
