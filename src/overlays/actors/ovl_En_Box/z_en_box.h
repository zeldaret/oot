#ifndef _Z_EN_BOX_H_
#define _Z_EN_BOX_H_

#include <ultra64.h>
#include <global.h>

#define ENBOX_TREASURE_FLAG_UNK_MIN 20
#define ENBOX_TREASURE_FLAG_UNK_MAX 32

struct EnBox;

typedef void (*EnBoxActionFunc)(struct EnBox*, GlobalContext*);

typedef enum {
    /*
     set on init unless treasure flag is set
     if clear, chest moves (Actor_MoveForward) (falls, likely)
     ends up cleared from SWITCH_FLAG_FALL types when switch flag is set
    */
    ENBOX_STATE_IMMOBILE = 1 << 0,
    /*
     set in the logic for SWITCH_FLAG_FALL types
     otherwise unused
    */
    ENBOX_STATE_UNUSED = 1 << 1,
    /*
     set with 50% chance on init for SWITCH_FLAG_FALL types
     only used for SWITCH_FLAG_FALL types
     ends up "blinking" (set/clear every frame) once switch flag is set,
        if some collision-related condition (?) is met
     only used for signum of z rotation
    */
    ENBOX_STATE_FALL_ANGLE_SIDE = 1 << 2,
    /*
     when set, is cleared next EnBox_Update call and clip to the floor
    */
    ENBOX_STATE_FLAG_STICK_TO_GROUND_NEXT_FRAME = 1 << 4
} EnBox_MovementFlags;

typedef enum {
    /*
    only values 1-11 are used explicitly, other values (like 0) default to another separate behavior
    */
    /*  0 */ ENBOX_TYPE_BIG_DEFAULT,
    /*  1 */ ENBOX_TYPE_ROOM_CLEAR_BIG,         // appear on room clear, store temp clear as permanent clear
    /*  2 */ ENBOX_TYPE_DECORATED_BIG,          // boss key chest, different look, same as ENBOX_TYPE_BIG_DEFAULT otherwise
    /*  3 */ ENBOX_TYPE_SWITCH_FLAG_FALL_BIG,   // falling, appear on switch flag set
    /*  4 */ ENBOX_TYPE_4,                      // big, drawn differently
    /*  5 */ ENBOX_TYPE_SMALL,                  // same as ENBOX_TYPE_BIG_DEFAULT but small
    /*  6 */ ENBOX_TYPE_6,                      // small, drawn differently
    /*  7 */ ENBOX_TYPE_ROOM_CLEAR_SMALL,       // use room clear, store temp clear as perm clear
    /*  8 */ ENBOX_TYPE_SWITCH_FLAG_FALL_SMALL, // falling, appear on switch flag set
    /*  9 */ ENBOX_TYPE_9,                      // big, has something more to do with player and message context?
    /* 10 */ ENBOX_TYPE_10,                     // like 9
    /* 11 */ ENBOX_TYPE_SWITCH_FLAG_BIG         // big, appear on switch flag set
} EnBox_Type;

typedef enum {
    ENBOX_STATE_0,// waiting for player near / player available / player ? (IDLE)
    ENBOX_STATE_1,// used only temporarily, maybe "player is ready" ?
    ENBOX_STATE_2 // waiting for something message context-related
} EnBox_State1FB;

typedef struct EnBox {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ SkelAnime skelanime;
    /*
     initialized in init for types 3 and 8
     linked to different animation delays
    */
    /* 0x01A8 */ s32 unk1A8;
    /* 0x01AC */ s32 unk_1AC;
    /* 0x01B0 */ f32 unk1B0; // 0-1, rotation-related, apparently unused (in z_en_box.c at least)
    /* 0x01B4 */ EnBoxActionFunc actionFunc;
    /* 0x01B8 */ Vec3s limbDrawTable[5];
    /* 0x01D6 */ Vec3s transitionDrawTable[5];
    /* 0x01F4 */ s16 unk1F4;       // probably a frame count? used but never initialized!
    /* 0x01F6 */ u8 movementFlags; // movement behavior, see EnBox_MovementFlags for values
    /* 0x01F7 */ u8 alpha;         // transparency (255 opaque)
    /* 0x01F8 */ u8 switchFlag;    // switch flag to make the chest appear (for SWITCH_FLAG types)
    /* 0x01F9 */ u8 type;          // size/behavior, see EnBox_Type for values
    /* 0x01FA */ u8 unk1FA; // amount of frames some effect has been played (ice trap?)
                            // (set to 0 in init, 100 if treasure flag is set), 0-100
    /* 0x01FB */ u8 unk1FB_state; // see EnBox_State1FB
} EnBox; // size = 0x01FC

extern const ActorInit En_Box_InitVars;

#endif
