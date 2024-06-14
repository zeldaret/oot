#ifndef Z_INTRINSIC_H
#define Z_INTRINSIC_H

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

#endif
