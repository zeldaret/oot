#ifndef Z_EN_WOOD02_H
#define Z_EN_WOOD02_H

#include "ultra64.h"
#include "actor.h"

/*
 * EnWood02 params
 *
 * EnWood02 takes params from its params 0xPPTT and its Z rotation 0xZZ.
 * 0xTT is the type, see the `WoodType` enum.
 *
 * If 0xZZ is zero:
 *  0xPP is the drop table for the random collectible gotten when bonking the tree or going through the bush,
 *  see the `CollectibleDropTable` enum.
 *  0xPP can be 0xFF to indicate no collectible to be dropped.
 *
 * If 0xZZ is non-zero (only allowed for trees, types `WOOD_TREE_*`):
 *  The tree spawns a Skulltula (EnSw) when bonked, with params `(0xZZPP & 0x1FFF) | 0xE000`.
 *  (TODO more details once EnSw params are documented)
 */

#define ENWOOD02_DATA_SHIFT 8
#define ENWOOD02_GET_DATA(thisx) PARAMS_GET_U((thisx)->params, 8, 8)
#define ENWOOD02_GET_TYPE(thisx) PARAMS_GET_U((thisx)->params, 0, 8)

#define ENWOOD02_PARAMS_DATA_PRESHIFTED(type, dataPreShifted) (s16)((dataPreShifted) | (type))
#define ENWOOD02_PARAMS(type, data) ENWOOD02_PARAMS_DATA_PRESHIFTED(type, (data) << 8)
#define ENWOOD02_PARAMS_NODATA(type) ENWOOD02_PARAMS(type, 0xFF)

struct EnWood02;

#define ENWOOD02_SPAWNED_CHILD_INDEX(this) (this)->spawnedChildrenFlags[0]
#define ENWOOD02_LEAF_TIMER(this) (this)->spawnedChildrenFlags[0]

typedef struct EnWood02 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ s16 stateVar;
    /* 0x014E */ u8 spawnedChildrenFlags[5]; // Named after the use by spawner instances, but also used by spawned and leaf instances (see `SPAWNED_CHILD_WOOD_INDEX` and `ENWOOD02_LEAF_TIMER`)
    /* 0x0153 */ u8 spawnType;
    /* 0x0154 */ u8 drawType;
    /* 0x0158 */ ColliderCylinder collider;
} EnWood02; // size = 0x01A4

// Types with SPAWNED in the name are those that can be managed by a spawner, however the actor allows you to spawn them
// on their own without a spawner as well.
typedef enum WoodType {
    /* 0x00 */ WOOD_TREE_CONICAL_LARGE,
    /* 0x01 */ WOOD_TREE_CONICAL_MEDIUM,
    /* 0x02 */ WOOD_TREE_CONICAL_SMALL,
    /* 0x03 */ WOOD_TREE_CONICAL_SPAWNER,
    /* 0x04 */ WOOD_TREE_CONICAL_SPAWNED,
    /* 0x05 */ WOOD_TREE_OVAL_GREEN,
    /* 0x06 */ WOOD_TREE_OVAL_YELLOW_SPAWNER,
    /* 0x07 */ WOOD_TREE_OVAL_YELLOW_SPAWNED,
    /* 0x08 */ WOOD_TREE_OVAL_GREEN_SPAWNER,
    /* 0x09 */ WOOD_TREE_OVAL_GREEN_SPAWNED,
    /* 0x0A */ WOOD_TREE_KAKARIKO_ADULT,
    /* 0x0B */ WOOD_BUSH_GREEN_SMALL,
    /* 0x0C */ WOOD_BUSH_GREEN_LARGE,
    /* 0x0D */ WOOD_BUSH_GREEN_SMALL_SPAWNER,
    /* 0x0E */ WOOD_BUSH_GREEN_SMALL_SPAWNED,
    /* 0x0F */ WOOD_BUSH_GREEN_LARGE_SPAWNER,
    /* 0x10 */ WOOD_BUSH_GREEN_LARGE_SPAWNED,
    /* 0x11 */ WOOD_BUSH_BLACK_SMALL,
    /* 0x12 */ WOOD_BUSH_BLACK_LARGE,
    /* 0x13 */ WOOD_BUSH_BLACK_SMALL_SPAWNER,
    /* 0x14 */ WOOD_BUSH_BLACK_SMALL_SPAWNED,
    /* 0x15 */ WOOD_BUSH_BLACK_LARGE_SPAWNER,
    /* 0x16 */ WOOD_BUSH_BLACK_LARGE_SPAWNED,
    /* 0x17 */ WOOD_LEAF_GREEN,
    /* 0x18 */ WOOD_LEAF_YELLOW
} WoodType;

#endif
