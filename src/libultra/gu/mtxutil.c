#include "global.h"

void guMtxF2L(f32 mf[4][4], Mtx* m) {
    s32 i, j;
    s32 e1, e2;
    s32 *ai, *af;

    ai = (s32*)&m->m[0][0];
    af = (s32*)&m->m[2][0];

    for (i = 0; i < 4; i++) {
        for (j = 0; j < 2; j++) {
            e1 = FTOFIX32(mf[i][j * 2]);
            e2 = FTOFIX32(mf[i][j * 2 + 1]);
            *(ai++) = (e1 & 0xFFFF0000) | ((e2 >> 16) & 0xFFFF);
            *(af++) = ((e1 << 16) & 0xFFFF0000) | (e2 & 0xFFFF);
        }
    }
}

void guMtxL2F(f32 mf[4][4], Mtx* m) {
    s32 i, j;
    u32 e1, e2;
    u32 *ai, *af;
    s32 q1, q2;

    ai = (u32*)&m->m[0][0];
    af = (u32*)&m->m[2][0];

    for (i = 0; i < 4; i++) {
        for (j = 0; j < 2; j++) {
            e1 = (*ai & 0xFFFF0000) | ((*af >> 16) & 0xFFFF);
            e2 = ((*(ai++) << 16) & 0xFFFF0000) | (*(af++) & 0xFFFF);
            q1 = *((s32*)&e1);
            q2 = *((s32*)&e2);

            mf[i][j * 2] = FIX32TOF(q1);
            mf[i][j * 2 + 1] = FIX32TOF(q2);
        }
    }
}

void guMtxIdentF(f32 mf[4][4]) {
    s32 i, j;

    for (i = 0; i < 4; i++) {
        for (j = 0; j < 4; j++) {
            if (i == j) {
                mf[i][j] = 1.0;
            } else {
                mf[i][j] = 0.0;
            }
        }
    }
}

void guMtxIdent(Mtx* m) {
    f32 mf[4][4];

    guMtxIdentF(mf);

    guMtxF2L(mf, m);
}
