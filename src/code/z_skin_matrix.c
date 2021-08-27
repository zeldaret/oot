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
    xyzDest->x = mf->xw + ((src->x * mf->xx) + (src->y * mf->xy) + (src->z * mf->xz));
    xyzDest->y = mf->yw + ((src->x * mf->yx) + (src->y * mf->yy) + (src->z * mf->yz));
    xyzDest->z = mf->zw + ((src->x * mf->zx) + (src->y * mf->zy) + (src->z * mf->zz));
    *wDest = mf->ww + ((src->x * mf->wx) + (src->y * mf->wy) + (src->z * mf->wz));
}

/**
 * Multiplies a 4 component row vector [ src , 1 ] by the matrix mf and writes the resulting xyz components to dest.
 *
 * \f[ [\texttt{dest}, -] = [\texttt{src}, 1] \cdot [mf] \f]
 */
void SkinMatrix_Vec3fMtxFMultXYZ(MtxF* mf, Vec3f* src, Vec3f* dest) {
    f32 mx = mf->xx;
    f32 my = mf->xy;
    f32 mz = mf->xz;
    f32 mw = mf->xw;

    dest->x = mw + ((src->x * mx) + (src->y * my) + (src->z * mz));
    mx = mf->yx;
    my = mf->yy;
    mz = mf->yz;
    mw = mf->yw;
    dest->y = mw + ((src->x * mx) + (src->y * my) + (src->z * mz));
    mx = mf->zx;
    my = mf->zy;
    mz = mf->zz;
    mw = mf->zw;
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
    f32 y1 = mfB->xy;
    f32 z1 = mfB->xz;
    f32 w1 = mfB->xw;
    //--------

    x2 = mfA->xx;
    y2 = mfA->yx;
    z2 = mfA->zx;
    w2 = mfA->wx;
    dest->xx = (x1 * x2) + (y1 * y2) + (z1 * z2) + (w1 * w2);

    x2 = mfA->xy;
    y2 = mfA->yy;
    z2 = mfA->zy;
    w2 = mfA->wy;
    dest->xy = (x1 * x2) + (y1 * y2) + (z1 * z2) + (w1 * w2);

    x2 = mfA->xz;
    y2 = mfA->yz;
    z2 = mfA->zz;
    w2 = mfA->wz;
    dest->xz = (x1 * x2) + (y1 * y2) + (z1 * z2) + (w1 * w2);

    x2 = mfA->xw;
    y2 = mfA->yw;
    z2 = mfA->zw;
    w2 = mfA->ww;
    dest->xw = (x1 * x2) + (y1 * y2) + (z1 * z2) + (w1 * w2);

    //---ROW2---
    x1 = mfB->yx;
    y1 = mfB->yy;
    z1 = mfB->yz;
    w1 = mfB->yw;
    //--------
    x2 = mfA->xx;
    y2 = mfA->yx;
    z2 = mfA->zx;
    w2 = mfA->wx;
    dest->yx = (x1 * x2) + (y1 * y2) + (z1 * z2) + (w1 * w2);

    x2 = mfA->xy;
    y2 = mfA->yy;
    z2 = mfA->zy;
    w2 = mfA->wy;
    dest->yy = (x1 * x2) + (y1 * y2) + (z1 * z2) + (w1 * w2);

    x2 = mfA->xz;
    y2 = mfA->yz;
    z2 = mfA->zz;
    w2 = mfA->wz;
    dest->yz = (x1 * x2) + (y1 * y2) + (z1 * z2) + (w1 * w2);

    x2 = mfA->xw;
    y2 = mfA->yw;
    z2 = mfA->zw;
    w2 = mfA->ww;
    dest->yw = (x1 * x2) + (y1 * y2) + (z1 * z2) + (w1 * w2);

    //---ROW3---
    x1 = mfB->zx;
    y1 = mfB->zy;
    z1 = mfB->zz;
    w1 = mfB->zw;
    //--------
    x2 = mfA->xx;
    y2 = mfA->yx;
    z2 = mfA->zx;
    w2 = mfA->wx;
    dest->zx = (x1 * x2) + (y1 * y2) + (z1 * z2) + (w1 * w2);

    x2 = mfA->xy;
    y2 = mfA->yy;
    z2 = mfA->zy;
    w2 = mfA->wy;
    dest->zy = (x1 * x2) + (y1 * y2) + (z1 * z2) + (w1 * w2);

    x2 = mfA->xz;
    y2 = mfA->yz;
    z2 = mfA->zz;
    w2 = mfA->wz;
    dest->zz = (x1 * x2) + (y1 * y2) + (z1 * z2) + (w1 * w2);

    x2 = mfA->xw;
    y2 = mfA->yw;
    z2 = mfA->zw;
    w2 = mfA->ww;
    dest->zw = (x1 * x2) + (y1 * y2) + (z1 * z2) + (w1 * w2);

    //---ROW4---
    x1 = mfB->wx;
    y1 = mfB->wy;
    z1 = mfB->wz;
    w1 = mfB->ww;
    //--------
    x2 = mfA->xx;
    y2 = mfA->yx;
    z2 = mfA->zx;
    w2 = mfA->wx;
    dest->wx = (x1 * x2) + (y1 * y2) + (z1 * z2) + (w1 * w2);

    x2 = mfA->xy;
    y2 = mfA->yy;
    z2 = mfA->zy;
    w2 = mfA->wy;
    dest->wy = (x1 * x2) + (y1 * y2) + (z1 * z2) + (w1 * w2);

    x2 = mfA->xz;
    y2 = mfA->yz;
    z2 = mfA->zz;
    w2 = mfA->wz;
    dest->wz = (x1 * x2) + (y1 * y2) + (z1 * z2) + (w1 * w2);

    x2 = mfA->xw;
    y2 = mfA->yw;
    z2 = mfA->zw;
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
    mf->yx = 0.0f;
    mf->zx = 0.0f;
    mf->wx = 0.0f;
    mf->xy = 0.0f;
    mf->zy = 0.0f;
    mf->wy = 0.0f;
    mf->xz = 0.0f;
    mf->yz = 0.0f;
    mf->wz = 0.0f;
    mf->xw = 0.0f;
    mf->yw = 0.0f;
    mf->zw = 0.0f;
}

