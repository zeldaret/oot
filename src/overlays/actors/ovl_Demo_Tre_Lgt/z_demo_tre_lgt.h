#ifndef _Z_DEMO_TRE_LGT_H_
#define _Z_DEMO_TRE_LGT_H_

#include "ultra64.h"
#include "global.h"

struct DemoTreLgt;

typedef void (*DemoTreLgtActionFunc)(struct DemoTreLgt*, GlobalContext*);

typedef struct {
    /* 0x00 */ f32 startFrame;
    /* 0x04 */ f32 endFrame;
    /* 0x08 */ f32 unkFrame;
    /* 0x0C */ f32 sideMaxFrame;
} FrameInfo; // size = 0x10

typedef struct {
    /* 0x00 */ FrameInfo frameInfo[2];
} DemoTreLgtInfo; // size = 0x20

typedef struct DemoTreLgt {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnimeCurve skelCurve;
    /* 0x016C */ s32 action;
    /* 0x0170 */ u32 unk_170; // some sort of alpha
    /* 0x0174 */ u32 unk_174; // another sort of alpha
    /* 0x0178 */ u8 status;
} DemoTreLgt; // size = 0x017C

extern const ActorInit Demo_Tre_Lgt_InitVars;

#endif
