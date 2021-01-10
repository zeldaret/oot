#ifndef _Z_EN_TRAP_H_
#define _Z_EN_TRAP_H_

#include "ultra64.h"
#include "global.h"

typedef enum {
    SPIKETRAP_LINEAR = 0x10,
    SPIKETRAP_CIRCULAR = 0x20,
    SPIKETRAP_FOUR_WAY = 0x30
} EnTrap_Mode;

typedef enum {
    SPIKETRAP_FWD_ALLOWED = 1,
    SPIKETRAP_BACK_ALLOWED = 2,
    SPIKETRAP_LEFT_ALLOWED = 4,
    SPIKETRAP_RIGHT_ALLOWED = 8
} EnTrap_FourWayDirs;

struct EnTrap;

typedef struct EnTrap {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ s32 playerDmgTimer;
    /* 0x0150 */ s16 upperParams;
    /* 0x0152 */ s16 genericVar1;
    /* 0x0154 */ f32 genericVar2;
    /* 0x0158 */ Vec3f targetPosLeft;
    /* 0x0164 */ Vec3f targetPosRight;
    /* 0x0170 */ Vec3f targetPosFwd;
    /* 0x017C */ Vec3f targetPosBack;
    /* 0x0188 */ Vec3f moveSpeedLeftRight;
    /* 0x0194 */ Vec3f moveSpeedForwardBack;
    /* 0x01A0 */ ColliderCylinder collider;
} EnTrap; // size = 0x01EC

extern const ActorInit En_Trap_InitVars;

#endif
