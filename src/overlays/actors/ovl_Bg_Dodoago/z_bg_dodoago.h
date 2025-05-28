#ifndef Z_BG_DODOAGO_H
#define Z_BG_DODOAGO_H

#include "ultra64.h"
#include "z64actor.h"

typedef enum BgDodoagoEye {
    /* 0 */ BGDODOAGO_EYE_LEFT,
    /* 1 */ BGDODOAGO_EYE_RIGHT
} BgDodoagoEye;

struct BgDodoago;

typedef void (*BgDodoagoActionFunc)(struct BgDodoago*, struct PlayState*);

typedef struct BgDodoago {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ s16 state; // BgDodoagoEye or a timer-like value
    /* 0x0168 */ ColliderCylinder mainCollider;  // Used to detect explosions for lighting the eyes
    /* 0x01B4 */ ColliderCylinder leftCollider;  // OC-colliding bombs have their xz speed cleared and timer set
    /* 0x0200 */ ColliderCylinder rightCollider; // same as colliderLeft
    /* 0x024C */ BgDodoagoActionFunc actionFunc;
} BgDodoago; // size = 0x0250

#endif
