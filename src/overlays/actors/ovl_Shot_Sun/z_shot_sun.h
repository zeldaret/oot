#ifndef Z_SHOT_SUN_H
#define Z_SHOT_SUN_H

#include "ultra64.h"
#include "z64actor.h"

struct ShotSun;

typedef void (*ShotSunActionFunc)(struct ShotSun*, struct PlayState*);

typedef struct ShotSun {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinder collider;
    /* 0x0198 */ ShotSunActionFunc actionFunc;
    /* 0x019C */ Vec3s hitboxPos;
    /* 0x01A2 */ s16 timer; // Frames until fairy spawns
    /* 0x01A4 */ u8 fairySpawnerState;
} ShotSun; // size = 0x01A8

#endif
