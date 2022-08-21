#ifndef Z_DOOR_KILLER_H
#define Z_DOOR_KILLER_H

#include "ultra64.h"
#include "global.h"

/*
 * Associated switch flag: (params >> 8) & 0x3F
 * ((params >> 8) & 0x3F) == 0x3F means no switch flag is checked / set
 */

typedef struct {
    /* 0x00 */ s16 objectId;
    /* 0x04 */ void* texture;
} DoorKillerTextureEntry; // size 0x8

struct DoorKiller;

typedef void (*DoorKillerActionFunc)(struct DoorKiller*, PlayState*);

typedef struct DoorKiller {
    /* 0x0000 */ DOOR_ACTOR_BASE;
    /* 0x0192 */ Vec3s jointTable[9];
    /* 0x01C8 */ ColliderCylinder colliderCylinder;
    /* 0x0214 */ void* texture;
    /* 0x0218 */ u16 hasHitPlayerOrGround;
    /* 0x021A */ u16 timer;
    /* 0x021C */ u8 requiredObjectSlot;
    /* 0x021D */ u8 textureEntryIndex;
    /* 0x0220 */ ColliderJntSph colliderJntSph;
    /* 0x0240 */ ColliderJntSphElement colliderJntSphItems[1];
    /* 0x0280 */ DoorKillerActionFunc actionFunc;
} DoorKiller; // size = 0x0284

#endif
