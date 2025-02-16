#ifndef Z_DEMO_EC_H
#define Z_DEMO_EC_H

#include "ultra64.h"
#include "z64actor.h"

struct DemoEc;

typedef void (*DemoEcInitFunc)(struct DemoEc*, struct PlayState*);
typedef void (*DemoEcUpdateFunc)(struct DemoEc*, struct PlayState*);
typedef void (*DemoEcDrawFunc)(struct DemoEc*, struct PlayState*);

typedef struct DemoEc {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ s16 eyeTexIndex;
    /* 0x0192 */ s16 blinkTimer;
    /* 0x0194 */ s32 updateMode;
    /* 0x0198 */ s32 drawConfig;
    /* 0x019C */ s32 cueId;
    /* 0x01A0 */ s32 drawObjectSlot;
    /* 0x01A4 */ s32 animObjectSlot;
} DemoEc; // size = 0x01A8

#endif
