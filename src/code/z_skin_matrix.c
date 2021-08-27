#include "global.h"
#include "vt.h"

// clang-format off
MtxF sMtxFClear = {
    1.0f, 0.0f, 0.0f, 0.0f,
    0.0f, 1.0f, 0.0f, 0.0f,
    0.0f, 0.0f, 1.0f, 0.0f,
    0.0f, 0.0f, 0.0f, 1.0f,
};
// clang-format on

/**
 * Multiplies a 4 component row vector [ src , 1 ] by the matrix mf and writes the resulting 4 components to xyzDest
 * and wDest.
 *
 * \f[ [\texttt{xyzDest}, \texttt{wDest}] = [\texttt{src}, 1] \cdot [mf] \f]
 */
void SkinMatrix_Vec3fMtxFMultXYZW(MtxF* mf, Vec3f* src, Vec3f* xyzDest, f32* wDest) {
    xyzDest->x = mf->now_14 + ((src->x * mf->xx) + (src->y * mf->now_12) + (src->z * mf->now_13));
    xyzDest->y = mf->now_24 + ((src->x * mf->now_21) + (src->y * mf->yy) + (src->z * mf->now_23));
    xyzDest->z = mf->now_34 + ((src->x * mf->now_31) + (src->y * mf->now_32) + (src->z * mf->zz));
    *wDest = mf->ww + ((src->x * mf->now_41) + (src->y * mf->now_42) + (src->z * mf->now_43));
}

/**
 * Multiplies a 4 component row vector [ src , 1 ] by the matrix mf and writes the resulting xyz components to dest.
 *
 * \f[ [\texttt{dest}, -] = [\texttt{src}, 1] \cdot [mf] \f]
 */
void SkinMatrix_Vec3fMtxFMultXYZ(MtxF* mf, Vec3f* src, Vec3f* dest) {
    f32 mx = mf->xx;
    f32 my = mf->now_12;
    f32 mz = mf->now_13;
    f32 mw = mf->now_14;

    dest->x = mw + ((src->x * mx) + (src->y * my) + (src->z * mz));
    mx = mf->now_21;
    my = mf->yy;
    mz = mf->now_23;
    mw = mf->now_24;
    dest->y = mw + ((src->x * mx) + (src->y * my) + (src->z * mz));
    mx = mf->now_31;
    my = mf->now_32;
    mz = mf->zz;
    mw = mf->now_34;
    dest->z = mw + ((src->x * mx) + (src->y * my) + (src->z * mz));
}

/**
 * Matrix multiplication, dest = mfA * mfB.
 * mfA and dest should not be the same matrix.
 */
