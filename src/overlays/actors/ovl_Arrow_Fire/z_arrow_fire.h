#ifndef _Z_ARROW_FIRE_H_
#define _Z_ARROW_FIRE_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ Vec3f translatedPos;
    /* 0x0158 */ f32 unk_158;
    /* 0x015C */ f32 unk_15C;
    /* 0x0160 */ ActorFunc actionFunc;
    /* 0x0164 */ s16 fireRadius;
    /* 0x0166 */ u16 timer;
    /* 0x0168 */ u8 opacity;
} ArrowFire; // size = 0x016C

extern const ActorInit Arrow_Fire_InitVars;

#endif
