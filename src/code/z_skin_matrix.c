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

//SkinMatrix_MtxFMtxFMult
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
    dest->yw =  (rx * cx) + (ry * cy) + (rz * cz) + (rw * cw);

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

MtxF D_8012A4A0 = {1.0f, 0.0f, 0.0f, 0.0f,
                   0.0f, 1.0f, 0.0f, 0.0f,
                   0.0f, 0.0f, 1.0f, 0.0f,
                   0.0f, 0.0f, 0.0f, 1.0f};

// SkinMatrix_Ident
void func_800A72FC(MtxF** mf) {
    *mf = &D_8012A4A0;
}

// SkinMatrix_Ident2
void func_800A730C(MtxF* mf) {
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