void SkinMatrix_MtxFMtxFMult(MtxF* mfB, MtxF* mfA, MtxF* dest) {
    f32 x2;
    f32 y2;
    f32 z2;
    f32 w2;
    //---ROW1---
    f32 x1 = mfB->xx;
    f32 y1 = mfB->now_12;
    f32 z1 = mfB->now_13;
    f32 w1 = mfB->now_14;
    //--------

    x2 = mfA->xx;
    y2 = mfA->now_21;
    z2 = mfA->now_31;
    w2 = mfA->now_41;
    dest->xx = (x1 * x2) + (y1 * y2) + (z1 * z2) + (w1 * w2);

    x2 = mfA->now_12;
    y2 = mfA->yy;
    z2 = mfA->now_32;
    w2 = mfA->now_42;
    dest->now_12 = (x1 * x2) + (y1 * y2) + (z1 * z2) + (w1 * w2);

    x2 = mfA->now_13;
    y2 = mfA->now_23;
    z2 = mfA->zz;
    w2 = mfA->now_43;
    dest->now_13 = (x1 * x2) + (y1 * y2) + (z1 * z2) + (w1 * w2);

    x2 = mfA->now_14;
    y2 = mfA->now_24;
    z2 = mfA->now_34;
    w2 = mfA->ww;
    dest->now_14 = (x1 * x2) + (y1 * y2) + (z1 * z2) + (w1 * w2);

    //---ROW2---
    x1 = mfB->now_21;
    y1 = mfB->yy;
    z1 = mfB->now_23;
    w1 = mfB->now_24;
    //--------
    x2 = mfA->xx;
    y2 = mfA->now_21;
    z2 = mfA->now_31;
    w2 = mfA->now_41;
    dest->now_21 = (x1 * x2) + (y1 * y2) + (z1 * z2) + (w1 * w2);

    x2 = mfA->now_12;
    y2 = mfA->yy;
    z2 = mfA->now_32;
    w2 = mfA->now_42;
    dest->yy = (x1 * x2) + (y1 * y2) + (z1 * z2) + (w1 * w2);

    x2 = mfA->now_13;
    y2 = mfA->now_23;
    z2 = mfA->zz;
    w2 = mfA->now_43;
    dest->now_23 = (x1 * x2) + (y1 * y2) + (z1 * z2) + (w1 * w2);

    x2 = mfA->now_14;
    y2 = mfA->now_24;
    z2 = mfA->now_34;
    w2 = mfA->ww;
    dest->now_24 = (x1 * x2) + (y1 * y2) + (z1 * z2) + (w1 * w2);

    //---ROW3---
    x1 = mfB->now_31;
    y1 = mfB->now_32;
    z1 = mfB->zz;
    w1 = mfB->now_34;
    //--------
    x2 = mfA->xx;
    y2 = mfA->now_21;
    z2 = mfA->now_31;
    w2 = mfA->now_41;
    dest->now_31 = (x1 * x2) + (y1 * y2) + (z1 * z2) + (w1 * w2);

    x2 = mfA->now_12;
    y2 = mfA->yy;
    z2 = mfA->now_32;
    w2 = mfA->now_42;
    dest->now_32 = (x1 * x2) + (y1 * y2) + (z1 * z2) + (w1 * w2);

    x2 = mfA->now_13;
    y2 = mfA->now_23;
    z2 = mfA->zz;
    w2 = mfA->now_43;
    dest->zz = (x1 * x2) + (y1 * y2) + (z1 * z2) + (w1 * w2);

    x2 = mfA->now_14;
    y2 = mfA->now_24;
    z2 = mfA->now_34;
    w2 = mfA->ww;
    dest->now_34 = (x1 * x2) + (y1 * y2) + (z1 * z2) + (w1 * w2);

    //---ROW4---
    x1 = mfB->now_41;
    y1 = mfB->now_42;
    z1 = mfB->now_43;
    w1 = mfB->ww;
    //--------
    x2 = mfA->xx;
    y2 = mfA->now_21;
    z2 = mfA->now_31;
    w2 = mfA->now_41;
    dest->now_41 = (x1 * x2) + (y1 * y2) + (z1 * z2) + (w1 * w2);

    x2 = mfA->now_12;
    y2 = mfA->yy;
    z2 = mfA->now_32;
    w2 = mfA->now_42;
    dest->now_42 = (x1 * x2) + (y1 * y2) + (z1 * z2) + (w1 * w2);

    x2 = mfA->now_13;
    y2 = mfA->now_23;
    z2 = mfA->zz;
    w2 = mfA->now_43;
    dest->now_43 = (x1 * x2) + (y1 * y2) + (z1 * z2) + (w1 * w2);

    x2 = mfA->now_14;
    y2 = mfA->now_24;
    z2 = mfA->now_34;
    w2 = mfA->ww;
    dest->ww = (x1 * x2) + (y1 * y2) + (z1 * z2) + (w1 * w2);
}

/**
 * "Clear" in this file means the identity matrix.
 */
void SkinMatrix_GetClear(MtxF** mfp) {
    *mfp = &sMtxFClear;
}

void SkinMatrix_Clear(MtxF* mf) {
    mf->xx = 1.0f;
    mf->yy = 1.0f;
    mf->zz = 1.0f;
    mf->ww = 1.0f;
    mf->now_21 = 0.0f;
    mf->now_31 = 0.0f;
    mf->now_41 = 0.0f;
    mf->now_12 = 0.0f;
    mf->now_32 = 0.0f;
    mf->now_42 = 0.0f;
    mf->now_13 = 0.0f;
    mf->now_23 = 0.0f;
    mf->now_43 = 0.0f;
    mf->now_14 = 0.0f;
    mf->now_24 = 0.0f;
    mf->now_34 = 0.0f;
}

void SkinMatrix_MtxFCopy(MtxF* src, MtxF* dest) {
    dest->xx = src->xx;
    dest->now_21 = src->now_21;
    dest->now_31 = src->now_31;
    dest->now_41 = src->now_41;
    dest->now_12 = src->now_12;
    dest->yy = src->yy;
    dest->now_32 = src->now_32;
    dest->now_42 = src->now_42;
    dest->now_13 = src->now_13;
    dest->now_23 = src->now_23;
    dest->zz = src->zz;
    dest->now_43 = src->now_43;
    dest->now_14 = src->now_14;
    dest->now_24 = src->now_24;
    dest->now_34 = src->now_34;
    dest->ww = src->ww;
}

