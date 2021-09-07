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
 * Multiplies the matrix mf by a 4 components column vector [ src , 1 ] and writes the resulting 4 components to xyzDest
 * and wDest.
 *
 * \f[ \begin{bmatrix} \texttt{xyzDest} \\ \texttt{wDest} \\ \end{bmatrix}
 *      = [\texttt{mf}] \cdot
 *        \begin{bmatrix} \texttt{src} \\ 1 \\ \end{bmatrix}
 * \f]
 */
void SkinMatrix_Vec3fMtxFMultXYZW(MtxF* mf, Vec3f* src, Vec3f* xyzDest, f32* wDest) {
    xyzDest->x = mf->xw + ((src->x * mf->xx) + (src->y * mf->xy) + (src->z * mf->xz));
    xyzDest->y = mf->yw + ((src->x * mf->yx) + (src->y * mf->yy) + (src->z * mf->yz));
    xyzDest->z = mf->zw + ((src->x * mf->zx) + (src->y * mf->zy) + (src->z * mf->zz));
    *wDest = mf->ww + ((src->x * mf->wx) + (src->y * mf->wy) + (src->z * mf->wz));
}

/**
 * Multiplies the matrix mf by a 4 components column vector [ src , 1 ] and writes the resulting xyz components to dest.
 *
 * \f[ \begin{bmatrix} \texttt{dest} \\ - \\ \end{bmatrix}
 *      = [\texttt{mf}] \cdot
 *        \begin{bmatrix} \texttt{src} \\ 1 \\ \end{bmatrix}
 * \f]
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
 * mfB and dest should not be the same matrix.
 */
