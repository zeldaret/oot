#ifndef _Z_EFF_SS_FHGFLASH_h_
#define _Z_EFF_SS_FHGFLASH_h_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ Vec3f velocity;
    /* 0x18 */ Vec3f accel;
    /* 0x24 */ s16 scale;
    /* 0x26 */ u8 param;
    /* 0x28 */ Actor* actor;
    /* 0x2C */ u8 type;
} EffectSsFhgFlashInitParams; // size = 0x30

typedef enum {
    /* 0x00 */ FHGFLASH_LIGHTBALL,
    /* 0x01 */ FHGFLASH_LIGHTNING
} FhgFlashType;

typedef enum {
    /* 0x00 */ FHGFLASH_LIGHTBALL_,
} FhgFlashLightBallParam;

typedef enum {
    /* 0x00 */ FHGFLASH_LIGHTNING_NO_ACTOR,
    /* 0x01 */ FHGFLASH_LIGHTNING_PLAYER,
    /* 0x02 */ FHGFLASH_LIGHTNING_PG
} FhgFlashLightningParam;



#endif
