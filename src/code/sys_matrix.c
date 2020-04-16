#include <ultra64.h>
#include <global.h>

// clang-format off
Mtx gMtxClear = {
    65536,     0,     1,     0,
        0, 65536,     0,     1,
        0,     0,     0,     0,
        0,     0,     0,     0,
};

MtxF gMtxFClear = {
    1.0f, 0.0f, 0.0f, 0.0f,
    0.0f, 1.0f, 0.0f, 0.0f,
    0.0f, 0.0f, 1.0f, 0.0f,
    0.0f, 0.0f, 0.0f, 1.0f,
};
// clang-format on

MtxF* sMatrixStack;   // "Matrix_stack"
MtxF* sCurrentMatrix; // "Matrix_now"

void Matrix_Init(GameState* gameState) {
    sCurrentMatrix = Game_Alloc(gameState, 20 * sizeof(MtxF), "../sys_matrix.c", 153);
    sMatrixStack = sCurrentMatrix;
}

void Matrix_Push(void) {
    Matrix_MtxFCopy(sCurrentMatrix + 1, sCurrentMatrix);
    sCurrentMatrix++;
}

void Matrix_Pull(void) {
    sCurrentMatrix--;
    if (sCurrentMatrix < sMatrixStack) {
        __assert("Matrix_now >= Matrix_stack", "../sys_matrix.c", 176);
    }
}

void Matrix_Get(MtxF* dest) {
    Matrix_MtxFCopy(dest, sCurrentMatrix);
}

void Matrix_Put(MtxF* src) {
    Matrix_MtxFCopy(sCurrentMatrix, src);
}

MtxF* Matrix_GetCurrent(void) {
    return sCurrentMatrix;
}

void Matrix_Mult(MtxF* mf, u8 mode) {
    MtxF* cmf = Matrix_GetCurrent();

    if (mode == MTXMODE_APPLY) {
        func_800A6FA0(cmf, mf, cmf);
    } else {
        Matrix_MtxFCopy(sCurrentMatrix, mf);
    }
}

void Matrix_Translate(f32 x, f32 y, f32 z, u8 mode) {
    MtxF* cmf = sCurrentMatrix;
    f32 tx;
    f32 ty;

    if (mode == MTXMODE_APPLY) {
        tx = cmf->xx;
        ty = cmf->yx;
        cmf->wx += tx * x + ty * y + cmf->zx * z;
        tx = cmf->xy;
        ty = cmf->yy;
        cmf->wy += tx * x + ty * y + cmf->zy * z;
        tx = cmf->xz;
        ty = cmf->yz;
        cmf->wz += tx * x + ty * y + cmf->zz * z;
        tx = cmf->xw;
        ty = cmf->yw;
        cmf->ww += tx * x + ty * y + cmf->zw * z;
    } else {
        func_800A7A24(cmf, x, y, z);
    }
}

void Matrix_Scale(f32 x, f32 y, f32 z, u8 mode) {
    MtxF* cmf = sCurrentMatrix;

    if (mode == MTXMODE_APPLY) {
        cmf->xx *= x;
        cmf->xy *= x;
        cmf->xz *= x;
        cmf->yx *= y;
        cmf->yy *= y;
        cmf->yz *= y;
        cmf->zx *= z;
        cmf->zy *= z;
        cmf->zz *= z;
        cmf->xw *= x;
        cmf->yw *= y;
        cmf->zw *= z;
    } else {
        func_800A76A4(cmf, x, y, z);
    }
}

void Matrix_RotateX(f32 x, u8 mode) {
    MtxF* cmf;
    f32 sin;
    f32 cos;
    f32 temp1;
    f32 temp2;

    if (mode == MTXMODE_APPLY) {
        if (x != 0) {
            cmf = sCurrentMatrix;

            sin = sinf(x);
            cos = cosf(x);

            temp1 = cmf->yx;
            temp2 = cmf->zx;
            cmf->yx = temp1 * cos + temp2 * sin;
            cmf->zx = temp2 * cos - temp1 * sin;

            temp1 = cmf->yy;
            temp2 = cmf->zy;
            cmf->yy = temp1 * cos + temp2 * sin;
            cmf->zy = temp2 * cos - temp1 * sin;

            temp1 = cmf->yz;
            temp2 = cmf->zz;
            cmf->yz = temp1 * cos + temp2 * sin;
            cmf->zz = temp2 * cos - temp1 * sin;

            temp1 = cmf->yw;
            temp2 = cmf->zw;
            cmf->yw = temp1 * cos + temp2 * sin;
            cmf->zw = temp2 * cos - temp1 * sin;
        }
    } else {
        cmf = sCurrentMatrix;

        if (x != 0) {
            sin = sinf(x);
            cos = cosf(x);
        } else {
            sin = 0.0f;
            cos = 1.0f;
        }

        cmf->xy = 0.0f;
        cmf->xz = 0.0f;
        cmf->xw = 0.0f;
        cmf->yx = 0.0f;
        cmf->yw = 0.0f;
        cmf->zx = 0.0f;
        cmf->zw = 0.0f;
        cmf->wx = 0.0f;
        cmf->wy = 0.0f;
        cmf->wz = 0.0f;
        cmf->xx = 1.0f;
        cmf->ww = 1.0f;
        cmf->yy = cos;
        cmf->zz = cos;
        cmf->yz = sin;
        cmf->zy = -sin;
    }
}

