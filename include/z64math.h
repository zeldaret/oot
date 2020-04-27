#ifndef _Z64MATH_H_
#define _Z64MATH_H_

#include <ultra64.h>

#define VEC_SET(V,X,Y,Z) V.x=X;V.y=Y;V.z=Z

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

typedef struct {
    Vec3s center;
    s16 radius;
} Sphere16;

typedef struct {
    Vec3f center;
    f32 radius;
} Spheref;


typedef struct {
    Vec3f normal;
    f32 originDist;
} Plane;

typedef struct {
    Vec3f vtx[3];
    Plane plane;
} TriNorm; //size = 0x34

typedef struct {
    s16 radius;
    s16 height;
    s16 yShift;
    Vec3s pos;
} Cylinder16;

typedef struct {
    f32 radius;
    f32 height;
    f32 yShift;
    Vec3f pos;
} Cylinderf;

typedef struct {
    Vec3f a;
    Vec3f b;
} Linef;

#endif
