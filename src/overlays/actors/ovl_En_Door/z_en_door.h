#ifndef Z_EN_DOOR_H
#define Z_EN_DOOR_H

#include "ultra64.h"
#include "z64actor.h"

/**
 * Actor Parameters
 *
 * |                  |       |             |
 * | Transition Index | Type  | Double Door | Switch Flag OR Text Id - 0x0200
 * |------------------|-------|-------------|---------------------------------
 * | 0 0 0 0 0 0      | 0 0 0 | 0           | 0 0 0 0 0 0
 * | 6                | 3     | 1           | 6
 * |
 *
 * Transition Index     1111110000000000    Set by the actor engine when the door is spawned
 * Type                 0000001110000000
 * Double Door          0000000001000000
 * Switch Flag          0000000000111111    For use with the `DOOR_LOCKED` type
 * Text id - 0x0200     0000000000111111    For use with the `DOOR_CHECKABLE` type
 *
 */

#define ENDOOR_PARAMS_TYPE_SHIFT                7
#define ENDOOR_PARAMS_TYPE_MASK                 PARAMS_MAKE_MASK(7, 3)
#define ENDOOR_GET_TYPE(thisx)                  PARAMS_GET_U((thisx)->params, 7, 3)

#define ENDOOR_PARAMS_IS_DOUBLE_DOOR_MASK       PARAMS_MAKE_MASK(6, 1)
#define ENDOOR_GET_IS_DOUBLE_DOOR(thisx)        PARAMS_GET_NOSHIFT((thisx)->params, 6, 1)

#define ENDOOR_GET_LOCKED_SWITCH_FLAG(thisx)    PARAMS_GET_U((thisx)->params, 0, 6)

#define ENDOOR_GET_CHECKABLE_TEXT_ID(thisx)     PARAMS_GET_U((thisx)->params, 0, 6)

typedef enum EnDoorType {
    /* 0x00 */ DOOR_ROOMLOAD,  // loads rooms
    /* 0x01 */ DOOR_LOCKED,    // small key locked door
    /* 0x02 */ DOOR_ROOMLOAD2, // loads rooms
    /* 0x03 */ DOOR_SCENEEXIT, // doesn't load rooms, used for doors paired with scene transition polygons
    /* 0x04 */ DOOR_AJAR,      // open slightly but slams shut if Link gets too close
    /* 0x05 */ DOOR_CHECKABLE, // doors that display a textbox when interacting
    /* 0x06 */ DOOR_EVENING,   // unlocked between 18:00 and 21:00, Dampé's hut
    /* 0x07 */ DOOR_ROOMLOAD7  // loads rooms
} EnDoorType;

struct EnDoor;

typedef void (*EnDoorActionFunc)(struct EnDoor*, struct PlayState*);

typedef struct EnDoor {
    /* 0x0000 */ DOOR_ACTOR_BASE;
    /* 0x0192 */ u8 unk_192;
    /* 0x0193 */ s8 requiredObjectSlot;
    /* 0x0194 */ s8 dListIndex;
    /* 0x0196 */ s16 lockTimer;
    /* 0x0198 */ Vec3s jointTable[5];
    /* 0x01B6 */ Vec3s morphTable[5];
    /* 0x01D4 */ EnDoorActionFunc actionFunc;
} EnDoor; // size = 0x01D8

#endif
