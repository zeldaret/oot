#include <ultra64.h>
#include <global.h>

// SkinMatrix_Vec3fMtxFMultXYZW (same as function below but also gives w component)
void func_800A6E10(MtxF* mf, Vec3f* src, Vec3f* xyzDest, f32* wDest) {
    xyzDest->x = mf->wx + ((src->x * mf->xx) + (src->y * mf->yx) + (src->z * mf->zx));
    xyzDest->y = mf->wy + ((src->x * mf->xy) + (src->y * mf->yy) + (src->z * mf->zy));
    xyzDest->z = mf->wz + ((src->x * mf->xz) + (src->y * mf->yz) + (src->z * mf->zz));
    *wDest = mf->ww + ((src->x * mf->xw) + (src->y * mf->yw) + (src->z * mf->zw));
}

// SkinMatrix_Vec3fMtxFMultXYZ
void func_800A6EF4(MtxF* mf, Vec3f* src, Vec3f* dest) {
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

/*
    dest->xx =  ((((row1 * mtxA->xx) + (row2 * mtxA->xy)) + (row3 * mtxA->xz)) + (row4 * mtxA->xw));
    dest->yx =  ((((row1 * mtxA->yx) + (row2 * mtxA->yy)) + (row3 * mtxA->yz)) + (row4 * mtxA->yw));
    dest->zx =  ((((row1 * mtxA->zx) + (row2 * mtxA->zy)) + (row3 * mtxA->zz)) + (row4 * mtxA->zw));
    dest->wx =  ((((row1 * mtxA->wx) + (row2 * mtxA->wy)) + (row3 * mtxA->wz)) + (row4 * mtxA->ww));
    dest->xy =  ((((mtxB->xy * mtxA->xx) + (mtxB->yy * mtxA->xy)) + (mtxB->zy * mtxA->xz)) + (mtxB->wy * mtxA->xw));
    dest->yy =  ((((mtxB->xy * mtxA->yx) + (mtxB->yy * mtxA->yy)) + (mtxB->zy * mtxA->yz)) + (mtxB->wy * mtxA->yw));
    dest->zy =  ((((mtxB->xy * mtxA->zx) + (mtxB->yy * mtxA->zy)) + (mtxB->zy * mtxA->zz)) + (mtxB->wy * mtxA->zw));
    dest->wy =  ((((mtxB->xy * mtxA->wx) + (mtxB->yy * mtxA->wy)) + (mtxB->zy * mtxA->wz)) + (mtxB->wy * mtxA->ww));
    dest->xz =  ((((mtxB->xz * mtxA->xx) + (mtxB->yz * mtxA->xy)) + (mtxB->zz * mtxA->xz)) + (mtxB->wz * mtxA->xw));
    dest->yz =  ((((mtxB->xz * mtxA->yx) + (mtxB->yz * mtxA->yy)) + (mtxB->zz * mtxA->yz)) + (mtxB->wz * mtxA->yw));
    dest->zz =  ((((mtxB->xz * mtxA->zx) + (mtxB->yz * mtxA->zy)) + (mtxB->zz * mtxA->zz)) + (mtxB->wz * mtxA->zw));
    dest->wz =  ((((mtxB->xz * mtxA->wx) + (mtxB->yz * mtxA->wy)) + (mtxB->zz * mtxA->wz)) + (mtxB->wz * mtxA->ww));
    dest->xw =  ((((mtxB->xw * mtxA->xx) + (mtxB->yw * mtxA->xy)) + (mtxB->zw * mtxA->xz)) + (mtxB->ww * mtxA->xw));
    dest->yw =  ((((mtxB->xw * mtxA->yx) + (mtxB->yw * mtxA->yy)) + (mtxB->zw * mtxA->yz)) + (mtxB->ww * mtxA->yw));
    dest->zw =  ((((mtxB->xw * mtxA->zx) + (mtxB->yw * mtxA->zy)) + (mtxB->zw * mtxA->zz)) + (mtxB->ww * mtxA->zw));
    dest->ww =  ((((mtxB->xw * mtxA->wx) + (mtxB->yw * mtxA->wy)) + (mtxB->zw * mtxA->wz)) + (mtxB->ww * mtxA->ww));
*/
/*
    f32 row1;
    f32 row2;
    f32 row3;
    f32 row4;

    row1 = mfB->xx;
    row2 = mfB->yx;
    row3 = mfB->zx;
    row4 = mfB->wx; 
    dest->xx =  ((((row1 * mfA->xx) + (row2 * mfA->xy)) + (row3 * mfA->xz)) + (row4 * mfA->xw));
    dest->yx =  ((((row1 * mfA->yx) + (row2 * mfA->yy)) + (row3 * mfA->yz)) + (row4 * mfA->yw));
    dest->zx =  ((((row1 * mfA->zx) + (row2 * mfA->zy)) + (row3 * mfA->zz)) + (row4 * mfA->zw));
    dest->wx =  ((((row1 * mfA->wx) + (row2 * mfA->wy)) + (row3 * mfA->wz)) + (row4 * mfA->ww));
    row1 = mfB->xy; 
    row2 = mfB->yy; 
    row3 = mfB->zy; 
    row4 = mfB->wy;
    dest->xy =  ((((row1 * mfA->xx) + (row2 * mfA->xy)) + (row3 * mfA->xz)) + (row4 * mfA->xw));
    dest->yy =  ((((row1 * mfA->yx) + (row2 * mfA->yy)) + (row3 * mfA->yz)) + (row4 * mfA->yw));
    dest->zy =  ((((row1 * mfA->zx) + (row2 * mfA->zy)) + (row3 * mfA->zz)) + (row4 * mfA->zw));
    dest->wy =  ((((row1 * mfA->wx) + (row2 * mfA->wy)) + (row3 * mfA->wz)) + (row4 * mfA->ww));
    row1 = mfB->xz;
    row2 = mfB->yz;
    row3 = mfB->zz;
    row4 = mfB->wz;
    dest->xz =  ((((row1 * mfA->xx) + (row2 * mfA->xy)) + (row3 * mfA->xz)) + (row4 * mfA->xw));
    dest->yz =  ((((row1 * mfA->yx) + (row2 * mfA->yy)) + (row3 * mfA->yz)) + (row4 * mfA->yw));
    dest->zz =  ((((row1 * mfA->zx) + (row2 * mfA->zy)) + (row3 * mfA->zz)) + (row4 * mfA->zw));
    dest->wz =  ((((row1 * mfA->wx) + (row2 * mfA->wy)) + (row3 * mfA->wz)) + (row4 * mfA->ww));
    row1 = mfB->xw;
    row2 = mfB->yw;
    row3 = mfB->zw;
    row4 = mfB->ww;
    dest->xw =  ((((row1 * mfA->xx) + (row2 * mfA->xy)) + (row3 * mfA->xz)) + (row4 * mfA->xw));
    dest->yw =  ((((row1 * mfA->yx) + (row2 * mfA->yy)) + (row3 * mfA->yz)) + (row4 * mfA->yw));
    dest->zw =  ((((row1 * mfA->zx) + (row2 * mfA->zy)) + (row3 * mfA->zz)) + (row4 * mfA->zw));
    dest->ww =  ((((row1 * mfA->wx) + (row2 * mfA->wy)) + (row3 * mfA->wz)) + (row4 * mfA->ww));
*/
void func_800A6FA0(MtxF* mfB, MtxF* mfA, MtxF* dest) {
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
    dest->yw =  (cx * rx) + (cy * ry) + (cz * rz) + (cw * rw);

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


#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/func_800A72FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/func_800A730C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/func_800A735C.s")

// This one is inverse matrix, quite an intricate 1
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/func_800A73E0.s")

// SkinMatrix_Scale
// (output matrix scales x,y,z components of vector or x,y,z columns of matrix if applied on RHS)/
void func_800A76A4(MtxF* mf, f32 xScale, f32 yScale, f32 zScale) {
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

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/func_800A7704.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/func_800A7894.s")

// SkinMatrix_Translate 
void func_800A7A24(MtxF* mf, f32 dx, f32 dy, f32 dz) {
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

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/func_800A7A84.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/func_800A7B04.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/func_800A7B84.s")

// Called "Math_Vec3fToVec3s" in in z_lib.c:
void func_800A7BE4(Vec3f* src, Vec3s* dest) {
    dest->x = src->x;
    dest->y = src->y;
    dest->z = src->z;
}

// Called "Math_Vec3sToVec3f" in z_lib.c:
void func_800A7C20(Vec3s* src, Vec3f* dest) {
    dest->x = src->x;
    dest->y = src->y;
    dest->z = src->z;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/func_800A7C60.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/func_800A7E70.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/func_800A7EC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/func_800A8030.s")
