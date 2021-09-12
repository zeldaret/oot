#ifndef _Z_OBJECT_KANKYO_H_
#define _Z_OBJECT_KANKYO_H_

#include "ultra64.h"
#include "global.h"

struct ObjectKankyo;

typedef void (*ObjectKankyoActionFunc)(struct ObjectKankyo*, GlobalContext*);

typedef struct ObjectKankyoEffect {
    /*  0x0 */ u8 state;
    /*  0x4 */ Vec3f pos;   // relative to base
    /* 0x10 */ Vec3f lastPos;
    /* 0x1C */ Vec3f base;
    /* 0x28 */ Vec3f dirPhase; // input to sinf for movement
    /* 0x34 */ f32 speed;
    /* 0x38 */ f32 targetSpeed;
    /* 0x3C */ u16 alphaTimer;
    /* 0x3E */ u16 angle;
    /* 0x40 */ u8 alpha;
    /* 0x44 */ f32 size;
    /* 0x48 */ u16 angleVel;
    /* 0x4A */ u16 flightRadius;
    /* 0x4C */ f32 amplitude;
    /* 0x50 */ u16 timer;
} ObjectKankyoEffect; // size = 0x54

typedef struct ObjectKankyo {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ObjectKankyoEffect effects[64];
    /* 0x164C */ Vec3f lastEyePos;
    /* 0x1658 */ u8 demoObjectIndex;
    /* 0x1659 */ u8 demoObjectLoaded;
    /* 0x165C */ ObjectKankyoActionFunc actionFunc;
} ObjectKankyo; // size = 0x1660

#endif
