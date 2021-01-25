#ifndef _Z_MAGIC_FIRE_H_
#define _Z_MAGIC_FIRE_H_

#include "ultra64.h"
#include "global.h"

struct MagicFire;

typedef struct MagicFire {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinder collider;
    /* 0x0198 */ f32 unk198;
    /* 0x019C */ f32 unk19C;
    /* 0x01A0 */ f32 unk1A0;
    /* 0x01A4 */ s16 unk1A4;
    /* 0x01A6 */ s16 unk1A6;
    /* 0x01A8 */ s16 unk1A8;
    /* 0x01AA */ s16 unk1AA;
} MagicFire; // size = 0x01AC

extern const ActorInit Magic_Fire_InitVars;

#endif
