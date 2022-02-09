#include "global.h"

// Define functions needed for the GCC build here.

// Self-hosted memcmp.
int memcmp(void *s1, const void *s2, size_t n) {
    u8 *m1 = (u8 *)s1;
    u8 *m2 = (u8 *)s2;
    int i;
    for (i = 0; i < n; i++) {
        if (m1[i] < m2[i]) {
            return -1;
        } else if (m1[i] > m2[i]) {
            return 1;
        }
    }
    return 0;
}

void *memset(void *str, int c, size_t n) {
    u8 *m1 = (u8 *)str;
    int i;
    for(i = 0; i < n; i++) {
        m1[i] = c;
    }
    return str;
}

// These functions convert c to an unsigned integer, rounding toward zero. Negative values
// all become zero.
u32 __fixunssfdi(f32 a) {
    if (a < 0.0f)
        a = 0.0f;
    return (u32)a;
}

u32 __fixunsdfdi(f64 a) {
    if (a < 0.0)
        a = 0.0;
    return (u32)a;
}

// These functions convert c to a signed integer, rounding toward zero.
s32 __fixsfdi(f32 c) {
    return (s32)c;
}

s32 __fixdfdi(f64 c) {
    return (s32)c;
}

// These functions convert c, a signed integer, to floating point.
f32 __floatdisf(s32 c) {
    return (f32)c;
}

f64 __floatdidf(s32 c) {
    return (f64)c;
}

// These functions convert c, an unsigned integer, to floating point.
f32 __floatundisf(u32 c) {
    return (f32)c;    
}

f64 __floatundidf(u32 c) {
    return (f64)c;
}

f32 __powisf2(f32 a, s32 b) {
    const s32 recip = b < 0;
    f32 r = 1;

    while (1) {
        if (b & 1) {
            r *= a;
        }

        b /= 2;

        if (b == 0) {
            break;
        }

        a *= a;
    }
    return recip ? 1/r : r;
}