void Matrix_RotateY(f32 y, u8 mode) {
    MtxF* cmf;
    f32 sin;
    f32 cos;
    f32 temp1;
    f32 temp2;

    if (mode == MTXMODE_APPLY) {
        if (y != 0) {
            cmf = sCurrentMatrix;

            sin = sinf(y);
            cos = cosf(y);

            temp1 = cmf->xx;
            temp2 = cmf->zx;
            cmf->xx = temp1 * cos - temp2 * sin;
            cmf->zx = temp1 * sin + temp2 * cos;

            temp1 = cmf->xy;
            temp2 = cmf->zy;
            cmf->xy = temp1 * cos - temp2 * sin;
            cmf->zy = temp1 * sin + temp2 * cos;

            temp1 = cmf->xz;
            temp2 = cmf->zz;
            cmf->xz = temp1 * cos - temp2 * sin;
            cmf->zz = temp1 * sin + temp2 * cos;

            temp1 = cmf->xw;
            temp2 = cmf->zw;
            cmf->xw = temp1 * cos - temp2 * sin;
            cmf->zw = temp1 * sin + temp2 * cos;
        }
    } else {
        cmf = sCurrentMatrix;

        if (y != 0) {
            sin = sinf(y);
            cos = cosf(y);
        } else {
            sin = 0.0f;
            cos = 1.0f;
        }

        cmf->xy = 0.0f;
        cmf->xw = 0.0f;
        cmf->yx = 0.0f;
        cmf->yz = 0.0f;
        cmf->yw = 0.0f;
        cmf->zy = 0.0f;
        cmf->zw = 0.0f;
        cmf->wx = 0.0f;
        cmf->wy = 0.0f;
        cmf->wz = 0.0f;
        cmf->yy = 1.0f;
        cmf->ww = 1.0f;
        cmf->xx = cos;
        cmf->zz = cos;
        cmf->xz = -sin;
        cmf->zx = sin;
    }
}

void Matrix_RotateZ(f32 z, u8 mode) {
    MtxF* cmf;
    f32 sin;
    f32 cos;
    f32 temp1;
    f32 temp2;

    if (mode == MTXMODE_APPLY) {
        if (z != 0) {
            cmf = sCurrentMatrix;

            sin = sinf(z);
            cos = cosf(z);

            temp1 = cmf->xx;
            temp2 = cmf->yx;
            cmf->xx = temp1 * cos + temp2 * sin;
            cmf->yx = temp2 * cos - temp1 * sin;

            temp1 = cmf->xy;
            temp2 = cmf->yy;
            cmf->xy = temp1 * cos + temp2 * sin;
            cmf->yy = temp2 * cos - temp1 * sin;

            temp1 = cmf->xz;
            temp2 = cmf->yz;
            cmf->xz = temp1 * cos + temp2 * sin;
            cmf->yz = temp2 * cos - temp1 * sin;

            temp1 = cmf->xw;
            temp2 = cmf->yw;
            cmf->xw = temp1 * cos + temp2 * sin;
            cmf->yw = temp2 * cos - temp1 * sin;
        }
    } else {
        cmf = sCurrentMatrix;

        if (z != 0) {
            sin = sinf(z);
            cos = cosf(z);
        } else {
            sin = 0.0f;
            cos = 1.0f;
        }

        cmf->xz = 0.0f;
        cmf->xw = 0.0f;
        cmf->yz = 0.0f;
        cmf->yw = 0.0f;
        cmf->zx = 0.0f;
        cmf->zy = 0.0f;
        cmf->zw = 0.0f;
        cmf->wx = 0.0f;
        cmf->wy = 0.0f;
        cmf->wz = 0.0f;
        cmf->zz = 1.0f;
        cmf->ww = 1.0f;
        cmf->xx = cos;
        cmf->yy = cos;
        cmf->xy = sin;
        cmf->yx = -sin;
    }
}

/*
 * Rotates the top of the matrix stack by `z` degrees, then
 * rotates that matrix by `y` degrees, then rotates that matrix
 * by `x` degrees. (roll-pitch-yaw)
 * Original Name: Matrix_RotateXYZ, changed to reflect rotation order.
 */
