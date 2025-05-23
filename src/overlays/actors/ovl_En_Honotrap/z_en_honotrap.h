#ifndef Z_EN_HONOTRAP_H
#define Z_EN_HONOTRAP_H

#include "ultra64.h"
#include "z64actor.h"

struct EnHonotrap;

typedef void (*EnHonotrapActionFunc)(struct EnHonotrap*, struct PlayState*);

typedef union EnHonotrapCollider {
    struct {
        /* 0x00 */ ColliderTris tris;
        /* 0x20 */ ColliderTrisElement elements[2];
    };
    /* 0x00 */ ColliderCylinder cyl;
} EnHonotrapCollider; // size = 0xD8

typedef struct EnHonotrap {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnHonotrapActionFunc actionFunc;
    /* 0x0150 */ EnHonotrapCollider collider;
    /* 0x0228 */ s16 timer;
    /* 0x022A */ s16 eyeState;
    /* 0x022C */ Vec3f targetPos;
    /* 0x0238 */ f32 speedMod;
    /* 0x023C */ s16 bobPhase;
    /* 0x023E */ s16 flameScroll;
    /* 0x0240 */ u8 colChkFlags;
} EnHonotrap; // size = 0x0244

typedef enum EnHonotrapType {
    HONOTRAP_TYPE_EYE,
    HONOTRAP_TYPE_FLAME_MOVE,
    HONOTRAP_TYPE_FLAME_DROP
} EnHonotrapType;

#endif
