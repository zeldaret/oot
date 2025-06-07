#ifndef MATH_H
#define MATH_H

#include "ultra64/ultratypes.h"

#define M_PI 3.14159265358979323846f
#define M_SQRT2 1.41421356237309504880f
#define MAXFLOAT 3.40282347e+38f
#define SHT_MAX 32767.0f
#define SHT_MINV (1.0f / SHT_MAX)

float floorf(float);
double floor(double);
long lfloorf(float);
long lfloor(double);

float ceilf(float);
double ceil(double);
long lceilf(float);
long lceil(double);

float truncf(float);
double trunc(double);
long ltruncf(float);
long ltrunc(double);

float nearbyintf(float);
double nearbyint(double);
long lnearbyintf(float);
long lnearbyint(double);

float roundf(float);
double round(double);
long lroundf(float);
long lround(double);

f32 fabsf(f32 f);
#ifdef __sgi
#pragma intrinsic(fabsf)
#else
#define fabsf(f) __builtin_fabsf((f32)(f))
#endif

f64 fabs(f64 f);
#ifdef __sgi
#pragma intrinsic(fabs)
#else
#define fabs(f) __builtin_fabs((f64)(f))
#endif

f32 sqrtf(f32 f);
// IDO has a sqrtf intrinsic, but in N64 versions it's not used for some files.
// For these files we define NO_SQRTF_INTRINSIC to use the sqrtf function instead.
#if defined(__sgi) && !defined(NO_SQRTF_INTRINSIC)
#pragma intrinsic(sqrtf)
#endif

f64 sqrt(f64 f);
#ifdef __sgi
#pragma intrinsic(sqrt)
#endif

#if !PLATFORM_N64
extern float gPositiveInfinity;
extern float gNegativeInfinity;
extern float gPositiveZero;
extern float gNegativeZero;
extern float qNaN0x3FFFFF;
extern float qNaN0x10000;
extern float sNaN0x3FFFFF;
#endif

#endif
