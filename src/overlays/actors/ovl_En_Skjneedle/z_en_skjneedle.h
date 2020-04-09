#ifndef _Z_EN_SKJNEEDLE_H_
#define _Z_EN_SKJNEEDLE_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x48];
    /* 0x0194 */ ColliderCylinderMain collider;
    /* 0x01E0 */ char unk_1E0[0x08];
} EnSkjneedle; // size = 0x01E8

extern const ActorInit En_Skjneedle_InitVars;

#endif
