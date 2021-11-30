#include "global.h"

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
    sCurrentMatrix = GameState_Alloc(gameState, 20 * sizeof(MtxF), "../sys_matrix.c", 153);
    sMatrixStack = sCurrentMatrix;
}

void Matrix_Push(void) {
    Matrix_MtxFCopy(sCurrentMatrix + 1, sCurrentMatrix);
    sCurrentMatrix++;
}

void Matrix_Pop(void) {
    sCurrentMatrix--;
    ASSERT(sCurrentMatrix >= sMatrixStack, "Matrix_now >= Matrix_stack", "../sys_matrix.c", 176);
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
        SkinMatrix_MtxFMtxFMult(cmf, mf, cmf);
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
        ty = cmf->xy;
        cmf->xw += tx * x + ty * y + cmf->xz * z;
        tx = cmf->yx;
        ty = cmf->yy;
        cmf->yw += tx * x + ty * y + cmf->yz * z;
        tx = cmf->zx;
        ty = cmf->zy;
        cmf->zw += tx * x + ty * y + cmf->zz * z;
        tx = cmf->wx;
        ty = cmf->wy;
        cmf->ww += tx * x + ty * y + cmf->wz * z;
    } else {
        SkinMatrix_SetTranslate(cmf, x, y, z);
    }
}

void Matrix_Scale(f32 x, f32 y, f32 z, u8 mode) {
    MtxF* cmf = sCurrentMatrix;

    if (mode == MTXMODE_APPLY) {
        cmf->xx *= x;
        cmf->yx *= x;
        cmf->zx *= x;
        cmf->xy *= y;
        cmf->yy *= y;
        cmf->zy *= y;
        cmf->xz *= z;
        cmf->yz *= z;
        cmf->zz *= z;
        cmf->wx *= x;
        cmf->wy *= y;
        cmf->wz *= z;
    } else {
        SkinMatrix_SetScale(cmf, x, y, z);
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

            temp1 = cmf->xy;
            temp2 = cmf->xz;
            cmf->xy = temp1 * cos + temp2 * sin;
            cmf->xz = temp2 * cos - temp1 * sin;

            temp1 = cmf->yy;
            temp2 = cmf->yz;
            cmf->yy = temp1 * cos + temp2 * sin;
            cmf->yz = temp2 * cos - temp1 * sin;

            temp1 = cmf->zy;
            temp2 = cmf->zz;
            cmf->zy = temp1 * cos + temp2 * sin;
            cmf->zz = temp2 * cos - temp1 * sin;

            temp1 = cmf->wy;
            temp2 = cmf->wz;
            cmf->wy = temp1 * cos + temp2 * sin;
            cmf->wz = temp2 * cos - temp1 * sin;
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

        cmf->yx = 0.0f;
        cmf->zx = 0.0f;
        cmf->wx = 0.0f;
        cmf->xy = 0.0f;
        cmf->wy = 0.0f;
        cmf->xz = 0.0f;
        cmf->wz = 0.0f;
        cmf->xw = 0.0f;
        cmf->yw = 0.0f;
        cmf->zw = 0.0f;
        cmf->xx = 1.0f;
        cmf->ww = 1.0f;
        cmf->yy = cos;
        cmf->zz = cos;
        cmf->zy = sin;
        cmf->yz = -sin;
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
            temp2 = cmf->xz;
            cmf->xx = temp1 * cos - temp2 * sin;
            cmf->xz = temp1 * sin + temp2 * cos;

            temp1 = cmf->yx;
            temp2 = cmf->yz;
            cmf->yx = temp1 * cos - temp2 * sin;
            cmf->yz = temp1 * sin + temp2 * cos;

            temp1 = cmf->zx;
            temp2 = cmf->zz;
            cmf->zx = temp1 * cos - temp2 * sin;
            cmf->zz = temp1 * sin + temp2 * cos;

            temp1 = cmf->wx;
            temp2 = cmf->wz;
            cmf->wx = temp1 * cos - temp2 * sin;
            cmf->wz = temp1 * sin + temp2 * cos;
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

        cmf->yx = 0.0f;
        cmf->wx = 0.0f;
        cmf->xy = 0.0f;
        cmf->zy = 0.0f;
        cmf->wy = 0.0f;
        cmf->yz = 0.0f;
        cmf->wz = 0.0f;
        cmf->xw = 0.0f;
        cmf->yw = 0.0f;
        cmf->zw = 0.0f;
        cmf->yy = 1.0f;
        cmf->ww = 1.0f;
        cmf->xx = cos;
        cmf->zz = cos;
        cmf->zx = -sin;
        cmf->xz = sin;
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
            temp2 = cmf->xy;
            cmf->xx = temp1 * cos + temp2 * sin;
            cmf->xy = temp2 * cos - temp1 * sin;

            temp1 = cmf->yx;
            temp2 = cmf->yy;
            cmf->yx = temp1 * cos + temp2 * sin;
            cmf->yy = temp2 * cos - temp1 * sin;

            temp1 = cmf->zx;
            temp2 = cmf->zy;
            cmf->zx = temp1 * cos + temp2 * sin;
            cmf->zy = temp2 * cos - temp1 * sin;

            temp1 = cmf->wx;
            temp2 = cmf->wy;
            cmf->wx = temp1 * cos + temp2 * sin;
            cmf->wy = temp2 * cos - temp1 * sin;
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

        cmf->zx = 0.0f;
        cmf->wx = 0.0f;
        cmf->zy = 0.0f;
        cmf->wy = 0.0f;
        cmf->xz = 0.0f;
        cmf->yz = 0.0f;
        cmf->wz = 0.0f;
        cmf->xw = 0.0f;
        cmf->yw = 0.0f;
        cmf->zw = 0.0f;
        cmf->zz = 1.0f;
        cmf->ww = 1.0f;
        cmf->xx = cos;
        cmf->yy = cos;
        cmf->yx = sin;
        cmf->xy = -sin;
    }
}

