#ifndef Z_BG_BDAN_OBJECTS_H
#define Z_BG_BDAN_OBJECTS_H

#include "ultra64.h"
#include "global.h"

struct BgBdanObjects;

typedef enum {
    JABU_OBJECTS_TYPE_BIG_OCTO_PLATFORM,
    JABU_OBJECTS_TYPE_SMALL_AUTO_ELEVATOR,
    JABU_OBJECTS_TYPE_WATERBOX_HEIGHT_CHANGER,
    JABU_OBJECTS_TYPE_FALLING_PLATFORM
} BgBdanObjectsType;

typedef void (*BgBdanObjectsActionFunc)(struct BgBdanObjects*, PlayState*);

typedef struct BgBdanObjects {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgBdanObjectsActionFunc actionFunc;
    union {
        /* 0x0168 */ u8 switchFlag;
        /* 0x0168 */ u8 camChangeTimer;
    } var;
    /* 0x016A */ s16 timer;
    /* 0x016C */ ColliderCylinder collider;
    /* 0x01B8 */ s32 cameraSetting;
} BgBdanObjects; // size = 0x01BC

#endif
