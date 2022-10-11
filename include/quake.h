#ifndef QUAKE_H
#define QUAKE_H

#include "z64math.h"

struct Camera;

typedef struct {
    /* 0x00 */ Vec3f atOffset;
    /* 0x0C */ Vec3f eyeOffset;
    /* 0x18 */ s16 rollFromPitch; // gives a "roll" effect by offsetting the Up vector
    /* 0x1A */ s16 rollFromYaw; // gives a "roll" effect by offsetting the Up vector
    /* 0x1C */ s16 fov; // in binang
    /* 0x20 */ f32 max;
} QuakeCamData; // size = 0x24

typedef enum {
    /* 0 */ QUAKE_TYPE_NONE,
    /* 1 */ QUAKE_TYPE_1, // Periodic, sustaining, random X perturbations
    /* 2 */ QUAKE_TYPE_2, // Aperiodic, sustaining, random X perturbations
    /* 3 */ QUAKE_TYPE_3, // Periodic, decaying
    /* 4 */ QUAKE_TYPE_4, // Aperiodic, decaying, random X perturbations
    /* 5 */ QUAKE_TYPE_5, // Periodic, sustaining
    /* 6 */ QUAKE_TYPE_6 // Jump-Periodic, sustaining, random X perturbations, reset period every 16 frames (jumps, similar to sawtooth)
} QuakeType;

s16 Quake_Request(Camera* camera, u32 type);

u32 Quake_SetSpeed(s16 index, s16 speed);
u32 Quake_SetDuration(s16 index, s16 duration);
u32 Quake_SetPerturbations(s16 index, s16 yOffset, s16 xOffset, s16 fov, s16 roll);
u32 Quake_SetOrientation(s16 index, s16 isRelativeToScreen, Vec3s xOrientation);

s16 Quake_GetTimeLeft(s16 index);
u32 Quake_RemoveRequest(s16 index);

void Quake_Init(void);
s16 Quake_Update(Camera* camera, QuakeCamData* camData);

#endif
