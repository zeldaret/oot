#include <ultra64.h>
#include <global.h>

// multiplies the 4-element vector (src, 1) by the matrix mf and returns the x,y,z,w components of the resulting vector
void SkinMatrix_Vec3fMtxFMultXYZW(MtxF* mf, Vec3f* src, Vec3f* xyzDest, f32* wDest) {
    xyzDest->x = mf->wx + ((src->x * mf->xx) + (src->y * mf->yx) + (src->z * mf->zx));
    xyzDest->y = mf->wy + ((src->x * mf->xy) + (src->y * mf->yy) + (src->z * mf->zy));
    xyzDest->z = mf->wz + ((src->x * mf->xz) + (src->y * mf->yz) + (src->z * mf->zz));
    *wDest = mf->ww + ((src->x * mf->xw) + (src->y * mf->yw) + (src->z * mf->zw));
}

// multiplies the 4-element vector (src, 1) by the matrix mf and returns the x,y,z components of the resulting vector
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

// Matrix multiplication, dest = mfA * mfB
// Note that mfB and dest may be the same matrix thanks to use of temp variables.
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
    dest->xx = (rx * cx) + (ry * cy) + (rz * cz) + (rw * cw);

    rx = mfA->yx;
    ry = mfA->yy;
    rz = mfA->yz;
    rw = mfA->yw;
    dest->yx = (rx * cx) + (ry * cy) + (rz * cz) + (rw * cw);

    rx = mfA->zx;
    ry = mfA->zy;
    rz = mfA->zz;
    rw = mfA->zw;
    dest->zx = (rx * cx) + (ry * cy) + (rz * cz) + (rw * cw);

    rx = mfA->wx;
    ry = mfA->wy;
    rz = mfA->wz;
    rw = mfA->ww;
    dest->wx = (rx * cx) + (ry * cy) + (rz * cz) + (rw * cw);

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
    dest->xy = (rx * cx) + (ry * cy) + (rz * cz) + (rw * cw);

    rx = mfA->yx;
    ry = mfA->yy;
    rz = mfA->yz;
    rw = mfA->yw;
    dest->yy = (rx * cx) + (ry * cy) + (rz * cz) + (rw * cw);

    rx = mfA->zx;
    ry = mfA->zy;
    rz = mfA->zz;
    rw = mfA->zw;
    dest->zy = (rx * cx) + (ry * cy) + (rz * cz) + (rw * cw);

    rx = mfA->wx;
    ry = mfA->wy;
    rz = mfA->wz;
    rw = mfA->ww;
    dest->wy = (rx * cx) + (ry * cy) + (rz * cz) + (rw * cw);

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
    dest->xz = (rx * cx) + (ry * cy) + (rz * cz) + (rw * cw);

    rx = mfA->yx;
    ry = mfA->yy;
    rz = mfA->yz;
    rw = mfA->yw;
    dest->yz = (rx * cx) + (ry * cy) + (rz * cz) + (rw * cw);

    rx = mfA->zx;
    ry = mfA->zy;
    rz = mfA->zz;
    rw = mfA->zw;
    dest->zz = (rx * cx) + (ry * cy) + (rz * cz) + (rw * cw);

    rx = mfA->wx;
    ry = mfA->wy;
    rz = mfA->wz;
    rw = mfA->ww;
    dest->wz = (rx * cx) + (ry * cy) + (rz * cz) + (rw * cw);

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
    dest->xw = (rx * cx) + (ry * cy) + (rz * cz) + (rw * cw);

    rx = mfA->yx;
    ry = mfA->yy;
    rz = mfA->yz;
    rw = mfA->yw;
    dest->yw = (rx * cx) + (ry * cy) + (rz * cz) + (rw * cw);

    rx = mfA->zx;
    ry = mfA->zy;
    rz = mfA->zz;
    rw = mfA->zw;
    dest->zw = (rx * cx) + (ry * cy) + (rz * cz) + (rw * cw);

    rx = mfA->wx;
    ry = mfA->wy;
    rz = mfA->wz;
    rw = mfA->ww;
    dest->ww = (rx * cx) + (ry * cy) + (rz * cz) + (rw * cw);
}

MtxF D_8012A4A0 = { 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f };

void SkinMatrix_GlobalIdentity(MtxF** mf) {
    *mf = &D_8012A4A0;
}

