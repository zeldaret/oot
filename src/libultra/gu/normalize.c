#include "global.h"

void guNormalize(f32* x, f32* y, f32* z) {
    f32 m = 1 / sqrtf(SQ(*x) + SQ(*y) + SQ(*z));

    *x *= m;
    *y *= m;
    *z *= m;
}
