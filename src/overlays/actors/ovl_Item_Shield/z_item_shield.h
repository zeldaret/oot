#ifndef Z_ITEM_SHIELD_H
#define Z_ITEM_SHIELD_H

#include "ultra64.h"
#include "actor.h"

struct ItemShield;

typedef void (*ItemShieldActionFunc)(struct ItemShield*, struct PlayState*);

typedef enum ItemShieldType {
    /* 0 */ ITEMSHIELD_TYPE_WALL,
    /* 1 */ ITEMSHIELD_TYPE_BURNED
} ItemShieldType;

typedef struct ItemShield {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinder collider;
    /* 0x0198 */ s16 shieldRotOscillation;
    /* 0x019A */ s16 timer;
    /* 0x019C */ s16 stateFlags;
    /* 0x019E */ u8 flameLifeTimer[8]; // For particle emitter, must be < 16
    /* 0x01A8 */ Vec3f flameParticlePos[8];
    /* 0x0208 */ ItemShieldActionFunc actionFunc;
} ItemShield; // size = 0x020C

#define ITEM_SHIELD_STATEFLAG_UNK  (1 << 0)
#define ITEM_SHIELD_STATEFLAG_DRAW (1 << 1)

#endif