/**
 * Inverts a matrix using a slight modification of the Gauss-Jordan method
 * (column operations instead of row operations).
 * returns 0 if successfully inverted
 * returns 2 if matrix non-invertible (0 determinant)
 */
s32 SkinMatrix_Invert(MtxF* src, MtxF* dest) {
    MtxF mfCopy;
    s32 i;
    s32 pad;
    f32 temp2;
    f32 temp1;
    s32 thisRow;
    s32 thisCol;

    SkinMatrix_MtxFCopy(src, &mfCopy);
    SkinMatrix_Clear(dest);
    for (thisRow = 0; thisRow < 4; thisRow++) {
        thisCol = thisRow;
        while ((thisCol < 4) && (fabsf(mfCopy.mf[thisRow][thisCol]) < 0.0005f)) {
            thisCol++;
        }
        if (thisCol == 4) {
            // reaching col = 4 means the row is either all 0 or a duplicate row.
            // therefore singular matrix (0 determinant).

            osSyncPrintf(VT_COL(YELLOW, BLACK));
            osSyncPrintf("Skin_Matrix_InverseMatrix():逆行列つくれません\n");
            osSyncPrintf(VT_RST);
            return 2;
        }
        if (thisCol != thisRow) { // responsible for swapping columns if zero on diagonal
            for (i = 0; i < 4; i++) {
                temp1 = mfCopy.mf[i][thisCol];
                mfCopy.mf[i][thisCol] = mfCopy.mf[i][thisRow];
                mfCopy.mf[i][thisRow] = temp1;

                temp2 = dest->mf[i][thisCol];
                dest->mf[i][thisCol] = dest->mf[i][thisRow];
                dest->mf[i][thisRow] = temp2;
            }
        }

        // Scale this whole column s.t. the diag element = 1
        temp1 = mfCopy.mf[thisRow][thisRow];
        for (i = 0; i < 4; i++) {
            mfCopy.mf[i][thisRow] /= temp1;
            dest->mf[i][thisRow] /= temp1;
        }

        for (thisCol = 0; thisCol < 4; thisCol++) {
            if (thisCol != thisRow) {
                temp1 = mfCopy.mf[thisRow][thisCol];
                for (i = 0; i < 4; i++) {
                    mfCopy.mf[i][thisCol] -= mfCopy.mf[i][thisRow] * temp1;
                    dest->mf[i][thisCol] -= dest->mf[i][thisRow] * temp1;
                }
            }
        }
    }
    return 0;
}

/**
 * Produces a matrix which scales x,y,z components of vectors or x,y,z rows of matrices (when applied on LHS)
 */
void SkinMatrix_SetScale(MtxF* mf, f32 x, f32 y, f32 z) {
    mf->now_21 = 0.0f;
    mf->now_31 = 0.0f;
    mf->now_41 = 0.0f;
    mf->now_12 = 0.0f;
    mf->now_32 = 0.0f;
    mf->now_42 = 0.0f;
    mf->now_13 = 0.0f;
    mf->now_23 = 0.0f;
    mf->now_43 = 0.0f;
    mf->now_14 = 0.0f;
    mf->now_24 = 0.0f;
    mf->now_34 = 0.0f;
    mf->ww = 1.0f;
    mf->xx = x;
    mf->yy = y;
    mf->zz = z;
}

/**
 * Produces a rotation matrix = (roll rotation matrix) * (pitch rotation matrix) * (yaw rotation matrix)
 */