/**
 * Rotate using ZYX Tait-Bryan angles.
 * This means a (column) vector is first rotated around X, then around Y, then around Z, then (if `mode` is
 * `MTXMODE_APPLY`) gets transformed according to whatever the matrix was before adding the ZYX rotation.
 * Original Name: Matrix_RotateXYZ, changed to reflect rotation order.
 */
void Matrix_RotateZYX(s16 x, s16 y, s16 z, u8 mode) {
    MtxF* cmf = sCurrentMatrix;
    f32 temp1;
    f32 temp2;
    f32 sin;
    f32 cos;

    if (mode == MTXMODE_APPLY) {
        sin = Math_SinS(z);
        cos = Math_CosS(z);

        temp1 = cmf->xx;
        temp2 = cmf->xy;
        cmf->xx = temp1 * cos + temp2 * sin;
        cmf->xy = temp2 * cos - temp1 * sin;

        temp1 = cmf->yx;
        temp2 = cmf->yy;
        cmf->yx = temp1 * cos + temp2 * sin;
        cmf->yy = temp2 * cos - temp1 * sin;

        temp1 = cmf->zx;
        temp2 = cmf->zy;
        cmf->zx = temp1 * cos + temp2 * sin;
        cmf->zy = temp2 * cos - temp1 * sin;

        temp1 = cmf->wx;
        temp2 = cmf->wy;
        cmf->wx = temp1 * cos + temp2 * sin;
        cmf->wy = temp2 * cos - temp1 * sin;

        if (y != 0) {
            sin = Math_SinS(y);
            cos = Math_CosS(y);

            temp1 = cmf->xx;
            temp2 = cmf->xz;
            cmf->xx = temp1 * cos - temp2 * sin;
            cmf->xz = temp1 * sin + temp2 * cos;

            temp1 = cmf->yx;
            temp2 = cmf->yz;
            cmf->yx = temp1 * cos - temp2 * sin;
            cmf->yz = temp1 * sin + temp2 * cos;

            temp1 = cmf->zx;
            temp2 = cmf->zz;
            cmf->zx = temp1 * cos - temp2 * sin;
            cmf->zz = temp1 * sin + temp2 * cos;

            temp1 = cmf->wx;
            temp2 = cmf->wz;
            cmf->wx = temp1 * cos - temp2 * sin;
            cmf->wz = temp1 * sin + temp2 * cos;
        }

        if (x != 0) {
            sin = Math_SinS(x);
            cos = Math_CosS(x);

            temp1 = cmf->xy;
            temp2 = cmf->xz;
            cmf->xy = temp1 * cos + temp2 * sin;
            cmf->xz = temp2 * cos - temp1 * sin;

            temp1 = cmf->yy;
            temp2 = cmf->yz;
            cmf->yy = temp1 * cos + temp2 * sin;
            cmf->yz = temp2 * cos - temp1 * sin;

            temp1 = cmf->zy;
            temp2 = cmf->zz;
            cmf->zy = temp1 * cos + temp2 * sin;
            cmf->zz = temp2 * cos - temp1 * sin;

            temp1 = cmf->wy;
            temp2 = cmf->wz;
            cmf->wy = temp1 * cos + temp2 * sin;
            cmf->wz = temp2 * cos - temp1 * sin;
        }
    } else {
        SkinMatrix_SetRotateZYX(cmf, x, y, z);
    }
}

