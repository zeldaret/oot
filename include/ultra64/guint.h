#ifndef ULTRA64_GUINT_H
#define ULTRA64_GUINT_H

#include "ultratypes.h"
#include "gu.h"

typedef union {
    struct {
        u32 hi;
        u32 lo;
    } word;

    f64 d;
} du;

typedef union {
    u32 i;
    f32 f;
} fu;

#ifndef SQ
#define SQ(x) ((x)*(x))
#endif

extern f32 __libm_qnan_f;

#endif
