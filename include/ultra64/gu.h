#ifndef ULTRA64_GU_H
#define ULTRA64_GU_H

#include "ultratypes.h"

#define GU_PI 3.1415926

#define ROUND(x) (s32)(((x) >= 0.0) ? ((x) + 0.5) : ((x) - 0.5))

typedef union du {
    struct {
        u32 hi;
        u32 lo;
    } word;

    f64 d;
} du;

typedef union fu {
    u32 i;
    f32 f;
} fu;

f32 sinf(f32 angle);
s16 sins(u16 angle);

f32 cosf(f32 angle);
s16 coss(u16 angle);

extern f32 __libm_qnan_f;

#endif
