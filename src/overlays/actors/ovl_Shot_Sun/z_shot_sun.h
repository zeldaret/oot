#ifndef _Z_SHOT_SUN_H_
#define _Z_SHOT_SUN_H_

#include <ultra64.h>
#include <global.h>

struct ShotSun;

typedef void (*ShotSunActionFunc)(struct ShotSun*, GlobalContext*);

typedef struct ShotSun {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinder collider;
    /* 0x0198 */ ShotSunActionFunc actionFunc;
    /* 0x019C */ Vec3s unk_19C;
    /* 0x01A2 */ s16 spawnTimer; // Frames until fairy spawns
    /* 0x01A4 */ char unk_1A4[4];
} ShotSun; // size = 0x01A8

extern const ActorInit Shot_Sun_InitVars;

#endif
