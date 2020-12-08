#ifndef _Z_EN_G_SWITCH_H_
#define _Z_EN_G_SWITCH_H_

#include "ultra64.h"
#include "global.h"

struct EnGSwitch;

typedef void (*EnGSwitchActionFunc)(struct EnGSwitch*, GlobalContext*);

typedef struct {
    /* 0x00 */ Vec3f pos;
    /* 0x00 */ s16 scale;
    /* 0x00 */ s16 timer;
    /* 0x00 */ s16 colorIdx;
    /* 0x00 */ u8 flag;
    /* 0x00 */ Vec3f velocity;
    /* 0x00 */ Vec3f rot;
} EnGSwitchEffect; // size = 0x2C

typedef struct EnGSwitch {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnGSwitchActionFunc actionFunc;
    /* 0x0150 */ s16 type;
    /* 0x0152 */ s16 rupeeCount;
    /* 0x0154 */ s16 switchFlag;
    /* 0x0156 */ s16 killTimer;
    /* 0x0158 */ s16 colorIdx;
    /* 0x015A */ s16 broken;
    /* 0x015C */ s16 numEffects;
    /* 0x015E */ s16 objNum;
    /* 0x0160 */ s16 unk_160;
    /* 0x0162 */ s16 unk_162;
    /* 0x0164 */ s16 unk_164;
    /* 0x0166 */ s16 unk_166;
    /* 0x0168 */ s16 unk_168;
    /* 0x016A */ s16 pitchIndex;
    /* 0x016C */ Vec3f unk_16C;
    /* 0x0178 */ s8 objIndex;
    /* 0x017C */ ColliderCylinder collider;
    /* 0x01C8 */ EnGSwitchEffect effects[100];
} EnGSwitch; // size = 0x12F8

extern const ActorInit En_G_Switch_InitVars;

#endif
