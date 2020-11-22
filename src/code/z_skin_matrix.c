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
    xyzDest->x = mf->wx + ((src->x * mf->xx) + (src->y * mf->yx) + (src->z * mf->zx));
    xyzDest->y = mf->wy + ((src->x * mf->xy) + (src->y * mf->yy) + (src->z * mf->zy));
    xyzDest->z = mf->wz + ((src->x * mf->xz) + (src->y * mf->yz) + (src->z * mf->zz));
    *wDest = mf->ww + ((src->x * mf->xw) + (src->y * mf->yw) + (src->z * mf->zw));
}

/**
 * Multiplies a 4 component row vector [ src , 1 ] by the matrix mf and writes the resulting xyz components to dest.
 *
 * \f[ [\texttt{dest}, -] = [\texttt{src}, 1] \cdot [mf] \f]
 */
void SkinMatrix_Vec3fMtxFMultXYZ(MtxF* mf, Vec3f* src, Vec3f* dest) {
    f32 mx;
    f32 my;
    f32 mz;
    f32 mw;

    mx = mf->xx;
    my = mf->yx;
    mz = mf->zx;
    mw = mf->wx;
    dest->x = mw + ((src->x * mx) + (src->y * my) + (src->z * mz));
    mx = mf->xy;
    my = mf->yy;
    mz = mf->zy;
    mw = mf->wy;
    dest->y = mw + ((src->x * mx) + (src->y * my) + (src->z * mz));
    mx = mf->xz;
    my = mf->yz;
    mz = mf->zz;
    mw = mf->wz;
    dest->z = mw + ((src->x * mx) + (src->y * my) + (src->z * mz));
}

/**
 * Matrix multiplication, dest = mfA * mfB.
 * mfA and dest should not be the same matrix.
 */
