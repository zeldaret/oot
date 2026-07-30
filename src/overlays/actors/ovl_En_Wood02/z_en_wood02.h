#ifndef Z_EN_WOOD02_H
#define Z_EN_WOOD02_H

#include "ultra64.h"
#include "actor.h"

typedef enum EnWood02Type {
    /*  0 */ EN_WOOD_02_TYPE_0,
    /*  1 */ EN_WOOD_02_TYPE_1,
    /*  2 */ EN_WOOD_02_TYPE_2,
    /*  3 */ EN_WOOD_02_TYPE_3,
    /*  4 */ EN_WOOD_02_TYPE_4,
    /*  5 */ EN_WOOD_02_TYPE_5,
    /*  6 */ EN_WOOD_02_TYPE_6,
    /*  7 */ EN_WOOD_02_TYPE_7,
    /*  8 */ EN_WOOD_02_TYPE_8,
    /*  9 */ EN_WOOD_02_TYPE_9,
    /* 10 */ EN_WOOD_02_TYPE_10,
    /* 11 */ EN_WOOD_02_TYPE_11,
    /* 12 */ EN_WOOD_02_TYPE_12,
    /* 13 */ EN_WOOD_02_TYPE_13,
    /* 14 */ EN_WOOD_02_TYPE_14,
    /* 15 */ EN_WOOD_02_TYPE_15,
    /* 16 */ EN_WOOD_02_TYPE_16,
    /* 17 */ EN_WOOD_02_TYPE_17,
    /* 18 */ EN_WOOD_02_TYPE_18,
    /* 19 */ EN_WOOD_02_TYPE_19,
    /* 20 */ EN_WOOD_02_TYPE_20,
    /* 21 */ EN_WOOD_02_TYPE_21,
    /* 22 */ EN_WOOD_02_TYPE_22,
    /* 23 */ EN_WOOD_02_TYPE_23,
    /* 24 */ EN_WOOD_02_TYPE_24,
    /* 25 */ EN_WOOD_02_TYPE_MAX
} EnWood02Type;

struct EnWood02;

typedef struct EnWood02 {
    /* 0x000 */ Actor actor;
    /* 0x14C */ s16 unk14C;
    /* 0x14E */ u8 unk14E[5];
    /* 0x153 */ u8 unk153;
    /* 0x154 */ u8 unk154;
    /* 0x155 */ char pad155[3];
    /* 0x158 */ ColliderCylinder unk158;
} EnWood02; // size = 0x1A4

#endif