void SkinMatrix_SetRotateRPY(MtxF* mf, s16 roll, s16 pitch, s16 yaw) {
    f32 cos2;
    f32 sin = Math_SinS(yaw);
    f32 cos = Math_CosS(yaw);
    f32 now_12;
    f32 sin2;
    f32 now_13;
    f32 yy;
    f32 now_23;

    mf->yy = cos;
    mf->now_12 = -sin;
    mf->now_41 = mf->now_42 = mf->now_43 = 0;
    mf->now_14 = mf->now_24 = mf->now_34 = 0;
    mf->ww = 1;

    if (pitch != 0) {
        sin2 = Math_SinS(pitch);
        cos2 = Math_CosS(pitch);

        mf->xx = cos * cos2;
        mf->now_13 = cos * sin2;

        mf->now_21 = sin * cos2;
        mf->now_23 = sin * sin2;
        mf->now_31 = -sin2;
        mf->zz = cos2;

    } else {
        mf->xx = cos;
        if (1) {}
        if (1) {}
        now_13 = sin; // required to match
        mf->now_21 = sin;
        mf->now_31 = mf->now_13 = mf->now_23 = 0;
        mf->zz = 1;
    }

    if (roll != 0) {
        sin2 = Math_SinS(roll);
        cos2 = Math_CosS(roll);

        now_12 = mf->now_12;
        now_13 = mf->now_13;
        mf->now_12 = (now_12 * cos2) + (now_13 * sin2);
        mf->now_13 = (now_13 * cos2) - (now_12 * sin2);

        if (1) {}
        now_23 = mf->now_23;
        yy = mf->yy;
        mf->yy = (yy * cos2) + (now_23 * sin2);
        mf->now_23 = (now_23 * cos2) - (yy * sin2);

        if (cos2) {}
        mf->now_32 = mf->zz * sin2;
        mf->zz = mf->zz * cos2;
    } else {
        mf->now_32 = 0;
    }
}

/**
 * Produces a rotation matrix = (yaw rotation matrix) * (roll rotation matrix) * (pitch rotation matrix)
 */
void SkinMatrix_SetRotateYRP(MtxF* mf, s16 yaw, s16 roll, s16 pitch) {
    f32 cos2;
    f32 sin;
    f32 cos;
    f32 now_31;
    f32 sin2;
    f32 now_32;
    f32 xx;
    f32 now_12;
    sin = Math_SinS(roll);
    cos = Math_CosS(roll);
    mf->xx = cos;
    mf->now_31 = -sin;
    mf->now_43 = 0;
    mf->now_42 = 0;
    mf->now_41 = 0;
    mf->now_34 = 0;
    mf->now_24 = 0;
    mf->now_14 = 0;
    mf->ww = 1;

    if (yaw != 0) {
        sin2 = Math_SinS(yaw);
        cos2 = Math_CosS(yaw);

        mf->zz = cos * cos2;
        mf->now_32 = cos * sin2;

        mf->now_13 = sin * cos2;
        mf->now_12 = sin * sin2;
        mf->now_23 = -sin2;
        mf->yy = cos2;

    } else {
        mf->zz = cos;
        if (1) {}
        if (1) {}
        now_12 = sin; // required to match
        mf->now_13 = sin;
        mf->now_12 = mf->now_32 = mf->now_23 = 0;
        mf->yy = 1;
    }

    if (pitch != 0) {
        sin2 = Math_SinS(pitch);
        cos2 = Math_CosS(pitch);
        xx = mf->xx;
        now_12 = mf->now_12;
        mf->xx = (xx * cos2) + (now_12 * sin2);
        mf->now_12 = now_12 * cos2 - (xx * sin2);
        if (1) {}
        now_32 = mf->now_32;
        now_31 = mf->now_31;
        mf->now_31 = (now_31 * cos2) + (now_32 * sin2);
        mf->now_32 = (now_32 * cos2) - (now_31 * sin2);
        if (cos2) {}
        mf->now_21 = mf->yy * sin2;
        mf->yy = mf->yy * cos2;
    } else {
        mf->now_21 = 0;
    }
}

/**
 * Produces a matrix which translates a vector by amounts in the x, y and z directions
 */
void SkinMatrix_SetTranslate(MtxF* mf, f32 x, f32 y, f32 z) {
    mf->now_21 = 0.0f;
    mf->now_31 = 0.0f;
    mf->now_41 = 0.0f;
    mf->now_12 = 0.0f;
    mf->now_32 = 0.0f;
    mf->now_42 = 0.0f;
    mf->now_13 = 0.0f;
    mf->now_23 = 0.0f;
    mf->now_43 = 0.0f;
    mf->xx = 1.0f;
    mf->yy = 1.0f;
    mf->zz = 1.0f;
    mf->ww = 1.0f;
    mf->now_14 = x;
    mf->now_24 = y;
    mf->now_34 = z;
}

/**
 * Produces a matrix which scales, then rotates (RPY), then translates a vector
 */
