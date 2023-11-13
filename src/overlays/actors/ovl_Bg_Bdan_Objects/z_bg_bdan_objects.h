#ifndef Z_BG_BDAN_OBJECTS_H
#define Z_BG_BDAN_OBJECTS_H

#include "ultra64.h"
#include "global.h"

struct BgBdanObjects;

typedef enum {
    BDAN_OBJECT_TYPE_BIG_OCTO_PLATFORM = 0,
    BDAN_OBJECT_TYPE_SMALL_AUTO_ELEVATOR = 1,
    BDAN_OBJECT_TYPE_WATERBOX_HEIGHT_CHANGER = 2,
    BDAN_OBJECT_TYPE_FALLING_PLATFORM = 3
} BgBdanObjectType;

typedef void (*BgBdanObjectsActionFunc)(struct BgBdanObjects*, PlayState*);

typedef struct BgBdanObjects {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgBdanObjectsActionFunc actionFunc;
    union {
    /* 0x0168 */ u8 switchFlag;
    /* 0x0168 */ u8 camChangeTimer;
    };
    /* 0x016A */ s16 timer;
    /* 0x016C */ ColliderCylinder collider;
    /* 0x01B8 */ s32 cameraSetting;
} BgBdanObjects; // size = 0x01BC

#endif