void SkinMatrix_MtxFCopy(MtxF* src, MtxF* dest) {
    dest->xx = src->xx;
    dest->yx = src->yx;
    dest->zx = src->zx;
    dest->wx = src->wx;
    dest->xy = src->xy;
    dest->yy = src->yy;
    dest->zy = src->zy;
    dest->wy = src->wy;
    dest->xz = src->xz;
    dest->yz = src->yz;
    dest->zz = src->zz;
    dest->wz = src->wz;
    dest->xw = src->xw;
    dest->yw = src->yw;
    dest->zw = src->zw;
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
    mf->yx = 0.0f;
    mf->zx = 0.0f;
    mf->wx = 0.0f;
    mf->xy = 0.0f;
    mf->zy = 0.0f;
    mf->wy = 0.0f;
    mf->xz = 0.0f;
    mf->yz = 0.0f;
    mf->wz = 0.0f;
    mf->xw = 0.0f;
    mf->yw = 0.0f;
    mf->zw = 0.0f;
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
    f32 xy;
    f32 sin2;
    f32 xz;
    f32 yy;
    f32 yz;

    mf->yy = cos;
    mf->xy = -sin;
    mf->wx = mf->wy = mf->wz = 0;
    mf->xw = mf->yw = mf->zw = 0;
    mf->ww = 1;

    if (pitch != 0) {
        sin2 = Math_SinS(pitch);
        cos2 = Math_CosS(pitch);

        mf->xx = cos * cos2;
        mf->xz = cos * sin2;

        mf->yx = sin * cos2;
        mf->yz = sin * sin2;
        mf->zx = -sin2;
        mf->zz = cos2;

    } else {
        mf->xx = cos;
        if (1) {}
        if (1) {}
        xz = sin; // required to match
        mf->yx = sin;
        mf->zx = mf->xz = mf->yz = 0;
        mf->zz = 1;
    }

    if (roll != 0) {
        sin2 = Math_SinS(roll);
        cos2 = Math_CosS(roll);

        xy = mf->xy;
        xz = mf->xz;
        mf->xy = (xy * cos2) + (xz * sin2);
        mf->xz = (xz * cos2) - (xy * sin2);

        if (1) {}
        yz = mf->yz;
        yy = mf->yy;
        mf->yy = (yy * cos2) + (yz * sin2);
        mf->yz = (yz * cos2) - (yy * sin2);

        if (cos2) {}
        mf->zy = mf->zz * sin2;
        mf->zz = mf->zz * cos2;
    } else {
        mf->zy = 0;
    }
}

/**
 * Produces a rotation matrix = (yaw rotation matrix) * (roll rotation matrix) * (pitch rotation matrix)
 */