/**
 * Translate and rotate using ZYX Tait-Bryan angles.
 * This means a (column) vector is first rotated around X, then around Y, then around Z, then translated, then gets
 * transformed according to whatever the matrix was previously.
 */
void Matrix_TranslateRotateZYX(Vec3f* translation, Vec3s* rotation) {
    MtxF* cmf = sCurrentMatrix;
    f32 sin = Math_SinS(rotation->z);
    f32 cos = Math_CosS(rotation->z);
    f32 temp1;
    f32 temp2;

    temp1 = cmf->xx;
    temp2 = cmf->xy;
    cmf->xw += temp1 * translation->x + temp2 * translation->y + cmf->xz * translation->z;
    cmf->xx = temp1 * cos + temp2 * sin;
    cmf->xy = temp2 * cos - temp1 * sin;

    temp1 = cmf->yx;
    temp2 = cmf->yy;
    cmf->yw += temp1 * translation->x + temp2 * translation->y + cmf->yz * translation->z;
    cmf->yx = temp1 * cos + temp2 * sin;
    cmf->yy = temp2 * cos - temp1 * sin;

    temp1 = cmf->zx;
    temp2 = cmf->zy;
    cmf->zw += temp1 * translation->x + temp2 * translation->y + cmf->zz * translation->z;
    cmf->zx = temp1 * cos + temp2 * sin;
    cmf->zy = temp2 * cos - temp1 * sin;

    temp1 = cmf->wx;
    temp2 = cmf->wy;
    cmf->ww += temp1 * translation->x + temp2 * translation->y + cmf->wz * translation->z;
    cmf->wx = temp1 * cos + temp2 * sin;
    cmf->wy = temp2 * cos - temp1 * sin;

    if (rotation->y != 0) {
        sin = Math_SinS(rotation->y);
        cos = Math_CosS(rotation->y);

        temp1 = cmf->xx;
        temp2 = cmf->xz;
        cmf->xx = temp1 * cos - temp2 * sin;
        cmf->xz = temp1 * sin + temp2 * cos;

        temp1 = cmf->yx;
        temp2 = cmf->yz;
        cmf->yx = temp1 * cos - temp2 * sin;
        cmf->yz = temp1 * sin + temp2 * cos;

        temp1 = cmf->zx;
        temp2 = cmf->zz;
        cmf->zx = temp1 * cos - temp2 * sin;
        cmf->zz = temp1 * sin + temp2 * cos;

        temp1 = cmf->wx;
        temp2 = cmf->wz;
        cmf->wx = temp1 * cos - temp2 * sin;
        cmf->wz = temp1 * sin + temp2 * cos;
    }

    if (rotation->x != 0) {
        sin = Math_SinS(rotation->x);
        cos = Math_CosS(rotation->x);

        temp1 = cmf->xy;
        temp2 = cmf->xz;
        cmf->xy = temp1 * cos + temp2 * sin;
        cmf->xz = temp2 * cos - temp1 * sin;

        temp1 = cmf->yy;
        temp2 = cmf->yz;
        cmf->yy = temp1 * cos + temp2 * sin;
        cmf->yz = temp2 * cos - temp1 * sin;

        temp1 = cmf->zy;
        temp2 = cmf->zz;
        cmf->zy = temp1 * cos + temp2 * sin;
        cmf->zz = temp2 * cos - temp1 * sin;

        temp1 = cmf->wy;
        temp2 = cmf->wz;
        cmf->wy = temp1 * cos + temp2 * sin;
        cmf->wz = temp2 * cos - temp1 * sin;
    }
}

