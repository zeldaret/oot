#ifndef _Z_EN_ZL3_H_
#define _Z_EN_ZL3_H_

#include <ultra64.h>
#include <global.h>

struct EnZl3;

typedef void (*EnZl3ActionFunc)(struct EnZl3*, GlobalContext*);
typedef void (*EnZl3DrawFunc)(struct EnZl3*, GlobalContext*);

typedef struct EnZl3 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s limbDrawTable[15];
    /* 0x01EA */ Vec3s transitionDrawTable[15];
    /* 0x0244 */ s16 unk_244;
    /* 0x0246 */ char unk_246[0x6];
    /* 0x024C */ s32 action;
    /* 0x0250 */ s32 drawConfig;
    /* 0x0254 */ char unk_254[0xC4];
    /* 0x0318 */ s32 unk_318;
    /* 0x031C */ char unk_31C[0x5C];
    /* 0x0378 */ ColliderCylinder collider;
    /* 0x03C4 */ char unk_3C4[0x4];
    /* 0x03C8 */ u8 unk_3C8;
    /* 0x03C9 */ char unk_3C9[0x3];
    /* 0x03CC */ char unk_3CC[0x54];
} EnZl3; // size = 0x0420

extern const ActorInit En_Zl3_InitVars;

#endif
