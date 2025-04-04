#ifndef TRANSITION_TRIFORCE_H
#define TRANSITION_TRIFORCE_H

#include "ultra64.h"
#include "color.h"

typedef struct TransitionTriforce {
    /* 0x000 */ Color_RGBA8_u32 color;
    /* 0x004 */ f32 transPos;
    /* 0x008 */ f32 step;
    /* 0x00C */ s32 state;
    /* 0x010 */ s32 type;
    /* 0x018 */ Mtx projection;
    /* 0x058 */ s32 frame;
    /* 0x060 */ Mtx modelView[2][3];
} TransitionTriforce; // size = 0x1E0

void TransitionTriforce_Start(void* thisx);
void* TransitionTriforce_Init(void* thisx);
void TransitionTriforce_Destroy(void* thisx);
void TransitionTriforce_Update(void* thisx, s32 updateRate);
void TransitionTriforce_SetColor(void* thisx, u32 color);
void TransitionTriforce_SetType(void* thisx, s32 type);
void TransitionTriforce_Draw(void* thisx, Gfx** gfxP);
s32 TransitionTriforce_IsDone(void* thisx);

#endif
