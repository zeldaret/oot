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

// Defines a point in the spherical coordinate system
typedef struct {
    f32 r;      // radius
    s16 phi;    // polar (zenith) angle
    s16 theta;  // azimuthal angle
} VecSph;

#define F32_LERPIMP(v0, v1, t) (v0 + ((v1 - v0) * t))
#define F32_LERPIMPINV(v0, v1, t) (v0 + ((v1 - v0) / (t)))
#define BINANG_LERPIMP(v0, v1, t) (v0 + (s16)(BINANG_SUB(v1, v0) * t))
#define BINANG_LERPIMPINV(v0, v1, t) (v0 + BINANG_SUB(v1, v0) / (t))

#define VEC3F_LERPIMP(v0, v1, xzt, yt, v1yoffset) { \
    (v0)->x = (v0)->x + (((v1)->x - (v0)->x) * xzt); \
    (v0)->y = (v0)->y + ((((v1)->y + v1yoffset) - (v0)->y) * yt); \
    (v0)->z = (v0)->z + (((v1)->z - (v0)->z) * xzt); \
}

/**
 * Trig macros
*/
#define DEGF_TO_BINANG(degreesf) ((s16)(degreesf * (65535.0f / 360.0f) + 0.5f))
#define RADF_TO_DEGF(radf) (radf * (180.0f / M_PI))
#define DEGF_TO_RADF(degf) (degf * (M_PI / 180.0f))
#define BINANG_ROT180(angle) ((s16)(angle - 0x7FFF))
#define BINANG_SUB(a, b) ((s16)(a - b))
#define BINANG_ADD(a, b) ((s16)(a + b))
#define DEG_TO_RAD(degrees) (degrees * (M_PI / 180.0f))
#define BINANG_TO_DEGF(binang) ((f32)binang * (360.0001525f / 65535.0f))

#endif
