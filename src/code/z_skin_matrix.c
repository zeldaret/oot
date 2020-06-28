#include <ultra64.h>
#include <global.h>

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/func_800A6E10.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/func_800A6EF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/func_800A6FA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/func_800A72FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/func_800A730C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/func_800A735C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/func_800A73E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/func_800A76A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/func_800A7704.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/func_800A7894.s")

// SkinMatrix_Translate 
void func_800A7A24(MtxF* mf, float dx, float dy, float dz) {
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

// Called "Math_Vec3f_ToVec3s" in in z_lib.c:
void func_800A7BE4(Vec3f* src, Vec3s* dest) {
    dest->x = src->x;
    dest->y = src->y;
    dest->z = src->z;
}

// Called "Math_Vec3s_ToVec3f" in z_lib.c:
void func_800A7C20(Vec3s* src, Vec3f* dest) {
    dest->x = src->x;
    dest->y = src->y;
    dest->z = src->z;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/func_800A7C60.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/func_800A7E70.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/func_800A7EC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin_matrix/func_800A8030.s")
