#ifndef Z_OBJ_SWITCH_H
#define Z_OBJ_SWITCH_H

#include "ultra64.h"
#include "global.h"

struct ObjSwitch;

typedef void (*ObjSwitchActionFunc)(struct ObjSwitch*, PlayState*);

typedef enum {
    /* 0 */ OBJSWITCH_TYPE_FLOOR,
    /* 1 */ OBJSWITCH_TYPE_FLOOR_RUSTY,
    /* 2 */ OBJSWITCH_TYPE_EYE,
    /* 3 */ OBJSWITCH_TYPE_CRYSTAL,
    /* 4 */ OBJSWITCH_TYPE_CRYSTAL_TARGETABLE
} ObjSwitchType;

typedef enum {
    /* 0 */ OBJSWITCH_SUBTYPE_ONCE,             // Switches that can only be turned on (On -> Flag Set)
    /* 1 */ OBJSWITCH_SUBTYPE_TOGGLE,           // Switches that can be turned on and off (On -> Flag Set, Off -> Flag Cleared)
    /* 2 */ OBJSWITCH_SUBTYPE_HOLD,             // Floor Types only, released when not stood on (Down -> Flag Set, Up -> Flag Cleared)
    /* 3 */ OBJSWITCH_SUBTYPE_HOLD_INVERTED,    // Floor Types only, unused, inverted Switch Flag behavior (Down -> Flag Cleared, Up -> Flag Set)
    /* 4 */ OBJSWITCH_SUBTYPE_SYNC              // Crystal Types only, syncs with the Switch Flag (On -> Flag Set, Off -> Flag Cleared)
} ObjSwitchSubType;

typedef struct {
    /* 0x00 */ ColliderJntSph col;
    /* 0x20 */ ColliderJntSphElement items[1];
} ObjSwitchJntSph;

typedef struct {
    /* 0x00 */ ColliderTris col;
    /* 0x20 */ ColliderTrisElement items[2];
} ObjSwitchTris;

typedef struct ObjSwitch {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ObjSwitchActionFunc actionFunc;
    /* 0x0168 */ s16 releaseTimer; // used for SUBTYPE_HOLD and SUBTYPE_HOLD_INVERTED
    /* 0x016A */ s16 disableAcTimer;
    /* 0x016C */ s16 cooldownTimer;
    /* 0x016E */ u8 cooldownOn;
    /* 0x0170 */ s16 eyeTexIndex;
    /* 0x0174 */ void* crystalSubtype1texture;
    /* 0x0178 */ u8 x1TexScroll;
    /* 0x0179 */ u8 y1TexScroll;
    /* 0x017A */ u8 x2TexScroll;
    /* 0x017B */ u8 y2TexScroll;
    /* 0x017C */ Color_RGB8 crystalColor;
    /* 0x017F */ u8 prevColFlags; // Either dynapoly interact flags or AC flags, of the previous frame
    union {
        /* 0x0180 */ ObjSwitchJntSph jntSph;
        /* 0x0180 */ ObjSwitchTris tris;
    };
} ObjSwitch; // size = 0x0258

#endif
