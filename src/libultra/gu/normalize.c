#include "ultra64.h"
#include "z_math.h" // TODO: libultra should not have access to game-side headers

void guNormalize(f32* x, f32* y, f32* z) {
    f32 m = 1 / sqrtf(SQ(*x) + SQ(*y) + SQ(*z));

    *x *= m;
    *y *= m;
    *z *= m;
}
