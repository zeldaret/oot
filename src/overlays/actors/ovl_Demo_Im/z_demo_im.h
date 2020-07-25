#ifndef _Z_DEMO_IM_H_
#define _Z_DEMO_IM_H_

#include <ultra64.h>
#include <global.h>

struct DemoIm;

typedef void (*DemoImActionFunc)(struct DemoIm*, GlobalContext*);
typedef void (*DemoImDrawFunc)(struct DemoIm*, GlobalContext*);

typedef struct DemoIm {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s limbDrawTable[17];
    /* 0x01F6 */ Vec3s transitionDrawTable[17];
    /* 0x025C */ s16 unk_25C;
    /* 0x025E */ char unk_25E[0x2];
    /* 0x0260 */ s32 action;
    /* 0x0264 */ s32 drawConfig;
    /* 0x0268 */ char unk_268[0x4];
    /* 0x026C */ s32 unk_26C;
    /* 0x0270 */ char unk_270[0x10];
    /* 0x0280 */ s32 unk_280;
    /* 0x0284 */ ColliderCylinder collider;
    /* 0x02D0 */ char unk_2D0[0x2C];
} DemoIm; // size = 0x02FC

extern const ActorInit Demo_Im_InitVars;

#endif
