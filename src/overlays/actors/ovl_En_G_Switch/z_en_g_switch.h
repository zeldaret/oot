#ifndef _Z_EN_G_SWITCH_H_
#define _Z_EN_G_SWITCH_H_

#include "ultra64.h"
#include "global.h"

struct EnGSwitch;

typedef void (*EnGSwitchActionFunc)(struct EnGSwitch*, GlobalContext*);

typedef enum {
    GSWITCH_NONE,
    GSWITCH_APPEAR,
    GSWITCH_THROW,
    GSWITCH_UNUSED,
    GSWITCH_LEFT,
    GSWITCH_RIGHT
} EnGSwitchMoveMode;

typedef enum {
    ENGSWITCH_SILVER_TRACKER,
    ENGSWITCH_SILVER_RUPEE,
    ENGSWITCH_ARCHERY_POT,
    ENGSWITCH_TARGET_RUPEE
} EnGSwitchType;

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
    /* 0x0152 */ s16 silverCount;
    /* 0x0154 */ s16 switchFlag;
    /* 0x0156 */ s16 killTimer;
    /* 0x0158 */ s16 colorIdx;
    /* 0x015A */ s16 broken;
    /* 0x015C */ s16 numEffects;
    /* 0x015E */ s16 objNum; 
    /* 0x0160 */ s16 index; // first or second rupee in two-rupee patterns
    /* 0x0162 */ s16 delayTimer; // delay between the two blue rupees appearing
    /* 0x0164 */ s16 waitTimer; // time rupee waits before retreating
    /* 0x0166 */ s16 moveMode; // Type of movement in the shooting gallery
    /* 0x0168 */ s16 moveState; // Appear or retreat (for blue rupees and the stationary green one)
    /* 0x016A */ s16 pitchIndex;
    /* 0x016C */ Vec3f targetPos;
    /* 0x0178 */ s8 objIndex;
    /* 0x017C */ ColliderCylinder collider;
    /* 0x01C8 */ EnGSwitchEffect effects[100];
} EnGSwitch; // size = 0x12F8

extern const ActorInit En_G_Switch_InitVars;

#endif