void func_800D1694(f32 x, f32 y, f32 z, Vec3s* vec) {
    MtxF* cmf = sCurrentMatrix;
    f32 sp30 = Math_SinS(vec->y);
    f32 sp2C = Math_CosS(vec->y);
    f32 sp28;
    f32 sp24;

    cmf->xx = sp2C;
    cmf->zx = -sp30;
    cmf->xw = x;
    cmf->yw = y;
    cmf->zw = z;
    cmf->wx = 0.0f;
    cmf->wy = 0.0f;
    cmf->wz = 0.0f;
    cmf->ww = 1.0f;

    if (vec->x != 0) {
        sp24 = Math_SinS(vec->x);
        sp28 = Math_CosS(vec->x);

        cmf->zz = sp2C * sp28;
        cmf->zy = sp2C * sp24;
        cmf->xz = sp30 * sp28;
        cmf->xy = sp30 * sp24;
        cmf->yz = -sp24;
        cmf->yy = sp28;
    } else {
        cmf->zz = sp2C;
        cmf->xz = sp30;
        cmf->yz = 0.0f;
        cmf->zy = 0.0f;
        cmf->xy = 0.0f;
        cmf->yy = 1.0f;
    }

    if (vec->z != 0) {
        sp24 = Math_SinS(vec->z);
        sp28 = Math_CosS(vec->z);

        sp30 = cmf->xx;
        sp2C = cmf->xy;
        cmf->xx = sp30 * sp28 + sp2C * sp24;
        cmf->xy = sp2C * sp28 - sp30 * sp24;

        sp30 = cmf->zx;
        sp2C = cmf->zy;
        cmf->zx = sp30 * sp28 + sp2C * sp24;
        cmf->zy = sp2C * sp28 - sp30 * sp24;

        sp2C = cmf->yy;
        cmf->yx = sp2C * sp24;
        cmf->yy = sp2C * sp28;
    } else {
        cmf->yx = 0.0f;
    }
}

Mtx* Matrix_MtxFToMtx(MtxF* src, Mtx* dest) {
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
    return dest;
}

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

    dest->x = cmf->xw + (cmf->xx * src->x + cmf->xy * src->y + cmf->xz * src->z);
    dest->y = cmf->yw + (cmf->yx * src->x + cmf->yy * src->y + cmf->yz * src->z);
    dest->z = cmf->zw + (cmf->zx * src->x + cmf->zy * src->y + cmf->zz * src->z);
}

void Matrix_MtxFCopy(MtxF* dest, MtxF* src) {
    dest->xx = src->xx;
    dest->yx = src->yx;
    dest->zx = src->zx;
    dest->wx = src->wx;
    dest->xy = src->xy;
    dest->yy = src->yy;
    dest->zy = src->zy;
    dest->wy = src->wy;
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
    dest->xz = src->xz;
    dest->yz = src->yz;
    dest->zz = src->zz;
    dest->wz = src->wz;
    dest->xw = src->xw;
    dest->yw = src->yw;
    dest->zw = src->zw;
    dest->ww = src->ww;
}

void Matrix_MtxToMtxF(Mtx* src, MtxF* dest) {
    u16* m1 = (u16*)&src->m[0][0];
    u16* m2 = (u16*)&src->m[2][0];

    dest->xx = ((m1[0] << 0x10) | m2[0]) * (1 / 65536.0f);
    dest->yx = ((m1[1] << 0x10) | m2[1]) * (1 / 65536.0f);
    dest->zx = ((m1[2] << 0x10) | m2[2]) * (1 / 65536.0f);
    dest->wx = ((m1[3] << 0x10) | m2[3]) * (1 / 65536.0f);
    dest->xy = ((m1[4] << 0x10) | m2[4]) * (1 / 65536.0f);
    dest->yy = ((m1[5] << 0x10) | m2[5]) * (1 / 65536.0f);
    dest->zy = ((m1[6] << 0x10) | m2[6]) * (1 / 65536.0f);
    dest->wy = ((m1[7] << 0x10) | m2[7]) * (1 / 65536.0f);
    dest->xz = ((m1[8] << 0x10) | m2[8]) * (1 / 65536.0f);
    dest->yz = ((m1[9] << 0x10) | m2[9]) * (1 / 65536.0f);
    dest->zz = ((m1[10] << 0x10) | m2[10]) * (1 / 65536.0f);
    dest->wz = ((m1[11] << 0x10) | m2[11]) * (1 / 65536.0f);
    dest->xw = ((m1[12] << 0x10) | m2[12]) * (1 / 65536.0f);
    dest->yw = ((m1[13] << 0x10) | m2[13]) * (1 / 65536.0f);
    dest->zw = ((m1[14] << 0x10) | m2[14]) * (1 / 65536.0f);
    dest->ww = ((m1[15] << 0x10) | m2[15]) * (1 / 65536.0f);
}

