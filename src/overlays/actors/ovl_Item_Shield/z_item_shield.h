#ifndef Z_ITEM_SHIELD_H
#define Z_ITEM_SHIELD_H

#include "ultra64.h"
#include "global.h"

#define ITEMSHIELD_FLAME_COUNT 8

typedef enum {
    /* 0 */ ITEMSHIELD_TYPE_COLLECTIBLE,
    /* 1 */ ITEMSHIELD_TYPE_BURNING
} ItemShieldType;

struct ItemShield;

typedef void (*ItemShieldActionFunc)(struct ItemShield*, PlayState*);


typedef struct ItemShield {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinder collider;
    /* 0x0198 */ s16 pitchSpeed;
    /* 0x019A */ s16 timer;
    /* 0x019C */ s16 stateFlags;
    /* 0x019E */ u8 flameTypes[ITEMSHIELD_FLAME_COUNT];
    /* 0x01A8 */ Vec3f flameBasePoss[ITEMSHIELD_FLAME_COUNT];
    /* 0x0208 */ ItemShieldActionFunc actionFunc;
} ItemShield; // size = 0x020C

#endif