void Matrix_RotateZYX(s16 x, s16 y, s16 z, u8 mode) {
    MtxF* cmf = sCurrentMatrix;
    f32 temp1;
    f32 temp2;
    f32 sin;
    f32 cos;

    if (mode == MTXMODE_APPLY) {
        sin = Math_Sins(z);
        cos = Math_Coss(z);

        temp1 = cmf->xx;
        temp2 = cmf->yx;
        cmf->xx = temp1 * cos + temp2 * sin;
        cmf->yx = temp2 * cos - temp1 * sin;

        temp1 = cmf->xy;
        temp2 = cmf->yy;
        cmf->xy = temp1 * cos + temp2 * sin;
        cmf->yy = temp2 * cos - temp1 * sin;

        temp1 = cmf->xz;
        temp2 = cmf->yz;
        cmf->xz = temp1 * cos + temp2 * sin;
        cmf->yz = temp2 * cos - temp1 * sin;

        temp1 = cmf->xw;
        temp2 = cmf->yw;
        cmf->xw = temp1 * cos + temp2 * sin;
        cmf->yw = temp2 * cos - temp1 * sin;

        if (y != 0) {
            sin = Math_Sins(y);
            cos = Math_Coss(y);

            temp1 = cmf->xx;
            temp2 = cmf->zx;
            cmf->xx = temp1 * cos - temp2 * sin;
            cmf->zx = temp1 * sin + temp2 * cos;

            temp1 = cmf->xy;
            temp2 = cmf->zy;
            cmf->xy = temp1 * cos - temp2 * sin;
            cmf->zy = temp1 * sin + temp2 * cos;

            temp1 = cmf->xz;
            temp2 = cmf->zz;
            cmf->xz = temp1 * cos - temp2 * sin;
            cmf->zz = temp1 * sin + temp2 * cos;

            temp1 = cmf->xw;
            temp2 = cmf->zw;
            cmf->xw = temp1 * cos - temp2 * sin;
            cmf->zw = temp1 * sin + temp2 * cos;
        }

        if (x != 0) {
            sin = Math_Sins(x);
            cos = Math_Coss(x);

            temp1 = cmf->yx;
            temp2 = cmf->zx;
            cmf->yx = temp1 * cos + temp2 * sin;
            cmf->zx = temp2 * cos - temp1 * sin;

            temp1 = cmf->yy;
            temp2 = cmf->zy;
            cmf->yy = temp1 * cos + temp2 * sin;
            cmf->zy = temp2 * cos - temp1 * sin;

            temp1 = cmf->yz;
            temp2 = cmf->zz;
            cmf->yz = temp1 * cos + temp2 * sin;
            cmf->zz = temp2 * cos - temp1 * sin;

            temp1 = cmf->yw;
            temp2 = cmf->zw;
            cmf->yw = temp1 * cos + temp2 * sin;
            cmf->zw = temp2 * cos - temp1 * sin;
        }
    } else {
        func_800A7704(cmf, x, y, z);
    }
}

/*
 * Translates the top of the matrix stack by `translation` units,
 * then rotates that matrix by `rotation` in Z-Y-X order (roll-pitch-yaw)
 */
void Matrix_TranslateThenRotateZYX(Vec3f* translation, Vec3s* rotation) {
    MtxF* cmf = sCurrentMatrix;
    f32 sin;
    f32 cos;
    f32 temp1;
    f32 temp2;

    sin = Math_Sins(rotation->z);
    cos = Math_Coss(rotation->z);

    temp1 = cmf->xx;
    temp2 = cmf->yx;
    cmf->wx += temp1 * translation->x + temp2 * translation->y + cmf->zx * translation->z;
    cmf->xx = temp1 * cos + temp2 * sin;
    cmf->yx = temp2 * cos - temp1 * sin;

    temp1 = cmf->xy;
    temp2 = cmf->yy;
    cmf->wy += temp1 * translation->x + temp2 * translation->y + cmf->zy * translation->z;
    cmf->xy = temp1 * cos + temp2 * sin;
    cmf->yy = temp2 * cos - temp1 * sin;

    temp1 = cmf->xz;
    temp2 = cmf->yz;
    cmf->wz += temp1 * translation->x + temp2 * translation->y + cmf->zz * translation->z;
    cmf->xz = temp1 * cos + temp2 * sin;
    cmf->yz = temp2 * cos - temp1 * sin;

    temp1 = cmf->xw;
    temp2 = cmf->yw;
    cmf->ww += temp1 * translation->x + temp2 * translation->y + cmf->zw * translation->z;
    cmf->xw = temp1 * cos + temp2 * sin;
    cmf->yw = temp2 * cos - temp1 * sin;

    if (rotation->y != 0) {
        sin = Math_Sins(rotation->y);
        cos = Math_Coss(rotation->y);

        temp1 = cmf->xx;
        temp2 = cmf->zx;
        cmf->xx = temp1 * cos - temp2 * sin;
        cmf->zx = temp1 * sin + temp2 * cos;

        temp1 = cmf->xy;
        temp2 = cmf->zy;
        cmf->xy = temp1 * cos - temp2 * sin;
        cmf->zy = temp1 * sin + temp2 * cos;

        temp1 = cmf->xz;
        temp2 = cmf->zz;
        cmf->xz = temp1 * cos - temp2 * sin;
        cmf->zz = temp1 * sin + temp2 * cos;

        temp1 = cmf->xw;
        temp2 = cmf->zw;
        cmf->xw = temp1 * cos - temp2 * sin;
        cmf->zw = temp1 * sin + temp2 * cos;
    }

    if (rotation->x != 0) {
        sin = Math_Sins(rotation->x);
        cos = Math_Coss(rotation->x);

        temp1 = cmf->yx;
        temp2 = cmf->zx;
        cmf->yx = temp1 * cos + temp2 * sin;
        cmf->zx = temp2 * cos - temp1 * sin;

        temp1 = cmf->yy;
        temp2 = cmf->zy;
        cmf->yy = temp1 * cos + temp2 * sin;
        cmf->zy = temp2 * cos - temp1 * sin;

        temp1 = cmf->yz;
        temp2 = cmf->zz;
        cmf->yz = temp1 * cos + temp2 * sin;
        cmf->zz = temp2 * cos - temp1 * sin;

        temp1 = cmf->yw;
        temp2 = cmf->zw;
        cmf->yw = temp1 * cos + temp2 * sin;
        cmf->zw = temp2 * cos - temp1 * sin;
    }
}