void Matrix_MultVec3fExt(Vec3f* src, Vec3f* dest, MtxF* mf) {
    dest->x = mf->xw + (mf->xx * src->x + mf->xy * src->y + mf->xz * src->z);
    dest->y = mf->yw + (mf->yx * src->x + mf->yy * src->y + mf->yz * src->z);
    dest->z = mf->zw + (mf->zx * src->x + mf->zy * src->y + mf->zz * src->z);
}

void Matrix_Transpose(MtxF* mf) {
    f32 temp;

    temp = mf->yx;
    mf->yx = mf->xy;
    mf->xy = temp;

    temp = mf->zx;
    mf->zx = mf->xz;
    mf->xz = temp;

    temp = mf->zy;
    mf->zy = mf->yz;
    mf->yz = temp;
}

void func_800D1FD4(MtxF* mf) {
    MtxF* cmf = sCurrentMatrix;
    f32 temp;
    f32 temp2;
    f32 temp3;

    temp = cmf->xx;
    temp *= temp;
    temp2 = cmf->yx;
    temp += SQ(temp2);
    temp2 = cmf->zx;
    temp += SQ(temp2);
    temp3 = sqrtf(temp);

    cmf->xx = mf->xx * temp3;
    cmf->yx = mf->yx * temp3;
    cmf->zx = mf->zx * temp3;

    temp = cmf->xy;
    temp *= temp;
    temp2 = cmf->yy;
    temp += SQ(temp2);
    temp2 = cmf->zy;
    temp += SQ(temp2);
    temp3 = sqrtf(temp);

    cmf->xy = mf->xy * temp3;
    cmf->yy = mf->yy * temp3;
    cmf->zy = mf->zy * temp3;

    temp = cmf->xz;
    temp *= temp;
    temp2 = cmf->yz;
    temp += SQ(temp2);
    temp2 = cmf->zz;
    temp += SQ(temp2);
    temp3 = sqrtf(temp);

    cmf->xz = mf->xz * temp3;
    cmf->yz = mf->yz * temp3;
    cmf->zz = mf->zz * temp3;
}

/**
 * Gets the rotation the specified matrix represents, using Tait-Bryan YXZ angles.
 * The flag value doesn't matter for a rotation matrix. Not 0 does extra calculation.
 */
void Matrix_MtxFToYXZRotS(MtxF* mf, Vec3s* rotDest, s32 flag) {
    f32 temp;
    f32 temp2;
    f32 temp3;
    f32 temp4;

    temp = mf->xz;
    temp *= temp;
    temp += SQ(mf->zz);
    rotDest->x = Math_FAtan2F(-mf->yz, sqrtf(temp)) * (0x8000 / M_PI);

    if ((rotDest->x == 0x4000) || (rotDest->x == -0x4000)) {
        rotDest->z = 0;

        rotDest->y = Math_FAtan2F(-mf->zx, mf->xx) * (0x8000 / M_PI);
    } else {
        rotDest->y = Math_FAtan2F(mf->xz, mf->zz) * (0x8000 / M_PI);

        if (!flag) {
            rotDest->z = Math_FAtan2F(mf->yx, mf->yy) * (0x8000 / M_PI);
        } else {
            temp = mf->xx;
            temp2 = mf->zx;
            temp3 = mf->zy;

            temp *= temp;
            temp += SQ(temp2);
            temp2 = mf->yx;
            temp += SQ(temp2);
            /* temp = xx^2+zx^2+yx^2 == 1 for a rotation matrix */
            temp = sqrtf(temp);
            temp = temp2 / temp;

            temp2 = mf->xy;
            temp2 *= temp2;
            temp2 += SQ(temp3);
            temp3 = mf->yy;
            temp2 += SQ(temp3);
            /* temp2 = xy^2+zy^2+yy^2 == 1 for a rotation matrix */
            temp2 = sqrtf(temp2);
            temp2 = temp3 / temp2;

            /* for a rotation matrix, temp == yx and temp2 == yy
             * which is the same as in the !flag branch */
            rotDest->z = Math_FAtan2F(temp, temp2) * (0x8000 / M_PI);
        }
    }
}

