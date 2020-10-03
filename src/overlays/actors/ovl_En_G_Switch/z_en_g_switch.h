#ifndef _Z_EN_G_SWITCH_H_
#define _Z_EN_G_SWITCH_H_

#include "ultra64.h"
#include "global.h"

struct EnGSwitch;

typedef struct EnGSwitch {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x11AC];
} EnGSwitch; // size = 0x12F8

extern const ActorInit En_G_Switch_InitVars;

#endif