void SkinMatrix_SetScaleRotateRPYTranslate(MtxF* mf, f32 scaleX, f32 scaleY, f32 scaleZ, s16 roll, s16 pitch, s16 yaw,
                                           f32 dx, f32 dy, f32 dz) {
    MtxF mft1;
    MtxF mft2;

    SkinMatrix_SetTranslate(mf, dx, dy, dz);
    SkinMatrix_SetRotateRPY(&mft1, roll, pitch, yaw);
    SkinMatrix_MtxFMtxFMult(mf, &mft1, &mft2);
    SkinMatrix_SetScale(&mft1, scaleX, scaleY, scaleZ);
    SkinMatrix_MtxFMtxFMult(&mft2, &mft1, mf);
}

/**
 * Produces a matrix which scales, then rotates (YRP), then translates a vector
 */
void SkinMatrix_SetScaleRotateYRPTranslate(MtxF* mf, f32 scaleX, f32 scaleY, f32 scaleZ, s16 yaw, s16 roll, s16 pitch,
                                           f32 dx, f32 dy, f32 dz) {
    MtxF mft1;
    MtxF mft2;

    SkinMatrix_SetTranslate(mf, dx, dy, dz);
    SkinMatrix_SetRotateYRP(&mft1, yaw, roll, pitch);
    SkinMatrix_MtxFMtxFMult(mf, &mft1, &mft2);
    SkinMatrix_SetScale(&mft1, scaleX, scaleY, scaleZ);
    SkinMatrix_MtxFMtxFMult(&mft2, &mft1, mf);
}

/**
 * Produces a matrix which rotates (RPY), then translates a vector
 */
void SkinMatrix_SetRotateRPYTranslate(MtxF* mf, s16 roll, s16 pitch, s16 yaw, f32 dx, f32 dy, f32 dz) {
    MtxF mft1;
    MtxF mft2;

    SkinMatrix_SetTranslate(&mft2, dx, dy, dz);
    SkinMatrix_SetRotateRPY(&mft1, roll, pitch, yaw);
    SkinMatrix_MtxFMtxFMult(&mft2, &mft1, mf);
}

void SkinMatrix_Vec3fToVec3s(Vec3f* src, Vec3s* dest) {
    dest->x = src->x;
    dest->y = src->y;
    dest->z = src->z;
}

void SkinMatrix_Vec3sToVec3f(Vec3s* src, Vec3f* dest) {
    dest->x = src->x;
    dest->y = src->y;
    dest->z = src->z;
}

void SkinMatrix_MtxFToMtx(MtxF* src, Mtx* dest) {
    s32 temp;
    u16* m1 = (u16*)&dest->m[0][0];
    u16* m2 = (u16*)&dest->m[2][0];

    temp = src->xx * 0x10000;
    m1[0] = (temp >> 0x10);
    m1[16 + 0] = temp & 0xFFFF;

    temp = src->now_21 * 0x10000;
    m1[1] = (temp >> 0x10);
    m1[16 + 1] = temp & 0xFFFF;

    temp = src->now_31 * 0x10000;
    m1[2] = (temp >> 0x10);
    m1[16 + 2] = temp & 0xFFFF;

    temp = src->now_41 * 0x10000;
    m1[3] = (temp >> 0x10);
    m1[16 + 3] = temp & 0xFFFF;

    temp = src->now_12 * 0x10000;
    m1[4] = (temp >> 0x10);
    m1[16 + 4] = temp & 0xFFFF;

    temp = src->yy * 0x10000;
    m1[5] = (temp >> 0x10);
    m1[16 + 5] = temp & 0xFFFF;

    temp = src->now_32 * 0x10000;
    m1[6] = (temp >> 0x10);
    m1[16 + 6] = temp & 0xFFFF;

    temp = src->now_42 * 0x10000;
    m1[7] = (temp >> 0x10);
    m1[16 + 7] = temp & 0xFFFF;

    temp = src->now_13 * 0x10000;
    m1[8] = (temp >> 0x10);
    m1[16 + 8] = temp & 0xFFFF;

    temp = src->now_23 * 0x10000;
    m1[9] = (temp >> 0x10);
    m2[9] = temp & 0xFFFF;

    temp = src->zz * 0x10000;
    m1[10] = (temp >> 0x10);
    m2[10] = temp & 0xFFFF;

    temp = src->now_43 * 0x10000;
    m1[11] = (temp >> 0x10);
    m2[11] = temp & 0xFFFF;

    temp = src->now_14 * 0x10000;
    m1[12] = (temp >> 0x10);
    m2[12] = temp & 0xFFFF;

    temp = src->now_24 * 0x10000;
    m1[13] = (temp >> 0x10);
    m2[13] = temp & 0xFFFF;

    temp = src->now_34 * 0x10000;
    m1[14] = (temp >> 0x10);
    m2[14] = temp & 0xFFFF;

    temp = src->ww * 0x10000;
    m1[15] = (temp >> 0x10);
    m2[15] = temp & 0xFFFF;
}

