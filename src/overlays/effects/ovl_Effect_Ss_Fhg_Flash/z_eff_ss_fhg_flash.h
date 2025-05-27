#ifndef Z_EFF_SS_FHGFLASH_H
#define Z_EFF_SS_FHGFLASH_H

#include "ultra64.h"
#include "z64math.h"

struct Actor;

typedef struct EffectSsFhgFlashInitParams {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ Vec3f velocity;
    /* 0x18 */ Vec3f accel;
    /* 0x24 */ s16 scale;
    /* 0x26 */ u8 param;
    /* 0x28 */ struct Actor* actor;
    /* 0x2C */ u8 type;
} EffectSsFhgFlashInitParams; // size = 0x30

typedef enum FhgFlashType {
    /* 0x00 */ FHGFLASH_LIGHTBALL,
    /* 0x01 */ FHGFLASH_SHOCK
} FhgFlashType;

typedef enum FhgFlashLightBallParam {
    /* 0x00 */ FHGFLASH_LIGHTBALL_GREEN,
    /* 0x01 */ FHGFLASH_LIGHTBALL_LIGHTBLUE,
    /* 0x02 */ FHGFLASH_LIGHTBALL_RED,
    /* 0x03 */ FHGFLASH_LIGHTBALL_YELLOW,
    /* 0x04 */ FHGFLASH_LIGHTBALL_BLUE,
    /* 0x05 */ FHGFLASH_LIGHTBALL_PURPLE,
    /* 0x06 */ FHGFLASH_LIGHTBALL_ORANGE,
    /* 0x07 */ FHGFLASH_LIGHTBALL_WHITE1,
    /* 0x08 */ FHGFLASH_LIGHTBALL_WHITE2
} FhgFlashLightBallParam;

typedef enum FhgFlashLightningParam {
    /* 0x00 */ FHGFLASH_SHOCK_NO_ACTOR, // Don't attach to any actor. Stays at a fixed position.
    /* 0x01 */ FHGFLASH_SHOCK_PLAYER,   // Move to a random Player body part every frame.
    /* 0x02 */ FHGFLASH_SHOCK_PG        // Move to a random Phantom Ganon body part every frame.
} FhgFlashLightningParam;

#endif
