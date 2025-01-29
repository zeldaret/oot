#ifndef Z_DEMO_GEFF_H
#define Z_DEMO_GEFF_H

#include "ultra64.h"
#include "z64actor.h"

struct DemoGeff;

typedef void (*DemoGeffInitFunc)(struct DemoGeff*, struct PlayState*);
typedef void (*DemoGeffActionFunc)(struct DemoGeff*, struct PlayState*);
typedef void (*DemoGeffDrawFunc)(struct DemoGeff*, struct PlayState*);

typedef struct DemoGeff {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ s32 action;
    /* 0x0150 */ s32 drawConfig;
    /* 0x0154 */ s32 objectSlot;
    /* 0x0158 */ struct DemoGt* demoGt;
    /* 0x015C */ f32 deltaPosX;
    /* 0x0160 */ f32 deltaPosY;
    /* 0x0164 */ f32 deltaPosZ;
} DemoGeff; // size = 0x0168

#endif
