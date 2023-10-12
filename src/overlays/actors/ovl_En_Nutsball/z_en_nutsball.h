#ifndef Z_EN_NUTSBALL_H
#define Z_EN_NUTSBALL_H

#include "ultra64.h"
#include "global.h"

#define NUTSBALL_GET_TYPE(thisx) ((thisx)->params)

typedef enum {
    /*  0 */ EN_NUTSBALL_TYPE_DEKUNUTS,
    /*  1 */ EN_NUTSBALL_TYPE_HINTNUTS,
    /*  2 */ EN_NUTSBALL_TYPE_SHOPNUTS,
    /*  3 */ EN_NUTSBALL_TYPE_DNS,
    /*  4 */ EN_NUTSBALL_TYPE_DNK
} EnNutsballType;

struct EnNutsball;

typedef void (*EnNutsballActionFunc)(struct EnNutsball*, PlayState*);

typedef struct EnNutsball {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnNutsballActionFunc actionFunc;
    /* 0x0150 */ s8 requiredObjectSlot;
    /* 0x0152 */ s16 timer;
    /* 0x0154 */ ColliderCylinder collider;
} EnNutsball; // size = 0x01A0

#endif