#ifdef NON_MATCHING
// regalloc differences
void func_800D1694(f32 x, f32 y, f32 z, Vec3s* vec) {
    MtxF* cmf = sCurrentMatrix;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    f32 sp24;

    sp30 = Math_Sins(vec->y);
    sp2C = Math_Coss(vec->y);

    cmf->xx = sp2C;
    cmf->xz = -sp30;
    cmf->wx = x;
    cmf->wy = y;
    cmf->wz = z;
    cmf->xw = 0.0f;
    cmf->yw = 0.0f;
    cmf->zw = 0.0f;
    cmf->ww = 1.0f;

    if (vec->x != 0) {
        sp24 = Math_Sins(vec->x);
        sp28 = Math_Coss(vec->x);

        cmf->zy = -sp24;
        cmf->yy = sp28;
        cmf->zz = sp2C * sp28;
        cmf->yz = sp2C * sp24;
        cmf->zx = sp30 * sp28;
        cmf->yx = sp30 * sp24;
    } else {
        cmf->zz = sp2C;
        cmf->zx = sp30;
        cmf->zy = 0.0f;
        cmf->yz = 0.0f;
        cmf->yx = 0.0f;
        cmf->yy = 1.0f;
    }

    if (vec->z != 0) {
        sp24 = Math_Sins(vec->z);
        sp28 = Math_Coss(vec->z);

        sp30 = cmf->xx;
        sp2C = cmf->yx;
        cmf->xx = sp30 * sp28 + sp2C * sp24;
        cmf->yx = sp2C * sp28 - sp30 * sp24;

        sp30 = cmf->xz;
        sp2C = cmf->yz;
        cmf->xz = sp30 * sp28 + sp2C * sp24;
        cmf->yz = sp2C * sp28 - sp30 * sp24;

        sp2C = cmf->yy;
        cmf->xy = sp2C * sp24;
        cmf->yy = sp2C * sp28;
    } else {
        cmf->xy = 0.0f;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/sys_matrix/func_800D1694.s")
#endif

#ifdef NON_MATCHING
// mostly regalloc differences
Mtx* Matrix_MtxFToMtx(MtxF* src, Mtx* dest) {
    u16* m1 = (u16*)&dest->m[0][0];
    u16* m2 = (u16*)&dest->m[2][0];
    s32 temp;

    temp = src->xx * 65536.0f;
    m1[0] = (temp >> 0x10) & 0xFFFF;
    m2[0] = temp & 0xFFFF;

    temp = src->xy * 65536.0f;
    m1[1] = (temp >> 0x10) & 0xFFFF;
    m2[1] = temp & 0xFFFF;

    temp = src->xz * 65536.0f;
    m1[2] = (temp >> 0x10) & 0xFFFF;
    m2[2] = temp & 0xFFFF;

    temp = src->xw * 65536.0f;
    m1[3] = (temp >> 0x10) & 0xFFFF;
    m2[3] = temp & 0xFFFF;

    temp = src->yx * 65536.0f;
    m1[4] = (temp >> 0x10) & 0xFFFF;
    m2[4] = temp & 0xFFFF;

    temp = src->yy * 65536.0f;
    m1[5] = (temp >> 0x10) & 0xFFFF;
    m2[5] = temp & 0xFFFF;

    temp = src->yz * 65536.0f;
    m1[6] = (temp >> 0x10) & 0xFFFF;
    m2[6] = temp & 0xFFFF;

    temp = src->yw * 65536.0f;
    m1[7] = (temp >> 0x10) & 0xFFFF;
    m2[7] = temp & 0xFFFF;

    temp = src->zx * 65536.0f;
    m1[8] = (temp >> 0x10) & 0xFFFF;
    m2[8] = temp & 0xFFFF;

    temp = src->zy * 65536.0f;
    m1[9] = (temp >> 0x10) & 0xFFFF;
    m2[9] = temp & 0xFFFF;

    temp = src->zz * 65536.0f;
    m1[10] = (temp >> 0x10) & 0xFFFF;
    m2[10] = temp & 0xFFFF;

    temp = src->zw * 65536.0f;
    m1[11] = (temp >> 0x10) & 0xFFFF;
    m2[11] = temp & 0xFFFF;

    temp = src->wx * 65536.0f;
    m1[12] = (temp >> 0x10) & 0xFFFF;
    m2[12] = temp & 0xFFFF;

    temp = src->wy * 65536.0f;
    m1[13] = (temp >> 0x10) & 0xFFFF;
    m2[13] = temp & 0xFFFF;

    temp = src->wz * 65536.0f;
    m1[14] = (temp >> 0x10) & 0xFFFF;
    m2[14] = temp & 0xFFFF;

    temp = src->ww * 65536.0f;
    m1[15] = (temp >> 0x10) & 0xFFFF;
    m2[15] = temp & 0xFFFF;

    return dest;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/sys_matrix/Matrix_MtxFToMtx.s")
#endif

Mtx* Matrix_ToMtx(Mtx* dest, char* file, s32 line) {
    return Matrix_MtxFToMtx(Matrix_CheckFloats(sCurrentMatrix, file, line), dest);
}

Mtx* Matrix_NewMtx(GraphicsContext* gfxCtx, char* file, s32 line) {
    return Matrix_ToMtx(Graph_Alloc(gfxCtx, sizeof(Mtx)), file, line);
}

Mtx* Matrix_MtxFToNewMtx(MtxF* src, GraphicsContext* gfxCtx) {
    return Matrix_MtxFToMtx(src, Graph_Alloc(gfxCtx, sizeof(Mtx)));
}

void Matrix_MultVec3f(Vec3f* src, Vec3f* dest) {
    MtxF* cmf = sCurrentMatrix;

    dest->x = cmf->wx + (cmf->xx * src->x + cmf->yx * src->y + cmf->zx * src->z);
    dest->y = cmf->wy + (cmf->xy * src->x + cmf->yy * src->y + cmf->zy * src->z);
    dest->z = cmf->wz + (cmf->xz * src->x + cmf->yz * src->y + cmf->zz * src->z);
}

void Matrix_MtxFCopy(MtxF* dest, MtxF* src) {
    dest->xx = src->xx;
    dest->xy = src->xy;
    dest->xz = src->xz;
    dest->xw = src->xw;
    dest->yx = src->yx;
    dest->yy = src->yy;
    dest->yz = src->yz;
    dest->yw = src->yw;
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
    dest->zx = src->zx;
    dest->zy = src->zy;
    dest->zz = src->zz;
    dest->zw = src->zw;
    dest->wx = src->wx;
    dest->wy = src->wy;
    dest->wz = src->wz;
    dest->ww = src->ww;
}

void Matrix_MtxToMtxF(Mtx* src, MtxF* dest) {
    u16* m1 = (u16*)&src->m[0][0];
    u16* m2 = (u16*)&src->m[2][0];

    dest->xx = ((m1[0] << 0x10) | m2[0]) * (1 / 65536.0f);
    dest->xy = ((m1[1] << 0x10) | m2[1]) * (1 / 65536.0f);
    dest->xz = ((m1[2] << 0x10) | m2[2]) * (1 / 65536.0f);
    dest->xw = ((m1[3] << 0x10) | m2[3]) * (1 / 65536.0f);
    dest->yx = ((m1[4] << 0x10) | m2[4]) * (1 / 65536.0f);
    dest->yy = ((m1[5] << 0x10) | m2[5]) * (1 / 65536.0f);
    dest->yz = ((m1[6] << 0x10) | m2[6]) * (1 / 65536.0f);
    dest->yw = ((m1[7] << 0x10) | m2[7]) * (1 / 65536.0f);
    dest->zx = ((m1[8] << 0x10) | m2[8]) * (1 / 65536.0f);
    dest->zy = ((m1[9] << 0x10) | m2[9]) * (1 / 65536.0f);
    dest->zz = ((m1[10] << 0x10) | m2[10]) * (1 / 65536.0f);
    dest->zw = ((m1[11] << 0x10) | m2[11]) * (1 / 65536.0f);
    dest->wx = ((m1[12] << 0x10) | m2[12]) * (1 / 65536.0f);
    dest->wy = ((m1[13] << 0x10) | m2[13]) * (1 / 65536.0f);
    dest->wz = ((m1[14] << 0x10) | m2[14]) * (1 / 65536.0f);
    dest->ww = ((m1[15] << 0x10) | m2[15]) * (1 / 65536.0f);
}

void Matrix_MultVec3fExt(Vec3f* src, Vec3f* dest, MtxF* mf) {
    dest->x = mf->wx + (mf->xx * src->x + mf->yx * src->y + mf->zx * src->z);
    dest->y = mf->wy + (mf->xy * src->x + mf->yy * src->y + mf->zy * src->z);
    dest->z = mf->wz + (mf->xz * src->x + mf->yz * src->y + mf->zz * src->z);
}

void Matrix_Reverse(MtxF* mf) {
    f32 temp;

    temp = mf->xy;
    mf->xy = mf->yx;
    mf->yx = temp;

    temp = mf->xz;
    mf->xz = mf->zx;
    mf->zx = temp;

    temp = mf->yz;
    mf->yz = mf->zy;
    mf->zy = temp;
}

#ifdef NON_MATCHING
void func_800D1FD4(MtxF* mf) {
    MtxF* cmf = sCurrentMatrix;
    f32 temp;

    temp = sqrtf(SQ(cmf->xx) + SQ(cmf->xy) + SQ(cmf->xz));
    cmf->xx = mf->xx * temp;
    cmf->xy = mf->xy * temp;
    cmf->xz = mf->xz * temp;

    temp = sqrtf(SQ(cmf->yx) + SQ(cmf->yy) + SQ(cmf->yz));
    cmf->yx = mf->yx * temp;
    cmf->yy = mf->yy * temp;
    cmf->yz = mf->yz * temp;

    temp = sqrtf(SQ(cmf->zx) + SQ(cmf->zy) + SQ(cmf->zz));
    cmf->zx = mf->zx * temp;
    cmf->zy = mf->zy * temp;
    cmf->zz = mf->zz * temp;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/sys_matrix/func_800D1FD4.s")
#endif

#ifdef NON_MATCHING
// same differences as func_800D2264
void func_800D20CC(MtxF* mf, Vec3s* vec, s32 flag) {
    vec->x = Math_atan2f(-mf->zy, sqrtf(SQ(mf->zx) + SQ(mf->zz))) * (32768 / M_PI);

    if ((vec->x == 0x4000) || (vec->x == -0x4000)) {
        vec->z = 0;
        vec->y = Math_atan2f(-mf->xz, mf->xx) * (32768 / M_PI);
        return;
    }

    vec->y = Math_atan2f(mf->zx, mf->zz) * (32768 / M_PI);

    if (!flag) {
        vec->z = Math_atan2f(mf->xy, mf->yy) * (32768 / M_PI);
    } else {
        vec->z = Math_atan2f(mf->xy / sqrtf(SQ(mf->xx) + SQ(mf->xz) + SQ(mf->xy)),
                             mf->yy / sqrtf(SQ(mf->yx) + SQ(mf->yz) + SQ(mf->yy))) *
                 (32768 / M_PI);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/sys_matrix/func_800D20CC.s")
#endif

#ifdef NON_MATCHING
// same differences as func_800D20CC
void func_800D2264(MtxF* mf, Vec3s* vec, s32 flag) {
    vec->y = Math_atan2f(-mf->xz, sqrtf(SQ(mf->xx) + SQ(mf->xy))) * (32768 / M_PI);

    if ((vec->y == 0x4000) || (vec->y == -0x4000)) {
        vec->x = 0;
        vec->z = Math_atan2f(-mf->yx, mf->yy) * (32768 / M_PI);
        return;
    }

    vec->z = Math_atan2f(mf->xy, mf->xx) * (32768 / M_PI);

    if (!flag) {
        vec->x = Math_atan2f(mf->yz, mf->zz) * (32768 / M_PI);
    } else {
        vec->x = Math_atan2f(mf->yz / sqrtf(SQ(mf->yx) + SQ(mf->yy) + SQ(mf->yz)),
                             mf->zz / sqrtf(SQ(mf->zx) + SQ(mf->zy) + SQ(mf->zz))) *
                 (32768 / M_PI);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/sys_matrix/func_800D2264.s")
#endif

#ifdef NON_MATCHING
// regalloc differences
void func_800D23FC(f32 f, Vec3f* vec, u8 mode) {
    MtxF* cmf;
    f32 sin;
    f32 cos;
    f32 rCos;
    f32 temp1;
    f32 temp2;
    f32 temp3;
    f32 temp4;

    if (mode == MTXMODE_APPLY) {
        if (f != 0) {
            cmf = sCurrentMatrix;

            sin = sinf(f);
            cos = cosf(f);

            temp1 = cmf->xx;
            temp2 = cmf->yx;
            temp3 = cmf->zx;
            temp4 = (vec->x * temp1 + vec->y * temp2 + vec->z * temp3) * (1.0f - cos);
            cmf->xx = temp1 * cos + vec->x * temp4 + sin * (temp2 * vec->z - temp3 * vec->y);
            cmf->yx = temp2 * cos + vec->y * temp4 + sin * (temp3 * vec->x - temp1 * vec->z);
            cmf->zx = temp3 * cos + vec->z * temp4 + sin * (temp1 * vec->y - temp2 * vec->x);

            temp1 = cmf->xy;
            temp2 = cmf->yy;
            temp3 = cmf->zy;
            temp4 = (vec->x * temp1 + vec->y * temp2 + vec->z * temp3) * (1.0f - cos);
            cmf->xy = temp1 * cos + vec->x * temp4 + sin * (temp2 * vec->z - temp3 * vec->y);
            cmf->yy = temp2 * cos + vec->y * temp4 + sin * (temp3 * vec->x - temp1 * vec->z);
            cmf->zy = temp3 * cos + vec->z * temp4 + sin * (temp1 * vec->y - temp2 * vec->x);

            temp1 = cmf->xz;
            temp2 = cmf->yz;
            temp3 = cmf->zz;
            temp4 = (vec->x * temp1 + vec->y * temp2 + vec->z * temp3) * (1.0f - cos);
            cmf->xz = temp1 * cos + vec->x * temp4 + sin * (temp2 * vec->z - temp3 * vec->y);
            cmf->yz = temp2 * cos + vec->y * temp4 + sin * (temp3 * vec->x - temp1 * vec->z);
            cmf->zz = temp3 * cos + vec->z * temp4 + sin * (temp1 * vec->y - temp2 * vec->x);
        }
    } else {
        cmf = sCurrentMatrix;

        if (f != 0) {
            sin = sinf(f);
            cos = cosf(f);
            rCos = 1.0f - cos;

            cmf->xx = vec->x * vec->x * rCos + cos;
            cmf->yy = vec->y * vec->y * rCos + cos;
            cmf->zz = vec->z * vec->z * rCos + cos;

            temp1 = vec->x * rCos * vec->y;
            temp2 = vec->z * sin;
            cmf->xy = temp1 + temp2;
            cmf->yx = temp1 - temp2;

            temp1 = vec->x * rCos * vec->z;
            temp2 = vec->y * sin;
            cmf->xz = temp1 - temp2;
            cmf->zx = temp1 + temp2;

            temp1 = vec->y * rCos * vec->z;
            temp2 = vec->x * sin;
            cmf->yz = temp1 + temp2;
            cmf->zy = temp1 - temp2;

            cmf->xw = 0.0f;
            cmf->yw = 0.0f;
            cmf->zw = 0.0f;
            cmf->wx = 0.0f;
            cmf->wy = 0.0f;
            cmf->wz = 0.0f;
            cmf->ww = 1.0f;
        } else {
            cmf->xy = 0.0f;
            cmf->xz = 0.0f;
            cmf->xw = 0.0f;
            cmf->yx = 0.0f;
            cmf->yz = 0.0f;
            cmf->yw = 0.0f;
            cmf->zx = 0.0f;
            cmf->zy = 0.0f;
            cmf->zw = 0.0f;
            cmf->wx = 0.0f;
            cmf->wy = 0.0f;
            cmf->wz = 0.0f;
            cmf->xx = 1.0f;
            cmf->yy = 1.0f;
            cmf->zz = 1.0f;
            cmf->ww = 1.0f;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/sys_matrix/func_800D23FC.s")
#endif

MtxF* Matrix_CheckFloats(MtxF* mf, char* file, s32 line) {
    s32 i, j;

    for (i = 0; i < 4; i++) {
        for (j = 0; j < 4; j++) {
            if (!(-32768.0f <= mf->mf[i][j]) || !(mf->mf[i][j] < 32768.0f)) {
                osSyncPrintf("%s %d: [%s] =\n"
                             "/ %12.6f %12.6f %12.6f %12.6f \\\n"
                             "| %12.6f %12.6f %12.6f %12.6f |\n"
                             "| %12.6f %12.6f %12.6f %12.6f |\n"
                             "\\ %12.6f %12.6f %12.6f %12.6f /\n",
                             file, line, "mf", mf->xx, mf->yx, mf->zx, mf->wx, mf->xy, mf->yy, mf->zy, mf->wy, mf->xz,
                             mf->yz, mf->zz, mf->wz, mf->xw, mf->yw, mf->zw, mf->ww);
                Fault_AddHungupAndCrash(file, line);
            }
        }
    }

    return mf;
}

void func_800D2A34(MtxF* mf, f32 arg1, f32 arg2, f32 arg3, f32 arg4) {
    mf->xy = 0.0f;
    mf->xz = 0.0f;
    mf->xw = 0.0f;
    mf->yx = 0.0f;
    mf->yz = 0.0f;
    mf->yw = 0.0f;
    mf->zx = 0.0f;
    mf->zy = 0.0f;
    mf->zw = 0.0f;
    mf->xx = arg1;
    mf->yy = arg1;
    mf->zz = arg1;
    mf->wx = arg2;
    mf->wy = arg3;
    mf->wz = arg4;
    mf->ww = 1.0f;
}

void func_800D2A98(Mtx* mtx, f32 arg1, f32 arg2, f32 arg3, f32 arg4) {
    MtxF mf;

    func_800D2A34(&mf, arg1, arg2, arg3, arg4);
    func_801064E0(&mf, mtx);
}

void func_800D2AE4(Mtx* mtx, f32 arg1, f32 arg2, f32 arg3, f32 arg4) {
    u16* m1 = (u16*)&mtx->m[0][0];
    u16* m2 = (u16*)&mtx->m[2][0];
    u32 temp;

    temp = (s32)(arg1 * 65536.0f);
    m2[0] = temp & 0xFFFF;
    m1[0] = (temp >> 16) & 0xFFFF;

    temp = (s32)(arg1 * 65536.0f);
    m1[5] = (temp >> 16) & 0xFFFF;
    m2[5] = temp & 0xFFFF;

    temp = (s32)(arg1 * 65536.0f);
    m1[10] = (temp >> 16) & 0xFFFF;
    m2[10] = temp & 0xFFFF;

    temp = (s32)(arg2 * 65536.0f);
    m1[12] = (temp >> 16) & 0xFFFF;
    m2[12] = temp & 0xFFFF;

    temp = (s32)(arg3 * 65536.0f);
    m1[13] = (temp >> 16) & 0xFFFF;
    m2[13] = temp & 0xFFFF;

    temp = (s32)(arg4 * 65536.0f);
    m1[14] = (temp >> 16) & 0xFFFF;
    m2[14] = temp & 0xFFFF;

    m1[1] = 0;
    m1[2] = 0;
    m1[3] = 0;
    m1[4] = 0;
    m1[6] = 0;
    m1[7] = 0;
    m1[8] = 0;
    m1[9] = 0;
    m1[11] = 0;
    m1[15] = 1;

    m2[1] = 0;
    m2[2] = 0;
    m2[3] = 0;
    m2[4] = 0;
    m2[6] = 0;
    m2[7] = 0;
    m2[8] = 0;
    m2[9] = 0;
    m2[11] = 0;
    m2[15] = 0;
}

void func_800D2BD0(Mtx* mtx, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6) {
    u16* m1 = (u16*)&mtx->m[0][0];
    u16* m2 = (u16*)&mtx->m[2][0];
    u32 temp;

    temp = (s32)(arg1 * 65536.0f);
    m1[0] = (temp >> 16) & 0xFFFF;
    m2[0] = temp & 0xFFFF;

    temp = (s32)(arg2 * 65536.0f);
    m1[5] = (temp >> 16) & 0xFFFF;
    m2[5] = temp & 0xFFFF;

    temp = (s32)(arg3 * 65536.0f);
    m1[10] = (temp >> 16) & 0xFFFF;
    m2[10] = temp & 0xFFFF;

    temp = (s32)(arg4 * 65536.0f);
    m1[12] = (temp >> 16) & 0xFFFF;
    m2[12] = temp & 0xFFFF;

    temp = (s32)(arg5 * 65536.0f);
    m1[13] = (temp >> 16) & 0xFFFF;
    m2[13] = temp & 0xFFFF;

    temp = (s32)(arg6 * 65536.0f);
    m1[14] = (temp >> 16) & 0xFFFF;
    m2[14] = temp & 0xFFFF;

    m1[1] = 0;
    m1[2] = 0;
    m1[3] = 0;
    m1[4] = 0;
    m1[6] = 0;
    m1[7] = 0;
    m1[8] = 0;
    m1[9] = 0;
    m1[11] = 0;
    m1[15] = 1;

    m2[1] = 0;
    m2[2] = 0;
    m2[3] = 0;
    m2[4] = 0;
    m2[6] = 0;
    m2[7] = 0;
    m2[8] = 0;
    m2[9] = 0;
    m2[11] = 0;
    m2[15] = 0;
}

#ifdef NON_MATCHING
// minor ordering and regalloc differences
void func_800D2CEC(Mtx* mtx, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6) {
    u16* m1 = (u16*)&mtx->m[0][0];
    u16* m2 = (u16*)&mtx->m[2][0];
    u32 temp;

    mtx->m[0][1] = 0;
    mtx->m[2][1] = 0;
    mtx->m[0][3] = 0;
    mtx->m[2][3] = 0;
    mtx->m[0][4] = 0;

    temp = (s32)(arg1 * 65536.0f);
    m1[0] = temp & 0xFFFF;
    mtx->m[2][0] = temp << 16;

    temp = (s32)(arg2 * 65536.0f);
    mtx->m[0][2] = temp >> 16;
    mtx->m[2][2] = temp & 0xFFFF;

    m1[1] = 0;

    mtx->m[2][4] = 0;

    temp = (s32)(arg3 * 65536.0f);
    mtx->m[1][1] = temp;
    m1[11] = 0;
    mtx->m[3][1] = temp << 16;

    temp = (s32)(arg4 * 65536.0f);
    m1[12] = (temp >> 16) & 0xFFFF;
    m2[12] = temp & 0xFFFF;

    temp = (s32)(arg5 * 65536.0f);
    m1[13] = (temp >> 16) & 0xFFFF;
    m2[13] = temp & 0xFFFF;

    temp = (s32)(arg6 * 65536.0f);
    m1[14] = (temp >> 16) & 0xFFFF;
    mtx->m[3][3] = temp << 16;

    m1[15] = 1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/sys_matrix/func_800D2CEC.s")
#endif
