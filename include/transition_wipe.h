#ifndef TRANSITION_WIPE_H
#define TRANSITION_WIPE_H

#include "ultra64.h"
#include "color.h"

typedef struct TransitionWipe {
    /* 0x000 */ Color_RGBA8_u32 color;
    /* 0x004 */ Color_RGBA8_u32 unkColor;
    /* 0x008 */ u8 direction;
    /* 0x009 */ u8 frame;
    /* 0x00A */ u8 isDone;
    /* 0x00C */ u16 texX;
    /* 0x00E */ u16 texY;
    /* 0x010 */ u16 normal;
    /* 0x018 */ Mtx projection;
    /* 0x058 */ Mtx lookAt;
    /* 0x098 */ Mtx modelView[2][3];
} TransitionWipe; // size = 0x218

void TransitionWipe_Start(void* thisx);
void* TransitionWipe_Init(void* thisx);
void TransitionWipe_Destroy(void* thisx);
void TransitionWipe_Update(void* thisx, s32 updateRate);
void TransitionWipe_Draw(void* thisx, Gfx** gfxP);
s32 TransitionWipe_IsDone(void* thisx);
void TransitionWipe_SetType(void* thisx, s32 type);
void TransitionWipe_SetColor(void* thisx, u32 color);

#endif
