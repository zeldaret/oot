#ifndef Z_OBJ_SWITCH_H
#define Z_OBJ_SWITCH_H

#include "ultra64.h"
#include "global.h"

struct ObjSwitch;

typedef void (*ObjSwitchActionFunc)(struct ObjSwitch*, GlobalContext*);

typedef enum {
    /* 0 */ OBJSWITCH_TYPE_FLOOR,
    /* 1 */ OBJSWITCH_TYPE_FLOOR_RUSTY,
    /* 2 */ OBJSWITCH_TYPE_EYE,
    /* 3 */ OBJSWITCH_TYPE_CRYSTAL,
    /* 4 */ OBJSWITCH_TYPE_CRYSTAL_TARGETABLE
} ObjSwitchType;

typedef enum {
    /* 0 */ OBJSWITCH_SUBTYPE_FLOOR_NORMAL,     // Normal Yellow Switch
    /* 1 */ OBJSWITCH_SUBTYPE_FLOOR_TOGGLE,     // On/Off Red Switch
    /* 2 */ OBJSWITCH_SUBTYPE_FLOOR_RESET_OFF,  // Reset when not stood on, blue switch (default state: off)
    /* 3 */ OBJSWITCH_SUBTYPE_FLOOR_RESET_ON    // Reset when not stood on, blue switch (default state: on)
} ObjSwitchSubTypeFloor;

typedef enum {
    /* 0 */ OBJSWITCH_SUBTYPE_EYE_NORMAL,       // Normal Yellow Eye
    /* 1 */ OBJSWITCH_SUBTYPE_EYE_TOGGLE        // On/Off Grey Eye
} ObjSwitchSubTypeEye;

typedef enum {
    /* 0 */ OBJSWITCH_SUBTYPE_CRYSTAL_NORMAL,   // Normal
    /* 1 */ OBJSWITCH_SUBTYPE_CRYSTAL_TOGGLE,   // On/Off Blue/Red Crystal
    /* 4 */ OBJSWITCH_SUBTYPE_CRYSTAL_TIED = 4  // Tied to Switch Flag's State
} ObjSwitchSubTypeCrystal;

typedef struct {
    /* 0x00 */ ColliderJntSph col;
    /* 0x20 */ ColliderJntSphElement items[2];
} ObjSwitchJntSph;

typedef struct {
    /* 0x00 */ ColliderTris col;
    /* 0x20 */ ColliderTrisElement items[2];
} ObjSwitchTris;

typedef struct ObjSwitch {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ObjSwitchActionFunc actionFunc;
    /* 0x0168 */ s16 releaseTimer; // used for SUBTYPE_FLOOR_RESET_OFF and SUBTYPE_FLOOR_RESET_ON
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
    /* 0x017F */ u8 unk_17F;
    union {
        /* 0x0180 */ ObjSwitchJntSph jntSph;
        /* 0x0180 */ ObjSwitchTris tris;
    };
} ObjSwitch; // size = 0x0258

#endif