void SkinMatrix_SetToIdentity(MtxF* mf) {
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

void SkinMatrix_Copy(MtxF* src, MtxF* dest) {
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

// Uses a slight modification of the Gauss-Jordan method
// Saved register usage differences and probably regalloc
#ifdef NON_MATCHING
int func_800A73E0(MtxF* src, MtxF* dest) {
    MtxF mf_copy;
    s32 i;
    s32 k;
    f32 temp1;
    f32 temp2;
    f32 diag_element;
    s32 this_row;
    s32 this_col;
    u32 pad;

    SkinMatrix_Copy(src, &mf_copy); // copy input matrix (mf) to mf_copy
    SkinMatrix_SetToIdentity(dest); // turn input matrix (mf) into identity
    for (this_row = 0; this_row != 4; this_row++) {
        for (this_col = this_row; (this_col < 4) && (fabsf(mf_copy.mf[this_row][this_col]) < 0.0005f); this_col++) {}
        this_col = this_col;
        if (this_col == 4) {
            // reaching col = 4 means the row is either all 0 or a duplicate row.
            // therefore singular matrix (0 determinant).

            osSyncPrintf("\x1b[43;30m");
            osSyncPrintf("Skin_Matrix_InverseMatrix():逆行列つくれません\n");
            osSyncPrintf("\x1b[m");
            return 2;
        }

        if (this_col != this_row) { // responsible for swapping columns if zero diagonal
            for (i = 0; i != 4; i++) {
                temp1 = mf_copy.mf[i][this_col];
                mf_copy.mf[i][this_col] = mf_copy.mf[i][this_row];
                mf_copy.mf[i][this_row] = temp1;

                temp1 = dest->mf[i][this_col];
                dest->mf[i][this_col] = dest->mf[i][this_row];
                dest->mf[i][this_row] = temp1;
            }
        }

        diag_element = mf_copy.mf[this_row][this_row];
        // Scale this whole column s.t. the diag element = 1
        mf_copy.mf[0][this_row] = mf_copy.mf[0][this_row] / diag_element;
        dest->mf[0][this_row] = dest->mf[0][this_row] / diag_element;
        mf_copy.mf[1][this_row] = mf_copy.mf[1][this_row] / diag_element;
        dest->mf[1][this_row] = dest->mf[1][this_row] / diag_element;
        mf_copy.mf[2][this_row] = mf_copy.mf[2][this_row] / diag_element;
        dest->mf[2][this_row] = dest->mf[2][this_row] / diag_element;
        mf_copy.mf[3][this_row] = mf_copy.mf[3][this_row] / diag_element;
        dest->mf[3][this_row] = dest->mf[3][this_row] / diag_element;

        // col i = col i - a * col j
        for (k = 0; k != 4; k++) { //
            if (k != this_row) {
                temp2 = mf_copy.mf[this_row][k];
                mf_copy.mf[0][k] = mf_copy.mf[0][k] - (mf_copy.mf[0][this_row] * temp2);
                dest->mf[0][k] = dest->mf[0][k] - (dest->mf[0][this_row] * temp2);
                mf_copy.mf[1][k] = mf_copy.mf[1][k] - (mf_copy.mf[1][this_row] * temp2);
                dest->mf[1][k] = dest->mf[1][k] - (dest->mf[1][this_row] * temp2);
                mf_copy.mf[2][k] = mf_copy.mf[2][k] - (mf_copy.mf[2][this_row] * temp2);
                dest->mf[2][k] = dest->mf[2][k] - (dest->mf[2][this_row] * temp2);
                mf_copy.mf[3][k] = mf_copy.mf[3][k] - (mf_copy.mf[3][this_row] * temp2);
                dest->mf[3][k] = dest->mf[3][k] - (dest->mf[3][this_row] * temp2);
            }
        }
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/func_800A73E0.s")
#endif

// Output matrix scales x,y,z components of vector or x,y,z rows of matrix when applied on LHS
void SkinMatrix_Scale(MtxF* mf, f32 xScale, f32 yScale, f32 zScale) {
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
    mf->xx = xScale;
    mf->yy = yScale;
    mf->zz = zScale;
}

// output is (roll rotation matrix) * (pitch rotation matrix) * (yaw rotation matrix)
void SkinMatrix_RotateRPY(MtxF* mf, s16 roll, s16 pitch, s16 yaw) {
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
        if (1) {} // required to match
        if (1) {} // required to match
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

        if (1) {} // required to match
        zy = mf->zy;
        yy = mf->yy;
        mf->yy = (yy * cos2) + (zy * sin2);
        mf->zy = (zy * cos2) - (yy * sin2);

        if (cos2) {} // required to match
        mf->yz = mf->zz * sin2;
        mf->zz = mf->zz * cos2;
    } else {
        mf->yz = 0;
    }
}

// output is (yaw rotation matrix) * (roll rotation matrix) * (pitch rotation matrix)
void SkinMatrix_RotateYRP(MtxF* mf, s16 yaw, s16 roll, s16 pitch) {
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
        if (1) {} // required to match
        if (1) {} // required to match
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
        if (1) {} // required to match
        yz = mf->yz;
        xz = mf->xz;
        mf->xz = (xz * cos2) + (yz * sin2);
        mf->yz = (yz * cos2) - (xz * sin2);
        if (cos2) {} // required to match
        mf->xy = mf->yy * sin2;
        mf->yy = mf->yy * cos2;
    } else {
        mf->xy = 0;
    }
}

// Output matrix translates vector by dx in x direction, dy in y direction, dz in z direction
void SkinMatrix_Translate(MtxF* mf, f32 dx, f32 dy, f32 dz) {
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
    mf->wx = dx;
    mf->wy = dy;
    mf->wz = dz;
}

// output matrix scales, then rotates (RPY), then translates the vector
void SkinMatrix_ScaleRotateRPYTranslate(MtxF* mf, f32 scaleX, f32 scaleY, f32 scaleZ, s16 roll, s16 pitch, s16 yaw,
                                        f32 dx, f32 dy, f32 dz) {
    MtxF mft1;
    MtxF mft2;

    SkinMatrix_Translate(mf, dx, dy, dz);            // translation matrix
    SkinMatrix_RotateRPY(&mft1, roll, pitch, yaw);   // rotation matrix
    SkinMatrix_MtxFMtxFMult(mf, &mft1, &mft2);       // MtxFMtxFMult
    SkinMatrix_Scale(&mft1, scaleX, scaleY, scaleZ); // scale matrix
    SkinMatrix_MtxFMtxFMult(&mft2, &mft1, mf);       // MtxFMtxFMult
}
// output matrix scales, then rotates (YRP), then translates the vector
void SkinMatrix_ScaleRotateYRPTranslate(MtxF* mf, f32 scaleX, f32 scaleY, f32 scaleZ, s16 yaw, s16 roll, s16 pitch,
                                        f32 dx, f32 dy, f32 dz) {
    MtxF mft1;
    MtxF mft2;

    SkinMatrix_Translate(mf, dx, dy, dz);
    SkinMatrix_RotateYRP(&mft1, yaw, roll, pitch);
    SkinMatrix_MtxFMtxFMult(mf, &mft1, &mft2);
    SkinMatrix_Scale(&mft1, scaleX, scaleY, scaleZ);
    SkinMatrix_MtxFMtxFMult(&mft2, &mft1, mf);
}

// output matrix rotates (YRP), then translates the vector
void SkinMatrix_RotateRPYTranslate(MtxF* mf, s16 roll, s16 pitch, s16 yaw, f32 dx, f32 dy, f32 dz) {
    MtxF mft1;
    MtxF mft2;

    SkinMatrix_Translate(&mft2, dx, dy, dz);
    SkinMatrix_RotateRPY(&mft1, roll, pitch, yaw);
    SkinMatrix_MtxFMtxFMult(&mft2, &mft1, mf);
}

void SkinMatrix_Vec3fToVec3s(Vec3f* src, Vec3s* dest) {
    dest->x = src->x;
    dest->y = src->y;
    dest->z = src->z;
}

// SkinMatrix_Vec3sToVec3f
void SkinMatrix_Vec3sToVec3f(Vec3s* src, Vec3f* dest) {
    dest->x = src->x;
    dest->y = src->y;
    dest->z = src->z;
}

// SkinMatrix_MtxFToMtx
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

Mtx* func_800A7E70(GraphicsContext* gfxCtx, MtxF* src) {
    Mtx* displayList = Graph_Alloc(gfxCtx, 0x40);

    if (displayList == 0) {
        osSyncPrintf("Skin_Matrix_to_Mtx_new() 確保失敗:NULLを返して終了\n", displayList);
        return 0;
    }
    SkinMatrix_MtxFToMtx(src, displayList);
    return displayList;
}

// Rotation matrix rotates by angle a around the vector with components (x,y,z)
/*
My impression is that this is functionally correct but I cannot be 100% sure of
equivalence because diff output is not very close to matching.
*/
#ifdef NON_EQUIVALENT
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
    ;
    mf->zw = 0.0f;

    mf->wx = 0.0f;
    mf->wy = 0.0f;
    mf->wz = 0.0f;
    mf->ww = 1.0f;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/func_800A7EC0.s")
#endif

// unknown
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
