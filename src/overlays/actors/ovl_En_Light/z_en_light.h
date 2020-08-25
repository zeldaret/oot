#ifndef _Z_EN_LIGHT_H_
#define _Z_EN_LIGHT_H_

#include <ultra64.h>
#include <global.h>

struct EnLight;

typedef struct EnLight {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ u8 timer;
    /* 0x0150 */ z_Light* lightNode;
    /* 0x0154 */ LightInfoPositional posLightInfo;
} EnLight; // size = 0x0164

extern const ActorInit En_Light_InitVars;

#endif