void SkinMatrix_SetRotateYRP(MtxF* mf, s16 yaw, s16 roll, s16 pitch) {
    f32 cos2;
    f32 sin;
    f32 cos;
    f32 zx;
    f32 sin2;
    f32 zy;
    f32 xx;
    f32 xy;
    sin = Math_SinS(roll);
    cos = Math_CosS(roll);
    mf->xx = cos;
    mf->zx = -sin;
    mf->wz = 0;
    mf->wy = 0;
    mf->wx = 0;
    mf->zw = 0;
    mf->yw = 0;
    mf->xw = 0;
    mf->ww = 1;

    if (yaw != 0) {
        sin2 = Math_SinS(yaw);
        cos2 = Math_CosS(yaw);

        mf->zz = cos * cos2;
        mf->zy = cos * sin2;

        mf->xz = sin * cos2;
        mf->xy = sin * sin2;
        mf->yz = -sin2;
        mf->yy = cos2;

    } else {
        mf->zz = cos;
        if (1) {}
        if (1) {}
        xy = sin; // required to match
        mf->xz = sin;
        mf->xy = mf->zy = mf->yz = 0;
        mf->yy = 1;
    }

    if (pitch != 0) {
        sin2 = Math_SinS(pitch);
        cos2 = Math_CosS(pitch);
        xx = mf->xx;
        xy = mf->xy;
        mf->xx = (xx * cos2) + (xy * sin2);
        mf->xy = xy * cos2 - (xx * sin2);
        if (1) {}
        zy = mf->zy;
        zx = mf->zx;
        mf->zx = (zx * cos2) + (zy * sin2);
        mf->zy = (zy * cos2) - (zx * sin2);
        if (cos2) {}
        mf->yx = mf->yy * sin2;
        mf->yy = mf->yy * cos2;
    } else {
        mf->yx = 0;
    }
}

/**
 * Produces a matrix which translates a vector by amounts in the x, y and z directions
 */
void SkinMatrix_SetTranslate(MtxF* mf, f32 x, f32 y, f32 z) {
    mf->yx = 0.0f;
    mf->zx = 0.0f;
    mf->wx = 0.0f;
    mf->xy = 0.0f;
    mf->zy = 0.0f;
    mf->wy = 0.0f;
    mf->xz = 0.0f;
    mf->yz = 0.0f;
    mf->wz = 0.0f;
    mf->xx = 1.0f;
    mf->yy = 1.0f;
    mf->zz = 1.0f;
    mf->ww = 1.0f;
    mf->xw = x;
    mf->yw = y;
    mf->zw = z;
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

    temp = src->yx * 0x10000;
    m1[1] = (temp >> 0x10);
    m1[16 + 1] = temp & 0xFFFF;

    temp = src->zx * 0x10000;
    m1[2] = (temp >> 0x10);
    m1[16 + 2] = temp & 0xFFFF;

    temp = src->wx * 0x10000;
    m1[3] = (temp >> 0x10);
    m1[16 + 3] = temp & 0xFFFF;

    temp = src->xy * 0x10000;
    m1[4] = (temp >> 0x10);
    m1[16 + 4] = temp & 0xFFFF;

    temp = src->yy * 0x10000;
    m1[5] = (temp >> 0x10);
    m1[16 + 5] = temp & 0xFFFF;

    temp = src->zy * 0x10000;
    m1[6] = (temp >> 0x10);
    m1[16 + 6] = temp & 0xFFFF;

    temp = src->wy * 0x10000;
    m1[7] = (temp >> 0x10);
    m1[16 + 7] = temp & 0xFFFF;

    temp = src->xz * 0x10000;
    m1[8] = (temp >> 0x10);
    m1[16 + 8] = temp & 0xFFFF;

    temp = src->yz * 0x10000;
    m1[9] = (temp >> 0x10);
    m2[9] = temp & 0xFFFF;

    temp = src->zz * 0x10000;
    m1[10] = (temp >> 0x10);
    m2[10] = temp & 0xFFFF;

    temp = src->wz * 0x10000;
    m1[11] = (temp >> 0x10);
    m2[11] = temp & 0xFFFF;

    temp = src->xw * 0x10000;
    m1[12] = (temp >> 0x10);
    m2[12] = temp & 0xFFFF;

    temp = src->yw * 0x10000;
    m1[13] = (temp >> 0x10);
    m2[13] = temp & 0xFFFF;

    temp = src->zw * 0x10000;
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
    mf->yx = (1.0f - cosA) * xy + z * sinA;
    mf->zx = (1.0f - cosA) * xz - y * sinA;
    mf->wx = 0.0f;

    mf->xy = (1.0f - cosA) * xy - z * sinA;
    mf->yy = (1.0f - yy) * cosA + yy;
    mf->zy = (1.0f - cosA) * yz + x * sinA;
    mf->wy = 0.0f;

    mf->xz = (1.0f - cosA) * xz + y * sinA;
    mf->yz = (1.0f - cosA) * yz - x * sinA;
    mf->zz = (1.0f - zz) * cosA + zz;
    mf->wz = 0.0f;

    mf->xw = mf->yw = mf->zw = 0.0f;
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
    mf->yx = (xyNorm + wzNorm);
    mf->zx = (xzNorm - wyNorm);
    mf->wx = 0.0f;
    mf->xy = (xyNorm - wzNorm);
    mf->yy = (1.0f - (xxNorm + zzNorm));
    mf->zy = (yzNorm + wxNorm);
    mf->wy = 0.0f;
    mf->xz = (yzNorm + wyNorm);
    mf->yz = (yzNorm - wxNorm);
    mf->zz = (1.0f - (xxNorm + yyNorm));
    mf->wz = 0.0f;
    mf->xw = 0.0f;
    mf->yw = 0.0f;
    mf->ww = 1.0f;
    mf->zw = 0.0f;
}