void SkinMatrix_MtxFMtxFMult(MtxF* mfB, MtxF* mfA, MtxF* dest) {
    f32 rx;
    f32 ry;
    f32 rz;
    f32 rw;

    f32 cx;
    f32 cy;
    f32 cz;
    f32 cw;

    //---COL1---
    cx = mfB->xx;
    cy = mfB->yx;
    cz = mfB->zx;
    cw = mfB->wx;
    //--------
    rx = mfA->xx;
    ry = mfA->xy;
    rz = mfA->xz;
    rw = mfA->xw;
    dest->xx = (cx * rx) + (cy * ry) + (cz * rz) + (cw * rw);

    rx = mfA->yx;
    ry = mfA->yy;
    rz = mfA->yz;
    rw = mfA->yw;
    dest->yx = (cx * rx) + (cy * ry) + (cz * rz) + (cw * rw);

    rx = mfA->zx;
    ry = mfA->zy;
    rz = mfA->zz;
    rw = mfA->zw;
    dest->zx = (cx * rx) + (cy * ry) + (cz * rz) + (cw * rw);

    rx = mfA->wx;
    ry = mfA->wy;
    rz = mfA->wz;
    rw = mfA->ww;
    dest->wx = (cx * rx) + (cy * ry) + (cz * rz) + (cw * rw);

    //---COL2---
    cx = mfB->xy;
    cy = mfB->yy;
    cz = mfB->zy;
    cw = mfB->wy;
    //--------
    rx = mfA->xx;
    ry = mfA->xy;
    rz = mfA->xz;
    rw = mfA->xw;
    dest->xy = (cx * rx) + (cy * ry) + (cz * rz) + (cw * rw);

    rx = mfA->yx;
    ry = mfA->yy;
    rz = mfA->yz;
    rw = mfA->yw;
    dest->yy = (cx * rx) + (cy * ry) + (cz * rz) + (cw * rw);

    rx = mfA->zx;
    ry = mfA->zy;
    rz = mfA->zz;
    rw = mfA->zw;
    dest->zy = (cx * rx) + (cy * ry) + (cz * rz) + (cw * rw);

    rx = mfA->wx;
    ry = mfA->wy;
    rz = mfA->wz;
    rw = mfA->ww;
    dest->wy = (cx * rx) + (cy * ry) + (cz * rz) + (cw * rw);

    //---COL3---
    cx = mfB->xz;
    cy = mfB->yz;
    cz = mfB->zz;
    cw = mfB->wz;
    //--------
    rx = mfA->xx;
    ry = mfA->xy;
    rz = mfA->xz;
    rw = mfA->xw;
    dest->xz = (cx * rx) + (cy * ry) + (cz * rz) + (cw * rw);

    rx = mfA->yx;
    ry = mfA->yy;
    rz = mfA->yz;
    rw = mfA->yw;
    dest->yz = (cx * rx) + (cy * ry) + (cz * rz) + (cw * rw);

    rx = mfA->zx;
    ry = mfA->zy;
    rz = mfA->zz;
    rw = mfA->zw;
    dest->zz = (cx * rx) + (cy * ry) + (cz * rz) + (cw * rw);

    rx = mfA->wx;
    ry = mfA->wy;
    rz = mfA->wz;
    rw = mfA->ww;
    dest->wz = (cx * rx) + (cy * ry) + (cz * rz) + (cw * rw);

    //---COL4---
    cx = mfB->xw;
    cy = mfB->yw;
    cz = mfB->zw;
    cw = mfB->ww;
    //--------
    rx = mfA->xx;
    ry = mfA->xy;
    rz = mfA->xz;
    rw = mfA->xw;
    dest->xw = (cx * rx) + (cy * ry) + (cz * rz) + (cw * rw);

    rx = mfA->yx;
    ry = mfA->yy;
    rz = mfA->yz;
    rw = mfA->yw;
    dest->yw = (cx * rx) + (cy * ry) + (cz * rz) + (cw * rw);

    rx = mfA->zx;
    ry = mfA->zy;
    rz = mfA->zz;
    rw = mfA->zw;
    dest->zw = (cx * rx) + (cy * ry) + (cz * rz) + (cw * rw);

    rx = mfA->wx;
    ry = mfA->wy;
    rz = mfA->wz;
    rw = mfA->ww;
    dest->ww = (cx * rx) + (cy * ry) + (cz * rz) + (cw * rw);
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
    mf->xy = 0.0f;
    mf->xz = 0.0f;
    mf->xw = 0.0f;
    mf->yx = 0.0f;
    mf->yz = 0.0f;
    mf->yw = 0.0f;
    mf->zx = 0.0f;
    mf->zy = 0.0f;
    mf->zw = 0.0f;
    mf->wx = 0.0f;
    mf->wy = 0.0f;
    mf->wz = 0.0f;
}

void SkinMatrix_MtxFCopy(MtxF* src, MtxF* dest) {
    dest->xx = src->xx;
    dest->xy = src->xy;
    dest->xz = src->xz;
    dest->xw = src->xw;
    dest->yx = src->yx;
    dest->yy = src->yy;
    dest->yz = src->yz;
    dest->yw = src->yw;
    dest->zx = src->zx;
    dest->zy = src->zy;
    dest->zz = src->zz;
    dest->zw = src->zw;
    dest->wx = src->wx;
    dest->wy = src->wy;
    dest->wz = src->wz;
    dest->ww = src->ww;
}

/**
 * Inverts a matrix using a slight modification of the Gauss-Jordan method
 * (column operations instead of row operations).
 * returns 0 if successfully inverted
 * returns 2 if matrix non-invertible (0 determinant)
 */
