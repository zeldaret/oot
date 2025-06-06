#include "ultra64.h"

void guScaleF(f32 m[4][4], f32 x, f32 y, f32 z) {
    guMtxIdentF(m);

    m[0][0] = x;
    m[1][1] = y;
    m[2][2] = z;
    m[3][3] = 1;
}

void guScale(Mtx* m, f32 x, f32 y, f32 z) {
    f32 mf[4][4];

    guScaleF(mf, x, y, z);

    guMtxF2L(mf, m);
}
