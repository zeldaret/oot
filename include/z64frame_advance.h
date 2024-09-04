#ifndef Z64FRAME_ADVANCE_H
#define Z64FRAME_ADVANCE_H

#include "ultra64.h"

struct Input;
struct PlayState;

typedef struct FrameAdvanceContext {
    /* 0x0 */ s32 enabled;
    /* 0x4 */ s32 timer;
} FrameAdvanceContext; // size = 0x8

void FrameAdvance_Init(FrameAdvanceContext* frameAdvCtx);
s32 FrameAdvance_Update(FrameAdvanceContext* frameAdvCtx, struct Input* input);

int FrameAdvance_IsEnabled(struct PlayState* this);

#endif