#ifdef NON_MATCHING
// Saved register usage differences and probably regalloc
s32 SkinMatrix_Invert(MtxF* src, MtxF* dest) {
    MtxF mfCopy;
    s32 i;
    s32 k;
    f32 temp1;
    f32 temp2;
    f32 diagElement;
    s32 thisRow;
    s32 thisCol;
    u32 pad;

    SkinMatrix_MtxFCopy(src, &mfCopy);
    SkinMatrix_Clear(dest);
    for (thisRow = 0; thisRow != 4; thisRow++) {
        for (thisCol = thisRow; (thisCol < 4) && (fabsf(mfCopy.mf[thisRow][thisCol]) < 0.0005f); thisCol++) {}
        if (thisCol == 4) {
            // reaching col = 4 means the row is either all 0 or a duplicate row.
            // therefore singular matrix (0 determinant).
            osSyncPrintf(VT_COL(YELLOW, BLACK));
            osSyncPrintf("Skin_Matrix_InverseMatrix():逆行列つくれません\n");
            osSyncPrintf(VT_RST);
            return 2;
        }

        if (thisCol != thisRow) { // responsible for swapping columns if zero on diagonal
            for (i = 0; i != 4; i++) {
                temp1 = mfCopy.mf[i][thisCol];
                mfCopy.mf[i][thisCol] = mfCopy.mf[i][thisRow];
                mfCopy.mf[i][thisRow] = temp1;

                temp1 = dest->mf[i][thisCol];
                dest->mf[i][thisCol] = dest->mf[i][thisRow];
                dest->mf[i][thisRow] = temp1;
            }
        }

        diagElement = mfCopy.mf[thisRow][thisRow];
        // Scale this whole column s.t. the diag element = 1
        mfCopy.mf[0][thisRow] = mfCopy.mf[0][thisRow] / diagElement;
        dest->mf[0][thisRow] = dest->mf[0][thisRow] / diagElement;
        mfCopy.mf[1][thisRow] = mfCopy.mf[1][thisRow] / diagElement;
        dest->mf[1][thisRow] = dest->mf[1][thisRow] / diagElement;
        mfCopy.mf[2][thisRow] = mfCopy.mf[2][thisRow] / diagElement;
        dest->mf[2][thisRow] = dest->mf[2][thisRow] / diagElement;
        mfCopy.mf[3][thisRow] = mfCopy.mf[3][thisRow] / diagElement;
        dest->mf[3][thisRow] = dest->mf[3][thisRow] / diagElement;

        // col i = col i - a * col j
        for (k = 0; k != 4; k++) {
            if (k != thisRow) {
                temp2 = mfCopy.mf[thisRow][k];
                mfCopy.mf[0][k] = mfCopy.mf[0][k] - (mfCopy.mf[0][thisRow] * temp2);
                dest->mf[0][k] = dest->mf[0][k] - (dest->mf[0][thisRow] * temp2);
                mfCopy.mf[1][k] = mfCopy.mf[1][k] - (mfCopy.mf[1][thisRow] * temp2);
                dest->mf[1][k] = dest->mf[1][k] - (dest->mf[1][thisRow] * temp2);
                mfCopy.mf[2][k] = mfCopy.mf[2][k] - (mfCopy.mf[2][thisRow] * temp2);
                dest->mf[2][k] = dest->mf[2][k] - (dest->mf[2][thisRow] * temp2);
                mfCopy.mf[3][k] = mfCopy.mf[3][k] - (mfCopy.mf[3][thisRow] * temp2);
                dest->mf[3][k] = dest->mf[3][k] - (dest->mf[3][thisRow] * temp2);
            }
        }
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/SkinMatrix_Invert.s")
#endif

/**
 * Produces a matrix which scales x,y,z components of vectors or x,y,z rows of matrices (when applied on LHS)
 */
void SkinMatrix_SetScale(MtxF* mf, f32 x, f32 y, f32 z) {
    mf->xy = 0.0f;
    mf->xz = 0.0f;
    mf->xw = 0.0f;
    mf->yx = 0.0f;
    mf->yz = 0.0f;
    mf->yw = 0.0f;
    mf->zx = 0.0f;
    mf->zy = 0.0f;
    mf->zw = 0.0f;
    mf->wx = 0.0f;
    mf->wy = 0.0f;
    mf->wz = 0.0f;
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
    f32 sin;
    f32 cos;
    f32 yx;
    f32 sin2;
    f32 zx;
    f32 yy;
    f32 zy;

    sin = Math_Sins(yaw);
    cos = Math_Coss(yaw);
    mf->yy = cos;
    mf->yx = -sin;
    mf->xw = mf->yw = mf->zw = 0;
    mf->wx = mf->wy = mf->wz = 0;
    mf->ww = 1;

    if (pitch != 0) {
        sin2 = Math_Sins(pitch);
        cos2 = Math_Coss(pitch);

        mf->xx = cos * cos2;
        mf->zx = cos * sin2;

        mf->xy = sin * cos2;
        mf->zy = sin * sin2;
        mf->xz = -sin2;
        mf->zz = cos2;

    } else {
        mf->xx = cos;
        if (1) {}
        if (1) {}
        zx = sin; // required to match
        mf->xy = sin;
        mf->xz = mf->zx = mf->zy = 0;
        mf->zz = 1;
    }

    if (roll != 0) {
        sin2 = Math_Sins(roll);
        cos2 = Math_Coss(roll);

        yx = mf->yx;
        zx = mf->zx;
        mf->yx = (yx * cos2) + (zx * sin2);
        mf->zx = (zx * cos2) - (yx * sin2);

        if (1) {}
        zy = mf->zy;
        yy = mf->yy;
        mf->yy = (yy * cos2) + (zy * sin2);
        mf->zy = (zy * cos2) - (yy * sin2);

        if (cos2) {}
        mf->yz = mf->zz * sin2;
        mf->zz = mf->zz * cos2;
    } else {
        mf->yz = 0;
    }
}

/**
 * Produces a rotation matrix = (yaw rotation matrix) * (roll rotation matrix) * (pitch rotation matrix)
 */
void SkinMatrix_SetRotateYRP(MtxF* mf, s16 yaw, s16 roll, s16 pitch) {
    f32 cos2;
    f32 sin;
    f32 cos;
    f32 xz;
    f32 sin2;
    f32 yz;
    f32 xx;
    f32 yx;
    sin = Math_Sins(roll);
    cos = Math_Coss(roll);
    mf->xx = cos;
    mf->xz = -sin;
    mf->zw = 0;
    mf->yw = 0;
    mf->xw = 0;
    mf->wz = 0;
    mf->wy = 0;
    mf->wx = 0;
    mf->ww = 1;

    if (yaw != 0) {
        sin2 = Math_Sins(yaw);
        cos2 = Math_Coss(yaw);

        mf->zz = cos * cos2;
        mf->yz = cos * sin2;

        mf->zx = sin * cos2;
        mf->yx = sin * sin2;
        mf->zy = -sin2;
        mf->yy = cos2;

    } else {
        mf->zz = cos;
        if (1) {}
        if (1) {}
        yx = sin; // required to match
        mf->zx = sin;
        mf->yx = mf->yz = mf->zy = 0;
        mf->yy = 1;
    }

    if (pitch != 0) {
        sin2 = Math_Sins(pitch);
        cos2 = Math_Coss(pitch);
        xx = mf->xx;
        yx = mf->yx;
        mf->xx = (xx * cos2) + (yx * sin2);
        mf->yx = yx * cos2 - (xx * sin2);
        if (1) {}
        yz = mf->yz;
        xz = mf->xz;
        mf->xz = (xz * cos2) + (yz * sin2);
        mf->yz = (yz * cos2) - (xz * sin2);
        if (cos2) {}
        mf->xy = mf->yy * sin2;
        mf->yy = mf->yy * cos2;
    } else {
        mf->xy = 0;
    }
}

/**
 * Produces a matrix which translates a vector by amounts in the x, y and z directions
 */
void SkinMatrix_SetTranslate(MtxF* mf, f32 x, f32 y, f32 z) {
    mf->xy = 0.0f;
    mf->xz = 0.0f;
    mf->xw = 0.0f;
    mf->yx = 0.0f;
    mf->yz = 0.0f;
    mf->yw = 0.0f;
    mf->zx = 0.0f;
    mf->zy = 0.0f;
    mf->zw = 0.0f;
    mf->xx = 1.0f;
    mf->yy = 1.0f;
    mf->zz = 1.0f;
    mf->ww = 1.0f;
    mf->wx = x;
    mf->wy = y;
    mf->wz = z;
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

    temp = src->xy * 0x10000;
    m1[1] = (temp >> 0x10);
    m1[16 + 1] = temp & 0xFFFF;

    temp = src->xz * 0x10000;
    m1[2] = (temp >> 0x10);
    m1[16 + 2] = temp & 0xFFFF;

    temp = src->xw * 0x10000;
    m1[3] = (temp >> 0x10);
    m1[16 + 3] = temp & 0xFFFF;

    temp = src->yx * 0x10000;
    m1[4] = (temp >> 0x10);
    m1[16 + 4] = temp & 0xFFFF;

    temp = src->yy * 0x10000;
    m1[5] = (temp >> 0x10);
    m1[16 + 5] = temp & 0xFFFF;

    temp = src->yz * 0x10000;
    m1[6] = (temp >> 0x10);
    m1[16 + 6] = temp & 0xFFFF;

    temp = src->yw * 0x10000;
    m1[7] = (temp >> 0x10);
    m1[16 + 7] = temp & 0xFFFF;

    temp = src->zx * 0x10000;
    m1[8] = (temp >> 0x10);
    m1[16 + 8] = temp & 0xFFFF;

    temp = src->zy * 0x10000;
    m1[9] = (temp >> 0x10);
    m2[9] = temp & 0xFFFF;

    temp = src->zz * 0x10000;
    m1[10] = (temp >> 0x10);
    m2[10] = temp & 0xFFFF;

    temp = src->zw * 0x10000;
    m1[11] = (temp >> 0x10);
    m2[11] = temp & 0xFFFF;

    temp = src->wx * 0x10000;
    m1[12] = (temp >> 0x10);
    m2[12] = temp & 0xFFFF;

    temp = src->wy * 0x10000;
    m1[13] = (temp >> 0x10);
    m2[13] = temp & 0xFFFF;

    temp = src->wz * 0x10000;
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
 * Produces a matrix which rotates vectors by angle a around the vector with components (x,y,z)
 */
#ifdef NON_EQUIVALENT
// I think this is functionally correct but I cannot be 100% sure of equivalence because diff output is not very close
void func_800A7EC0(MtxF* mf, s16 a, f32 x, f32 y, f32 z) {
    f32 sin;
    f32 cos;
    f32 ct;
    f32 xx;
    f32 yy;
    f32 zz;
    f32 xy;
    f32 xz;
    f32 yz;
    f32 sx;
    f32 sy;
    f32 sz;

    sin = Math_Sins(a);
    cos = Math_Coss(a);

    ct = 1.0f - cos;
    sx = sin * x;
    sy = sin * y;
    sz = sin * z;

    xx = x * x;
    xy = x * y;
    xz = x * z;
    yy = y * y;
    yz = y * z;
    zz = z * z;

    mf->xx = (f32)ct * xx + cos;
    mf->xy = (f32)((ct * xy) + sz);
    mf->xz = (f32)((ct * xz) - sy);
    mf->xw = 0.0f;

    mf->yx = (f32)((ct * (xy)) - sz);
    mf->yy = (f32)ct * yy + cos;
    mf->yz = (f32)((ct * (yz)) + sx);
    mf->yw = 0.0f;

    mf->zx = (f32)((ct * (xz)) + sy);
    mf->zy = (f32)((ct * (yz)) - sx);
    mf->zz = (f32)ct * zz + cos;

    mf->zw = 0.0f;

    mf->wx = 0.0f;
    mf->wy = 0.0f;
    mf->wz = 0.0f;
    mf->ww = 1.0f;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/func_800A7EC0.s")
#endif

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
    mf->xy = (xyNorm + wzNorm);
    mf->xz = (xzNorm - wyNorm);
    mf->xw = 0.0f;
    mf->yx = (xyNorm - wzNorm);
    mf->yy = (1.0f - (xxNorm + zzNorm));
    mf->yz = (yzNorm + wxNorm);
    mf->yw = 0.0f;
    mf->zx = (yzNorm + wyNorm);
    mf->zy = (yzNorm - wxNorm);
    mf->zz = (1.0f - (xxNorm + yyNorm));
    mf->zw = 0.0f;
    mf->wx = 0.0f;
    mf->wy = 0.0f;
    mf->ww = 1.0f;
    mf->wz = 0.0f;
}
