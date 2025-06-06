#include "ultra64.h"

void guTranslateF(f32 m[4][4], f32 x, f32 y, f32 z) {
    guMtxIdentF(m);

    m[3][0] = x;
    m[3][1] = y;
    m[3][2] = z;
}

void guTranslate(Mtx* m, f32 x, f32 y, f32 z) {
    f32 mf[4][4];

    guTranslateF(mf, x, y, z);

    guMtxF2L(mf, m);
}