Mtx* SkinMatrix_MtxFToNewMtx(GraphicsContext* gfxCtx, MtxF* src) {
    Mtx* mtx = Graph_Alloc(gfxCtx, sizeof(Mtx));

    if (mtx == NULL) {
        osSyncPrintf("Skin_Matrix_to_Mtx_new() 確保失敗:NULLを返して終了\n", mtx);
        return NULL;
    }
    SkinMatrix_MtxFToMtx(src, mtx);
    return mtx;
}

/**
 * Produces a matrix which rotates vectors by angle a around a unit vector with components (x,y,z)
 */
void func_800A7EC0(MtxF* mf, s16 a, f32 x, f32 y, f32 z) {
    f32 sinA;
    f32 cosA;
    f32 xx;
    f32 yy;
    f32 zz;
    f32 xy;
    f32 yz;
    f32 xz;
    f32 pad;

    sinA = Math_SinS(a);
    cosA = Math_CosS(a);

    xx = x * x;
    yy = y * y;
    zz = z * z;
    xy = x * y;
    yz = y * z;
    xz = x * z;

    mf->xx = (1.0f - xx) * cosA + xx;
    mf->now_21 = (1.0f - cosA) * xy + z * sinA;
    mf->now_31 = (1.0f - cosA) * xz - y * sinA;
    mf->now_41 = 0.0f;

    mf->now_12 = (1.0f - cosA) * xy - z * sinA;
    mf->yy = (1.0f - yy) * cosA + yy;
    mf->now_32 = (1.0f - cosA) * yz + x * sinA;
    mf->now_42 = 0.0f;

    mf->now_13 = (1.0f - cosA) * xz + y * sinA;
    mf->now_23 = (1.0f - cosA) * yz - x * sinA;
    mf->zz = (1.0f - zz) * cosA + zz;
    mf->now_43 = 0.0f;

    mf->now_14 = mf->now_24 = mf->now_34 = 0.0f;
    mf->ww = 1.0f;
}

void func_800A8030(MtxF* mf, f32* arg1) {
    f32 n;
    f32 xNorm;
    f32 yNorm;
    f32 zNorm;
    f32 wxNorm;
    f32 wyNorm;
    f32 wzNorm;
    f32 xxNorm;
    f32 xyNorm;
    f32 xzNorm;
    f32 yyNorm;
    f32 yzNorm;
    f32 zzNorm;

    n = 2.0f / ((arg1[3] * arg1[3]) + ((arg1[2] * arg1[2]) + ((arg1[1] * arg1[1]) + (arg1[0] * arg1[0]))));
    xNorm = arg1[0] * n;
    yNorm = arg1[1] * n;
    zNorm = arg1[2] * n;

    wxNorm = arg1[3] * xNorm;
    wyNorm = arg1[3] * yNorm;
    wzNorm = arg1[3] * zNorm;
    xxNorm = arg1[0] * xNorm;
    xyNorm = arg1[0] * yNorm;
    xzNorm = arg1[0] * zNorm;
    yyNorm = arg1[1] * yNorm;
    yzNorm = arg1[1] * zNorm;
    zzNorm = arg1[2] * zNorm;

    mf->xx = (1.0f - (yyNorm + zzNorm));
    mf->now_21 = (xyNorm + wzNorm);
    mf->now_31 = (xzNorm - wyNorm);
    mf->now_41 = 0.0f;
    mf->now_12 = (xyNorm - wzNorm);
    mf->yy = (1.0f - (xxNorm + zzNorm));
    mf->now_32 = (yzNorm + wxNorm);
    mf->now_42 = 0.0f;
    mf->now_13 = (yzNorm + wyNorm);
    mf->now_23 = (yzNorm - wxNorm);
    mf->zz = (1.0f - (xxNorm + yyNorm));
    mf->now_43 = 0.0f;
    mf->now_14 = 0.0f;
    mf->now_24 = 0.0f;
    mf->ww = 1.0f;
    mf->now_34 = 0.0f;
}
