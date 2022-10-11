#ifndef QUAKE_H
#define QUAKE_H

#include "z64math.h"

struct Camera;

typedef struct {
    /* 0x00 */ Vec3f atOffset;
    /* 0x0C */ Vec3f eyeOffset;
    /* 0x18 */ s16 roll;
    /* 0x1A */ s16 yaw;
    /* 0x1C */ s16 zoom;
    /* 0x20 */ f32 max;
} QuakeCamData; // size = 0x24

// See `Quake_SetValue`
#define QUAKE_SPEED (1 << 0)
#define QUAKE_VERTICAL_MAG (1 << 1)
#define QUAKE_HORIZONTAL_MAG (1 << 2)
#define QUAKE_ZOOM (1 << 3)
#define QUAKE_ROLL_OFFSET (1 << 4)
#define QUAKE_SHAKE_PLANE_PITCH (1 << 5)
#define QUAKE_SHAKE_PLANE_YAW (1 << 6)
#define QUAKE_SHAKE_PLANE_ROLL (1 << 7) // Not used
#define QUAKE_COUNTDOWN (1 << 8)
#define QUAKE_IS_SHAKE_PERPENDICULAR (1 << 9)

typedef enum {
    /* 0 */ QUAKE_TYPE_NONE,
    /* 1 */ QUAKE_TYPE_1, // Periodic, sustaining, random X perturbations
    /* 2 */ QUAKE_TYPE_2, // Aperiodic, sustaining, random X perturbations
    /* 3 */ QUAKE_TYPE_3, // Periodic, decaying
    /* 4 */ QUAKE_TYPE_4, // Aperiodic, decaying, random X perturbations
    /* 5 */ QUAKE_TYPE_5, // Periodic, sustaining
    /* 6 */ QUAKE_TYPE_6 // Jump-Periodic, sustaining, reset period every 16 frames (jumps), random X perturbations
} QuakeType;

s16 Quake_Request(Camera* camera, u32 type);
u32 Quake_RemoveRequest(s16 index);

u32 Quake_SetSpeed(s16 index, s16 speed);
u32 Quake_SetDuration(s16 index, s16 duration);
s16 Quake_GetTimeLeft(s16 index);
u32 Quake_SetPerturbations(s16 index, s16 yOffset, s16 xOffset, s16 zoom, s16 roll);
u32 Quake_SetValue(s16 index, s16 valueType, s16 value);
u32 Quake_SetOrientation(s16 index, s16 isRelativeToScreen, Vec3s xOrientation);

void Quake_Init(void);
s16 Quake_ApplyToCamera(Camera* camera, QuakeCamData* camData);

#endif
