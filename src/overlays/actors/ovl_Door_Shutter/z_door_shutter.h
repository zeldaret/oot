#ifndef Z_DOOR_SHUTTER_H
#define Z_DOOR_SHUTTER_H

#include "ultra64.h"
#include "global.h"

/**
 * Actor Parameters
 *
 * |                  |         |
 * | Transition Index | Type    | Switch Flag
 * |------------------|---------|-------------
 * | 0 0 0 0 0 0      | 0 0 0 0 | 0 0 0 0 0 0
 * | 6                | 4       | 6
 * |
 *
 * Transition Index     1111110000000000    Set by the actor engine when the door is spawned
 * Type                 0000001111000000
 * Switch Flag          0000000000111111
 *
 */

#define DOORSHUTTER_GET_TYPE(actor) (((actor)->params >> 6) & 0xF)
#define DOORSHUTTER_GET_SWITCH_FLAG(actor) ((actor)->params & 0x3F)

#define DOORSHUTTER_PARAMS(type, switchFlag) ((((type) & 0xF) << 6) | ((switchFlag) & 0x3F))

typedef enum {
    /* 0x00 */ SHUTTER,
    /* 0x01 */ SHUTTER_FRONT_CLEAR,
    /* 0x02 */ SHUTTER_FRONT_SWITCH,
    /* 0x03 */ SHUTTER_BACK_LOCKED,
    /* 0x04 */ SHUTTER_PG_BARS,
    /* 0x05 */ SHUTTER_BOSS,
    /* 0x06 */ SHUTTER_GOHMA_BLOCK,
    /* 0x07 */ SHUTTER_FRONT_SWITCH_BACK_CLEAR,
    /* 0x0B */ SHUTTER_KEY_LOCKED = 11
} DoorShutterType;

struct DoorShutter;

typedef void (*DoorShutterActionFunc)(struct DoorShutter*, PlayState*);

typedef struct DoorShutter {
    /* 0x0000 */ SLIDING_DOOR_ACTOR_BASE;
    /* 0x0166 */ s16 jabuDoorClosedAmount; // Ranges from 0 (open) to 100 (closed)
    /* 0x0168 */ s16 bossDoorTexIndex;
    /* 0x016A */ u8 doorType;
    /* 0x016B */ u8 styleType;
    /* 0x016C */ u8 gfxType;
    /* 0x016D */ s8 requiredObjectSlot;
    /* 0x016E */ s8 unlockTimer; // non-0 if the door is locked, ticks down while the door is unlocking
    /* 0x016F */ s8 actionTimer;
    /* 0x0170 */ f32 barsClosedAmount; // Ranges from 0.0f (unbarred) to 1.0f (barred)
    /* 0x0174 */ DoorShutterActionFunc actionFunc;
} DoorShutter; // size = 0x0178

#endif
