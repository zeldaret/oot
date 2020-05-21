#ifndef _Z_BG_DDAN_KD_H_
#define _Z_BG_DDAN_KD_H_

#include <ultra64.h>
#include <global.h>

struct BgDdanKd;

typedef void (*BgDdanKdActionFunc)(struct BgDdanKd*, GlobalContext*);

typedef struct BgDdanKd {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ Actor* previousCollidingExplosion;
    /* 0x0168 */ s16 timer;
    /* 0x016C */ Vec3f previousCollidingExplosionPos;
    /* 0x0178 */ ColliderCylinder collider;
    /* 0x01C4 */ BgDdanKdActionFunc actionFunc;
} BgDdanKd; // size = 0x01C8

extern const ActorInit Bg_Ddan_Kd_InitVars;

#endif
