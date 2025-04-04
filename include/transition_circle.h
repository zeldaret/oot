#ifndef TRANSITION_CIRCLE_H
#define TRANSITION_CIRCLE_H

#include "ultra64.h"
#include "color.h"

typedef enum TransitionCircleAppearance {
    /* 0 */ TCA_NORMAL,
    /* 1 */ TCA_WAVE,
    /* 2 */ TCA_RIPPLE,
    /* 3 */ TCA_STARBURST
} TransitionCircleAppearance;

typedef enum TransitionCircleColor {
    /* 0 */ TCC_BLACK,
    /* 1 */ TCC_WHITE,
    /* 2 */ TCC_GRAY,
    /* 3 */ TCC_SPECIAL // color varies depending on appearance. unused and appears broken
} TransitionCircleColor;

typedef enum TransitionCircleSpeed {
    /* 0 */ TCS_FAST,
    /* 1 */ TCS_SLOW
} TransitionCircleSpeed;

typedef struct TransitionCircle {
    /* 0x000 */ Color_RGBA8_u32 color;
    /* 0x004 */ Color_RGBA8_u32 unkColor;
    /* 0x008 */ s32 texX;
    /* 0x00C */ s32 texY;
    /* 0x010 */ s32 speed;
    /* 0x014 */ u8 direction;
    /* 0x015 */ u8 colorType;
    /* 0x016 */ u8 speedType;
    /* 0x017 */ u8 appearanceType;
    /* 0x018 */ u8 isDone;
    /* 0x019 */ u8 frame;
    /* 0x01A */ u16 normal;
    /* 0x020 */ Mtx projection;
    /* 0x060 */ Mtx lookAt;
    /* 0x0A0 */ void* texture;
    /* 0x0A8 */ Mtx modelView[2][3];
} TransitionCircle; // size = 0x228

void TransitionCircle_Start(void* thisx);
void* TransitionCircle_Init(void* thisx);
void TransitionCircle_Destroy(void* thisx);
void TransitionCircle_Update(void* thisx, s32 updateRate);
void TransitionCircle_Draw(void* thisx, Gfx** gfxP);
s32 TransitionCircle_IsDone(void* thisx);
void TransitionCircle_SetType(void* thisx, s32 type);
void TransitionCircle_SetColor(void* thisx, u32 color);
void TransitionCircle_SetUnkColor(void* thisx, u32 color);

#endif
