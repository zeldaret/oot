#ifndef Z_DEMO_IM_H
#define Z_DEMO_IM_H

#include "ultra64.h"
#include "actor.h"

#include "assets/objects/object_im/object_im.h"

struct DemoIm;

typedef void (*DemoImActionFunc)(struct DemoIm*, struct PlayState*);
typedef void (*DemoImDrawFunc)(struct DemoIm*, struct PlayState*);

typedef struct DemoIm {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s jointTable[IMPA_LIMB_MAX];
    /* 0x01F6 */ Vec3s morphTable[IMPA_LIMB_MAX];
    /* 0x025C */ s16 eyeIndex;
    /* 0x025E */ s16 blinkTimer;
    /* 0x0260 */ s32 action;
    /* 0x0264 */ s32 drawConfig;
    /* 0x0268 */ f32 unk_268;
    /* 0x026C */ s32 alpha;
    /* 0x0270 */ s32 unk_270;
    /* 0x0274 */ s32 cueId;
    /* 0x0278 */ f32 unk_278;
    /* 0x027C */ s32 unk_27C;
    /* 0x0280 */ s32 unk_280;
    /* 0x0284 */ ColliderCylinder collider;
    /* 0x02D0 */ s32 unk_2D0;
    /* 0x02D4 */ NpcInteractInfo interactInfo;
} DemoIm; // size = 0x02FC

#endif
