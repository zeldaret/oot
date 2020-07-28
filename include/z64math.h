#ifndef _Z64MATH_H_
#define _Z64MATH_H_

#include <ultra64.h>

#define VEC_SET(V,X,Y,Z) V.x=X;V.y=Y;V.z=Z

typedef struct {
    f32 x, y;
} Vec2f; // size = 0x08

typedef struct {
    f32 x, y, z;
} Vec3f; // size = 0x0C

typedef struct {
    u16 x, y, z;
} Vec3us; // size = 0x06

typedef struct {
    s16 x, y, z;
} Vec3s; // size = 0x06

typedef struct {
    s32 x, y, z;
} Vec3i; // size = 0x0C

typedef struct {
    Vec3s center;
    s16 radius;
} Sphere16; // size = 0x08

typedef struct {
    Vec3f center;
    f32 radius;
} Spheref; // size = 0x10


typedef struct {
    Vec3f normal;
    f32 originDist;
} Plane; // size = 0x10

typedef struct {
    Vec3f vtx[3];
    Plane plane;
} TriNorm; // size = 0x34

typedef struct {
    s16 radius;
    s16 height;
    s16 yShift;
    Vec3s pos;
} Cylinder16; // size = 0x0C

typedef struct {
    f32 radius;
    f32 height;
    f32 yShift;
    Vec3f pos;
} Cylinderf; // size = 0x18

typedef struct {
    Vec3f a;
    Vec3f b;
} Linef; // size = 0x18

// Defines a point in the spherical coordinate system
typedef struct {
    f32 r;      // radius
    s16 phi;    // polar (zenith) angle
    s16 theta;  // azimuthal angle
} VecSph; // size = 0x08

#endif