/**
 * Gets the rotation the specified matrix represents, using Tait-Bryan ZYX angles.
 * The flag value doesn't matter for a rotation matrix. Not 0 does extra calculation.
 */
void Matrix_MtxFToZYXRotS(MtxF* mf, Vec3s* rotDest, s32 flag) {
    f32 temp;
    f32 temp2;
    f32 temp3;
    f32 temp4;

    temp = mf->xx;
    temp *= temp;
    temp += SQ(mf->yx);
    rotDest->y = Math_FAtan2F(-mf->zx, sqrtf(temp)) * (0x8000 / M_PI);

    if ((rotDest->y == 0x4000) || (rotDest->y == -0x4000)) {
        rotDest->x = 0;
        rotDest->z = Math_FAtan2F(-mf->xy, mf->yy) * (0x8000 / M_PI);
    } else {
        rotDest->z = Math_FAtan2F(mf->yx, mf->xx) * (0x8000 / M_PI);

        if (!flag) {
            rotDest->x = Math_FAtan2F(mf->zy, mf->zz) * (0x8000 / M_PI);
        } else {
            // see Matrix_MtxFToYXZRotS
            temp = mf->xy;
            temp2 = mf->yy;
            temp3 = mf->yz;

            temp *= temp;
            temp += SQ(temp2);
            temp2 = mf->zy;
            temp += SQ(temp2);
            temp = sqrtf(temp);
            temp = temp2 / temp;

            temp2 = mf->xz;
            temp2 *= temp2;
            temp2 += SQ(temp3);
            temp3 = mf->zz;
            temp2 += SQ(temp3);
            temp2 = sqrtf(temp2);
            temp2 = temp3 / temp2;

            rotDest->x = Math_FAtan2F(temp, temp2) * (0x8000 / M_PI);
        }
    }
}

/*
 * Rotate the matrix by `f` radians around a unit vector `vec`.
 * NB: vec is assumed to be a unit vector.
 */
void Matrix_RotateAxis(f32 f, Vec3f* vec, u8 mode) {
    MtxF* cmf;
    f32 sin;
    f32 cos;
    f32 rCos;
    f32 vrs;
    f32 temp1;
    f32 temp2;
    f32 temp3;
    f32 temp4;
    f32 temp5;

    if (mode == MTXMODE_APPLY) {
        if (f != 0) {
            cmf = sCurrentMatrix;

            sin = sinf(f);
            cos = cosf(f);

            temp2 = cmf->xy;
            temp3 = cmf->xz;
            temp1 = cmf->xx;
            temp4 = (vec->x * temp1 + vec->y * temp2 + vec->z * temp3) * (1.0f - cos);
            cmf->xx = temp1 * cos + vec->x * temp4 + sin * (temp2 * vec->z - temp3 * vec->y);
            cmf->xy = temp2 * cos + vec->y * temp4 + sin * (temp3 * vec->x - temp1 * vec->z);
            cmf->xz = temp3 * cos + vec->z * temp4 + sin * (temp1 * vec->y - temp2 * vec->x);

            temp1 = cmf->yx;
            temp2 = cmf->yy;
            temp3 = cmf->yz;
            temp4 = (vec->x * temp1 + vec->y * temp2 + vec->z * temp3) * (1.0f - cos);
            cmf->yx = temp1 * cos + vec->x * temp4 + sin * (temp2 * vec->z - temp3 * vec->y);
            cmf->yy = temp2 * cos + vec->y * temp4 + sin * (temp3 * vec->x - temp1 * vec->z);
            cmf->yz = temp3 * cos + vec->z * temp4 + sin * (temp1 * vec->y - temp2 * vec->x);

            temp1 = cmf->zx;
            temp2 = cmf->zy;
            temp3 = cmf->zz;
            temp4 = (vec->x * temp1 + vec->y * temp2 + vec->z * temp3) * (1.0f - cos);
            cmf->zx = temp1 * cos + vec->x * temp4 + sin * (temp2 * vec->z - temp3 * vec->y);
            cmf->zy = temp2 * cos + vec->y * temp4 + sin * (temp3 * vec->x - temp1 * vec->z);
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

            if (0) {}

            temp2 = vec->x * rCos * vec->y;
            temp3 = vec->z * sin;
            cmf->yx = temp2 + temp3;
            cmf->xy = temp2 - temp3;

            temp2 = vec->x * rCos * vec->z;
            temp3 = vec->y * sin;
            cmf->zx = temp2 - temp3;
            cmf->xz = temp2 + temp3;

            temp2 = vec->y * rCos * vec->z;
            temp3 = vec->x * sin;
            cmf->zy = temp2 + temp3;
            cmf->yz = temp2 - temp3;

            cmf->wx = cmf->wy = cmf->wz = cmf->xw = cmf->yw = cmf->zw = 0.0f;
            cmf->ww = 1.0f;
        } else {
            cmf->yx = 0.0f;
            cmf->zx = 0.0f;
            cmf->wx = 0.0f;
            cmf->xy = 0.0f;
            cmf->zy = 0.0f;
            cmf->wy = 0.0f;
            cmf->xz = 0.0f;
            cmf->yz = 0.0f;
            cmf->wz = 0.0f;
            cmf->xw = 0.0f;
            cmf->yw = 0.0f;
            cmf->zw = 0.0f;
            cmf->xx = 1.0f;
            cmf->yy = 1.0f;
            cmf->zz = 1.0f;
            cmf->ww = 1.0f;
        }
    }
}

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
                             file, line, "mf", mf->xx, mf->xy, mf->xz, mf->xw, mf->yx, mf->yy, mf->yz, mf->yw, mf->zx,
                             mf->zy, mf->zz, mf->zw, mf->wx, mf->wy, mf->wz, mf->ww);
                Fault_AddHungupAndCrash(file, line);
            }
        }
    }

    return mf;
}

