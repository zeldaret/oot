#ifndef _Z64VEC_H_
#define _Z64VEC_H_

#include <ultra64.h>

typedef struct {
    f32 x, y;
} Vec2f;

typedef struct {
    f32 x, y, z;
} Vec3f;

typedef struct {
    s16 x, y, z;
} Vec3s;

typedef struct {
    s32 x, y, z;
} Vec3i;

#endif
