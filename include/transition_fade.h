#ifndef TRANSITION_FADE_H
#define TRANSITION_FADE_H

#include "ultra64.h"
#include "color.h"

typedef struct TransitionFade {
    /* 0x000 */ u8 type;
    /* 0x001 */ u8 isDone;
    /* 0x002 */ u8 direction;
    /* 0x004 */ Color_RGBA8_u32 color;
    /* 0x008 */ u16 timer;
} TransitionFade; // size = 0xC

void TransitionFade_Start(void* thisx);
void* TransitionFade_Init(void* thisx);
void TransitionFade_Destroy(void* thisx);
void TransitionFade_Update(void* thisx, s32 updateRate);
void TransitionFade_Draw(void* thisx, Gfx** gfxP);
s32 TransitionFade_IsDone(void* thisx);
void TransitionFade_SetColor(void* thisx, u32 color);
void TransitionFade_SetType(void* thisx, s32 type);

#endif