void func_800D2A34(MtxF* mf, f32 arg1, f32 arg2, f32 arg3, f32 arg4) {
    mf->yx = 0.0f;
    mf->zx = 0.0f;
    mf->wx = 0.0f;
    mf->xy = 0.0f;
    mf->zy = 0.0f;
    mf->wy = 0.0f;
    mf->xz = 0.0f;
    mf->yz = 0.0f;
    mf->wz = 0.0f;
    mf->xx = arg1;
    mf->yy = arg1;
    mf->zz = arg1;
    mf->xw = arg2;
    mf->yw = arg3;
    mf->zw = arg4;
    mf->ww = 1.0f;
}

void func_800D2A98(Mtx* mtx, f32 arg1, f32 arg2, f32 arg3, f32 arg4) {
    MtxF mf;

    func_800D2A34(&mf, arg1, arg2, arg3, arg4);
    guMtxF2L(&mf, mtx);
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

void func_800D2CEC(Mtx* mtx, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6) {
    Mtx_t* m = &mtx->m;
    u16* m1 = (u16*)(*m)[0];
    u16* m2 = (u16*)(*m)[2];
    u32 temp;

    (*m)[0][1] = 0;
    (*m)[2][1] = 0;
    (*m)[0][3] = 0;
    (*m)[2][3] = 0;
    (*m)[0][4] = 0;

    temp = (s32)(arg1 * 65536.0f);
    (*m)[0][0] = temp;

    m1[1] = 0;
    (*m)[2][0] = temp << 16;

    temp = (s32)(arg2 * 65536.0f);
    (*m)[0][2] = temp >> 16;
    (*m)[2][2] = temp & 0xFFFF;

    temp = (s32)(arg3 * 65536.0f);
    (*m)[1][1] = temp;
    m1[11] = 0;
    (*m)[3][1] = temp << 16;

    (*m)[2][4] = 0;

    temp = (s32)(arg4 * 65536.0f);
    m1[12] = (temp >> 16) & 0xFFFF;
    m2[12] = temp & 0xFFFF;

    temp = (s32)(arg5 * 65536.0f);
    m1[13] = (temp >> 16) & 0xFFFF;
    m2[13] = temp & 0xFFFF;

    temp = (s32)(arg6 * 65536.0f);
    m1[14] = (temp >> 16) & 0xFFFF;
    m1[15] = 1;
    (*m)[3][3] = temp << 16;
}
