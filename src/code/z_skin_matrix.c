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

// Inverse matrix
// Saved register usage differences and probably regalloc
#ifdef NON_MATCHING
int func_800A73E0(MtxF* mf_src, MtxF* mf_dest) {
    MtxF mf_copy;
    s32 i;
    s32 k;
    f32 temp1;
    f32 temp2;
    f32 diag_ele;
    s32 this_row;
    s32 this_col;
    u32 pad;
    
    func_800A735C(mf_src,&mf_copy); // copy input matrix (mf) to mf_copy 
    func_800A730C(mf_dest);// turn input matrix (mf) into identity
    for (this_row = 0; this_row != 4; this_row++)
    {
        
        for (this_col = this_row; (this_col < 4) && (fabsf(mf_copy.mf[this_row][this_col]) < 0.0005f); this_col++){     
              
        }
        this_col = this_col;
        if (this_col == 4) { // if this col = 4 then we know we've found a singular matrix (0 determinant)
            
            osSyncPrintf("\x1b[43;30m");
            osSyncPrintf("Skin_Matrix_InverseMatrix():逆行列つくれません\n");
            osSyncPrintf("\x1b[m");
            return 2;
        }
        
        

        if (this_col != this_row) { //if not on diagonal (responsible for swapping columns if zero diagonal)
            for (i = 0; i != 4; i++) // continue looping of loop var is not 4. only two loops (changes x and y then z and w?)
            {
                
                // swap around mf_copy[x][col] and mf_copy[x][row]
                temp1 = mf_copy.mf[i][this_col];
                mf_copy.mf[i][this_col] = mf_copy.mf[i][this_row];
                mf_copy.mf[i][this_row] = temp1;
                
                // swap around mf[x][col] and mf[x][row]
                temp1 = mf_dest->mf[i][this_col];
                mf_dest->mf[i][this_col] = mf_dest->mf[i][this_row];
                mf_dest->mf[i][this_row] = temp1;
            } 
        }
        
        diag_ele = mf_copy.mf[this_row][this_row];
        // Scale this whole column s.t. the diag element = 1
        mf_copy.mf[0][this_row] = mf_copy.mf[0][this_row] / diag_ele;
        mf_dest->mf[0][this_row]= mf_dest->mf[0][this_row]/ diag_ele;
        mf_copy.mf[1][this_row] = mf_copy.mf[1][this_row] / diag_ele;
        mf_dest->mf[1][this_row]= mf_dest->mf[1][this_row]/ diag_ele;
        mf_copy.mf[2][this_row] = mf_copy.mf[2][this_row] / diag_ele;
        mf_dest->mf[2][this_row]= mf_dest->mf[2][this_row]/ diag_ele;
        mf_copy.mf[3][this_row] = mf_copy.mf[3][this_row] / diag_ele;
        mf_dest->mf[3][this_row]= mf_dest->mf[3][this_row]/ diag_ele;
        

        // Rowi = Rowi - a * Rowj stuff   
        for (k = 0; k != 4; k++){//
            if (k != this_row){
                temp2 = mf_copy.mf[this_row][k];
                mf_copy.mf[0][k] = mf_copy.mf[0][k] - (mf_copy.mf[0][this_row]  * temp2);
                mf_dest->mf[0][k]= mf_dest->mf[0][k]- (mf_dest->mf[0][this_row] * temp2);
                mf_copy.mf[1][k] = mf_copy.mf[1][k] - (mf_copy.mf[1][this_row]  * temp2);
                mf_dest->mf[1][k]= mf_dest->mf[1][k]- (mf_dest->mf[1][this_row] * temp2);
                mf_copy.mf[2][k] = mf_copy.mf[2][k] - (mf_copy.mf[2][this_row]  * temp2);
                mf_dest->mf[2][k]= mf_dest->mf[2][k]- (mf_dest->mf[2][this_row] * temp2);
                mf_copy.mf[3][k] = mf_copy.mf[3][k] - (mf_copy.mf[3][this_row]  * temp2);
                mf_dest->mf[3][k]= mf_dest->mf[3][k]- (mf_dest->mf[3][this_row] * temp2);
            }
            
        }
        
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/func_800A73E0.s")
#endif

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

// SkinMatrix_RotateRPY
void func_800A7704(MtxF* mf, s16 roll, s16 pitch, s16 yaw) {
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

// SkinMatrix_RotateYRP
void func_800A7894(MtxF* mf, s16 yaw, s16 roll, s16 pitch) {
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
        if(cos2){}  // required to match
        mf->xy = mf->yy * sin2;
        mf->yy = mf->yy * cos2;
    } else {
        mf->xy = 0;
    }
}

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
void func_800A7C60(MtxF* src, Mtx* dest) {
    s32 temp; 
    u16* m1 = (u16*)&dest->m[0][0];
    u16* m2 = (u16*)&dest->m[2][0];

    temp = src->xx * 0x10000;
    m1[0] = (temp >> 0x10);
    m1[16+0] = temp & 0xFFFF;

    temp = src->xy * 0x10000;
    m1[1] = (temp >> 0x10);
    m1[16+1] = temp & 0xFFFF;

    temp = src->xz * 0x10000;
    m1[2] = (temp >> 0x10);
    m1[16+2] = temp & 0xFFFF;

    temp = src->xw * 0x10000;
    m1[3] = (temp >> 0x10);
    m1[16+3] = temp & 0xFFFF;

    temp = src->yx * 0x10000;
    m1[4] = (temp >> 0x10);
    m1[16+4] = temp & 0xFFFF;

    temp = src->yy * 0x10000;
    m1[5] = (temp >> 0x10);
    m1[16+5] = temp & 0xFFFF;

    temp = src->yz * 0x10000;
    m1[6] = (temp >> 0x10);
    m1[16+6] = temp & 0xFFFF;

    temp = src->yw * 0x10000;
    m1[7] = (temp >> 0x10);
    m1[16+7] = temp & 0xFFFF;

    temp = src->zx * 0x10000;
    m1[8] = (temp >> 0x10);
    m1[16+8] = temp & 0xFFFF;

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

// Rotation matrix rotates by angle t around the vector with components (x,y,z)
// Can't get blocks in right order. Should be functional but not very close to matching.

#ifdef NON_MATCHING
void func_800A7EC0(MtxF *mf, s16 t, f32 x, f32 y, f32 z) {
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

    sin = Math_Sins(t);
    cos = Math_Coss(t);

    ct = 1.0f - cos;
    sx = sin * x;
    sy = sin * y;
    sz = sin * z;

    xx = x*x;
    xy = x*y;
    xz = x*z;
    yy = y*y;
    yz = y*z;
    zz = z*z;

    mf->xx = (f32) ct * xx + cos;
    mf->xy = (f32) ((ct * xy) + sz);
    mf->xz = (f32) ((ct * xz) - sy);
    mf->xw = 0.0f;
    
    mf->yx = (f32) ((ct * (xy)) - sz);
    mf->yy = (f32) ct * yy + cos;
    mf->yz = (f32) ((ct * (yz)) + sx);
    mf->yw = 0.0f;
    
    mf->zx = (f32) ((ct * (xz)) + sy);
    mf->zy = (f32) ((ct * (yz)) - sx);
    mf->zz = (f32) ct * zz + cos;;
    mf->zw = 0.0f;
    
    mf->wx = 0.0f;
    mf->wy = 0.0f;
    mf->wz = 0.0f;
    mf->ww = 1.0f;
    
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/func_800A7EC0.s")
#endif

//no idea what this does
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
