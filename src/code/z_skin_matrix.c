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

//SkinMatrix_Copy
void func_800A735C(MtxF* src, MtxF* dest) {
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

#ifdef NON_MATCHING
// SkinMatrix_Rotation
void func_800A7704(MtxF* arg0, s16 arg1, s16 arg2, s16 arg3) {
    f32 sin3;
    f32 cos3;
    f32 sin2;
    f32 cos2;
    f32 sin1;
    f32 cos1;

    f32 zx;
    f32 yx;
    f32 zy;
    f32 yy;
    f32 zz;

    sin3 = Math_Sins(arg3);
    cos3 = Math_Coss(arg3);
    arg0->yy = cos3;
    arg0->yx = -sin3;

    arg0->zw = 0.0f;
    arg0->yw = 0.0f;
    arg0->xw = 0.0f;

    arg0->wz = 0.0f;
    arg0->wy = 0.0f;
    arg0->wx = 0.0f;
    arg0->ww = 1.0f;

    if (arg2 != 0) {
        sin2 = Math_Sins(arg2);
        cos2 = Math_Coss(arg2);

        arg0->xz = -sin2;
        arg0->xy = cos2 * sin3;
        arg0->xx = cos2 * cos3;
        
        arg0->zz = cos2;
        arg0->zy = sin2 * sin3;
        arg0->zx = sin2 * cos3;
                
    } else {
        arg0->xx = cos3;
        arg0->xy = sin3;
        arg0->zy = 0.0f;
        arg0->zx = 0.0f;
        arg0->xz = 0.0f;
        arg0->zz = 1.0f;
    }
    if (arg1 != 0) {
        sin1 = Math_Sins(arg1);
        cos1 = Math_Coss(arg1);

        zx = arg0->zx;
        yx = arg0->yx;
        zy = arg0->zy;
        yy = arg0->yy;

        arg0->yx = (f32) ((yx * cos1) + (zx * sin1));
        arg0->zx = (f32) ((zx * cos1) - (yx * sin1));
        arg0->yy = (f32) (yy * cos1 + zy * sin1);
        arg0->zy = (f32) (zy * cos1 - yy * sin1);
        arg0->yz = (f32) (arg0->zz * sin1);
        arg0->zz = (f32) (arg0->zz * cos1);


        return;

    } else {
        arg0->yz = 0.0f;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/func_800A7704.s")
#endif

// This function is identical to the last but with x->z, z->y, y->x
// and arg3-> arg2, arg2->arg1, arg1->arg3
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

//RotateTranslateScale
void func_800A7A84(MtxF* mf, f32 arg1, f32 arg2, f32 arg3, s16 arg4, s16 arg5, s16 arg6, f32 arg7, f32 arg8, f32 arg9) {
    MtxF mft1;
    MtxF mft2;

    func_800A7A24(mf, arg7, arg8, arg9); // translation matrix
    func_800A7704(&mft1, arg4, arg5, arg6); // rotation matrix
    func_800A6FA0(mf, &mft1, &mft2);// MtxFMtxFMult
    func_800A76A4(&mft1, arg1, arg2, arg3); // scale matrix
    func_800A6FA0(&mft2, &mft1, mf); // MtxFMtxFMult
}
//RotateTranslateScale (different rotation)
void func_800A7B04(MtxF* mf, f32 arg1, f32 arg2, f32 arg3, s16 arg4, s16 arg5, s16 arg6, f32 arg7, f32 arg8, f32 arg9) {
    MtxF mft1;
    MtxF mft2;

    func_800A7A24(mf, arg7, arg8, arg9); // translation matrix
    func_800A7894(&mft1, arg4, arg5, arg6); // rotation matrix (the other one)
    func_800A6FA0(mf, &mft1, &mft2);// MtxFMtxFMult
    func_800A76A4(&mft1, arg1, arg2, arg3); // scale matrix
    func_800A6FA0(&mft2, &mft1, mf); // MtxFMtxFMult
}

//TranslateRotate
void func_800A7B84(MtxF* mf, s16 arg1, s16 arg2, s16 arg3, f32 arg4, f32 arg5, f32 arg6) {
    MtxF mft1;
    MtxF mft2;

    func_800A7A24(&mft2, arg4, arg5, arg6); // translation matrix
    func_800A7704(&mft1, arg1, arg2, arg3); // rotation matrix
    func_800A6FA0(&mft2, &mft1, mf); // MtxFMtxFMult
}

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


//MtxF to Mtx
void func_800A7C60(MtxF* src, u16* m1) {
    s32 temp; 
    u16* m2 = &m1[16];
    s16 ffff_temp;
    
    ffff_temp = 0xFFFF;
    temp = src->xx * 0x10000;
    m1[0] = (temp >> 0x10) & ffff_temp;
    m1[16+0] = temp & ffff_temp;

    temp = src->xy * 0x10000;
    m1[1] = (temp >> 0x10) & ffff_temp;
    m1[16+1] = temp & ffff_temp;

    temp = src->xz * 0x10000;
    m1[2] = (temp >> 0x10) & ffff_temp;
    m1[16+2] = temp & ffff_temp;

    temp = src->xw * 0x10000;
    m1[3] = (temp >> 0x10) & ffff_temp;
    m1[16+3] = temp & ffff_temp;

    ffff_temp = 0xFFFF;
    temp = src->yx * 0x10000;
    m1[4] = (temp >> 0x10) & ffff_temp;
    m1[16+4] = temp & ffff_temp;

    temp = src->yy * 0x10000;
    m1[5] = (temp >> 0x10) & ffff_temp;
    m1[16+5] = temp & ffff_temp;

    temp = src->yz * 0x10000;
    m1[6] = (temp >> 0x10) & ffff_temp;
    m1[16+6] = temp & ffff_temp;

    temp = src->yw * 0x10000;
    m1[7] = (temp >> 0x10) & ffff_temp;
    m1[16+7] = temp & ffff_temp;

    ffff_temp = 0xFFFF;
    temp = src->zx * 0x10000;
    m1[8] = (temp >> 0x10) & ffff_temp;
    m1[16+8] = temp & ffff_temp;

    temp = src->zy * 0x10000;
    m1[9] = (temp >> 0x10) & ffff_temp;
    m2[9] = temp & ffff_temp;

    temp = src->zz * 0x10000;
    m1[10] = (temp >> 0x10) & ffff_temp;
    m2[10] = temp & ffff_temp;

    temp = src->zw * 0x10000;
    m1[11] = (temp >> 0x10) & ffff_temp;
    m2[11] = temp & ffff_temp;

    ffff_temp = 0xFFFF;
    temp = src->wx * 0x10000;
    m1[12] = (temp >> 0x10) & ffff_temp;
    m2[12] = temp & ffff_temp;

    temp = src->wy * 0x10000;
    m1[13] = (temp >> 0x10) & ffff_temp;
    m2[13] = temp & ffff_temp;

    temp = src->wz * 0x10000;
    m1[14] = (temp >> 0x10) & ffff_temp;
    m2[14] = temp & ffff_temp;

    temp = src->ww * 0x10000;
    m1[15] = (temp >> 0x10) & ffff_temp;
    m2[15] = temp & ffff_temp;
}
//#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/func_800A7C60.s")

/*char D_80140810[] = "Skin_Matrix_to_Mtx_new() 確保失敗:NULLを返して終了\n";*/
Mtx* func_800A7E70(GraphicsContext* gfxCtx, MtxF* src) {
    Mtx* displayList = Graph_Alloc(gfxCtx,0x40);

    if (displayList == 0) {
        osSyncPrintf("Skin_Matrix_to_Mtx_new() 確保失敗:NULLを返して終了\n", displayList);
        return 0;
    }
    func_800A7C60(src,displayList);
    return displayList;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/func_800A7EC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/func_800A8030.s")
