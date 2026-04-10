#ifndef OBJECT_NIW_H
#define OBJECT_NIW_H

#include "animation.h"
#include "gCuccoSkel.h"

extern AnimationHeader gCuccoAnim;

typedef enum ObjectNiwFwork1 {
    /* 0 */ OBJECT_NIW_UPPER_BODY_ROOT_TARGET_ROT_Y,
    /* 1 */ OBJECT_NIW_RIGHT_WING_ROOT_TARGET_ROT_Z,
    /* 2 */ OBJECT_NIW_LEFT_WING_ROOT_TARGET_ROT_Z,
    /* 5 */ OBJECT_NIW_RIGHT_WING_ROOT_TARGET_ROT_Y = 5,
    /* 6 */ OBJECT_NIW_RIGHT_WING_ROOT_TARGET_ROT_X,
    /* 7 */ OBJECT_NIW_LEFT_WING_ROOT_TARGET_ROT_Y,
    /* 8 */ OBJECT_NIW_LEFT_WING_ROOT_TARGET_ROT_X,
    /* 9 */ OBJECT_NIW_HEAD_TARGET_ROT_Y
} ObjectNiwFwork1;

#endif
