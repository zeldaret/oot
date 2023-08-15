#ifndef Z64TRANSITION_INSTANCES_H
#define Z64TRANSITION_INSTANCES_H

#include "ultra64.h"
#include "color.h"

typedef struct {
    /* 0x0 */ f32 x;
    /* 0x4 */ f32 y;
} TransitionTileVtxData; // size = 0x8

typedef struct {
    /* 0x00 */ s32 cols;
    /* 0x04 */ s32 rows;
    /* 0x08 */ s32 frame;
    /* 0x0C */ TransitionTileVtxData* vtxData;
    /* 0x10 */ Vtx* vtxFrame1;
    /* 0x14 */ Vtx* vtxFrame2;
    /* 0x18 */ Mtx projection;
    /* 0x58 */ Mtx modelView;
    /* 0x98 */ Mtx unk_98;
    /* 0xD8 */ Gfx* gfx; // "gfxtbl"
    /* 0xDC */ u16* zBuffer;
} TransitionTile; // size = 0xE0

typedef enum {
    /* 1 */ TRANS_INSTANCE_TYPE_FILL_OUT = 1,
    /* 2 */ TRANS_INSTANCE_TYPE_FILL_IN
} TransitionInstanceType;

typedef struct {
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

#define TRANS_INSTANCE_TYPE_FADE_FLASH 3

typedef struct {
    /* 0x000 */ u8 type;
    /* 0x001 */ u8 isDone;
    /* 0x002 */ u8 direction;
    /* 0x004 */ Color_RGBA8_u32 color;
    /* 0x008 */ u16 timer;
} TransitionFade; // size = 0xC

typedef enum {
    /* 0 */ TCA_NORMAL,
    /* 1 */ TCA_WAVE,
    /* 2 */ TCA_RIPPLE,
    /* 3 */ TCA_STARBURST
} TransitionCircleAppearance;

typedef enum {
    /* 0 */ TCC_BLACK,
    /* 1 */ TCC_WHITE,
    /* 2 */ TCC_GRAY,
    /* 3 */ TCC_SPECIAL // color varies depending on appearance. unused and appears broken
} TransitionCircleColor;

typedef enum {
    /* 0 */ TCS_FAST,
    /* 1 */ TCS_SLOW
} TransitionCircleSpeed;

typedef struct {
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
} TransitionCircle; // size = 0x228;

typedef struct {
    /* 0x000 */ Color_RGBA8_u32 color;
    /* 0x004 */ f32 transPos;
    /* 0x008 */ f32 step;
    /* 0x00C */ s32 state;
    /* 0x010 */ s32 type;
    /* 0x018 */ Mtx projection;
    /* 0x058 */ s32 frame;
    /* 0x060 */ Mtx modelView[2][3];
} TransitionTriforce; // size = 0x1E0;

#endif
