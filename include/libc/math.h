#ifndef MATH_H
#define MATH_H

#include "ultra64/ultratypes.h"

#define M_PI 3.14159265358979323846f
#define M_SQRT2 1.41421356237309504880f
#define MAXFLOAT 3.40282347e+38f
#define SHT_MAX 32767.0f
#define SHT_MINV (1.0f / SHT_MAX)
#define SQ(x) ((x)*(x))

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

f32 sqrtf(f32 f);
#ifdef __sgi
#pragma intrinsic(sqrtf)
#endif

f64 sqrt(f64 f);
#ifdef __sgi
#pragma intrinsic(sqrt)
#endif

extern float qNaN0x3FFFFF;
extern float qNaN0x10000;
extern float sNaN0x3FFFFF;

#endif