void SkinMatrix_MtxFMtxFMult(MtxF* mfA, MtxF* mfB, MtxF* dest) {
    f32 cx;
    f32 cy;
    f32 cz;
    f32 cw;
    //---ROW1---
    f32 rx = mfA->xx;
    f32 ry = mfA->xy;
    f32 rz = mfA->xz;
    f32 rw = mfA->xw;
    //--------

    cx = mfB->xx;
    cy = mfB->yx;
    cz = mfB->zx;
    cw = mfB->wx;
    dest->xx = (rx * cx) + (ry * cy) + (rz * cz) + (rw * cw);

    cx = mfB->xy;
    cy = mfB->yy;
    cz = mfB->zy;
    cw = mfB->wy;
    dest->xy = (rx * cx) + (ry * cy) + (rz * cz) + (rw * cw);

    cx = mfB->xz;
    cy = mfB->yz;
    cz = mfB->zz;
    cw = mfB->wz;
    dest->xz = (rx * cx) + (ry * cy) + (rz * cz) + (rw * cw);

    cx = mfB->xw;
    cy = mfB->yw;
    cz = mfB->zw;
    cw = mfB->ww;
    dest->xw = (rx * cx) + (ry * cy) + (rz * cz) + (rw * cw);

    //---ROW2---
    rx = mfA->yx;
    ry = mfA->yy;
    rz = mfA->yz;
    rw = mfA->yw;
    //--------
    cx = mfB->xx;
    cy = mfB->yx;
    cz = mfB->zx;
    cw = mfB->wx;
    dest->yx = (rx * cx) + (ry * cy) + (rz * cz) + (rw * cw);

    cx = mfB->xy;
    cy = mfB->yy;
    cz = mfB->zy;
    cw = mfB->wy;
    dest->yy = (rx * cx) + (ry * cy) + (rz * cz) + (rw * cw);

    cx = mfB->xz;
    cy = mfB->yz;
    cz = mfB->zz;
    cw = mfB->wz;
    dest->yz = (rx * cx) + (ry * cy) + (rz * cz) + (rw * cw);

    cx = mfB->xw;
    cy = mfB->yw;
    cz = mfB->zw;
    cw = mfB->ww;
    dest->yw = (rx * cx) + (ry * cy) + (rz * cz) + (rw * cw);

    //---ROW3---
    rx = mfA->zx;
    ry = mfA->zy;
    rz = mfA->zz;
    rw = mfA->zw;
    //--------
    cx = mfB->xx;
    cy = mfB->yx;
    cz = mfB->zx;
    cw = mfB->wx;
    dest->zx = (rx * cx) + (ry * cy) + (rz * cz) + (rw * cw);

    cx = mfB->xy;
    cy = mfB->yy;
    cz = mfB->zy;
    cw = mfB->wy;
    dest->zy = (rx * cx) + (ry * cy) + (rz * cz) + (rw * cw);

    cx = mfB->xz;
    cy = mfB->yz;
    cz = mfB->zz;
    cw = mfB->wz;
    dest->zz = (rx * cx) + (ry * cy) + (rz * cz) + (rw * cw);

    cx = mfB->xw;
    cy = mfB->yw;
    cz = mfB->zw;
    cw = mfB->ww;
    dest->zw = (rx * cx) + (ry * cy) + (rz * cz) + (rw * cw);

    //---ROW4---
    rx = mfA->wx;
    ry = mfA->wy;
    rz = mfA->wz;
    rw = mfA->ww;
    //--------
    cx = mfB->xx;
    cy = mfB->yx;
    cz = mfB->zx;
    cw = mfB->wx;
    dest->wx = (rx * cx) + (ry * cy) + (rz * cz) + (rw * cw);

    cx = mfB->xy;
    cy = mfB->yy;
    cz = mfB->zy;
    cw = mfB->wy;
    dest->wy = (rx * cx) + (ry * cy) + (rz * cz) + (rw * cw);

    cx = mfB->xz;
    cy = mfB->yz;
    cz = mfB->zz;
    cw = mfB->wz;
    dest->wz = (rx * cx) + (ry * cy) + (rz * cz) + (rw * cw);

    cx = mfB->xw;
    cy = mfB->yw;
    cz = mfB->zw;
    cw = mfB->ww;
    dest->ww = (rx * cx) + (ry * cy) + (rz * cz) + (rw * cw);
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
 * Produces a rotation matrix using ZYX Tait-Bryan angles.
 */
void SkinMatrix_SetRotateZYX(MtxF* mf, s16 x, s16 y, s16 z) {
    f32 cos;
    f32 sinZ = Math_SinS(z);
    f32 cosZ = Math_CosS(z);
    f32 xy;
    f32 sin;
    f32 xz;
    f32 yy;
    f32 yz;

    mf->yy = cosZ;
    mf->xy = -sinZ;
    mf->wx = mf->wy = mf->wz = 0;
    mf->xw = mf->yw = mf->zw = 0;
    mf->ww = 1;

    if (y != 0) {
        sin = Math_SinS(y);
        cos = Math_CosS(y);

        mf->xx = cosZ * cos;
        mf->xz = cosZ * sin;

        mf->yx = sinZ * cos;
        mf->yz = sinZ * sin;
        mf->zx = -sin;
        mf->zz = cos;

    } else {
        mf->xx = cosZ;
        if (1) {}
        if (1) {}
        xz = sinZ; // required to match
        mf->yx = sinZ;
        mf->zx = mf->xz = mf->yz = 0;
        mf->zz = 1;
    }

    if (x != 0) {
        sin = Math_SinS(x);
        cos = Math_CosS(x);

        xy = mf->xy;
        xz = mf->xz;
        mf->xy = (xy * cos) + (xz * sin);
        mf->xz = (xz * cos) - (xy * sin);

        if (1) {}
        yz = mf->yz;
        yy = mf->yy;
        mf->yy = (yy * cos) + (yz * sin);
        mf->yz = (yz * cos) - (yy * sin);

        if (cos) {}
        mf->zy = mf->zz * sin;
        mf->zz = mf->zz * cos;
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
    SkinMatrix_SetRotateZYX(&mft1, roll, pitch, yaw);
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
    SkinMatrix_SetRotateZYX(&mft1, roll, pitch, yaw);
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
