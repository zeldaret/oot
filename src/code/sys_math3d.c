#include <ultra64.h>
#include <global.h>
#include <vt.h>
#include <sys_math3d.h>
#define NON_MATCHING

#pragma GLOBAL_ASM("asm/non_matchings/code/sys_math3d/func_800CA7D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/sys_math3d/func_800CA8E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/sys_math3d/func_800CAB94.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/sys_math3d/func_800CACAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/sys_math3d/func_800CAD08.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/sys_math3d/func_800CAEE8.s")

void func_800CAF5C(Vec3f *arg0, Vec3f *arg1, f32 arg2, Vec3f *arg3) {
    arg3->x = (f32) ((arg1->x * arg2) + arg0->x);
    arg3->y = (f32) ((arg1->y * arg2) + arg0->y);
    arg3->z = (f32) ((arg1->z * arg2) + arg0->z);
}

void func_800CAFA0(Vec3f* arg0, Vec3f* arg1, f32 arg2, Vec3f* arg3) {
    Vec3f sp1C;

    Math_Vec3f_Diff(arg1, arg0, &sp1C);
    func_800CAF5C(arg0, &sp1C, arg2, arg3);
}
f32 Math3D_DotProduct(Vec3f* vec1, Vec3f* vec2) {
    f32 ret;

    Math3D_CalcDotProduct(vec1, vec2, &ret);
    return ret;
}

s32 Math3D_CalcDotProduct(Vec3f *vec1, Vec3f *vec2, f32 *dst) {
    f32 magProduct;
    
    magProduct = Math3D_Vec3fMagnitude(vec1) * Math3D_Vec3fMagnitude(vec2);
    if (fabsf(magProduct) < 0.008f) {
        *dst = 0.0f;
        return 1;
    }
    *dst = ((vec1->x * vec2->x) + (vec1->y * vec2->y) + (vec1->z * vec2->z)) / magProduct;
    return 0;
}

void func_800CB0C0(Vec3f *vec1, Vec3f *vec2, Vec3f *ret) {
    
    f32 temp_f12;
    Vec3f negVec1;
    f32 temp_f14;
    f32 temp_f2;
    f32 temp_ret;

    // -vec1 does not work.
    negVec1.x = vec1->x * -1.0f;
    negVec1.y = vec1->y * -1.0f;
    negVec1.z = vec1->z * -1.0f;

    temp_ret = Math3D_DotProduct(&negVec1, vec2);
    
    temp_f2 =  vec2->x * temp_ret;
    temp_f12 = vec2->y * temp_ret;
    temp_f14 = vec2->z * temp_ret;

    ret->x = ((temp_f2 + vec1->x) + (temp_f2 + vec1->x)) + negVec1.x;
    ret->y = ((temp_f12 + vec1->y) + (temp_f12 + vec1->y)) + negVec1.y;
    ret->z = ((temp_f14 + vec1->z) + (temp_f14 + vec1->z)) + negVec1.z;
}

s32 func_800CB198(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5) {
    if (arg0 <= arg4 && arg4 <= arg1 && arg2 <= arg5 && arg5 <= arg3) {
        return 1;
    }
    return 0;
}

/**********************************************************************/
/*         The next 2 functions have some interest control flow       */
/**********************************************************************/
#pragma GLOBAL_ASM("asm/non_matchings/code/sys_math3d/func_800CB1F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/sys_math3d/func_800CB338.s")
/**********************************************************************/

f32 func_800CB55C(f32 arg0, f32 arg1) {
    return (arg0 * arg0) + (arg1 * arg1);
}

f32 func_800CB570(f32 arg0, f32 arg1) {
    return sqrtf(func_800CB55C(arg0, arg1));
}

f32 func_800CB594(f32 arg0, f32 arg1, f32 arg2, f32 arg3) {
    func_800CB55C(arg0 - arg2, arg1 - arg3);
}

f32 func_800CB5D8(f32 arg0, f32 arg1, f32 arg2, f32 arg3) {
    return sqrtf(func_800CB594(arg0, arg1, arg2, arg3));
}

f32 Math3D_Vec3f_HadamardProduct(Vec3f *vec) {
    return SQ(vec->x) + SQ(vec->y) + SQ(vec->z);
}

f32 Math3D_Vec3fMagnitude(Vec3f* vec) {
     return sqrt(Math3D_Vec3f_HadamardProduct(vec));
}

f32 func_800CB650(Vec3f* a, Vec3f* b) {
    Vec3f diff;

    Math_Vec3f_Diff(a, b, &diff);
    return Math3D_Vec3f_HadamardProduct(&diff);
}

f32 Math3D_Vec3f_DistXYZ(Vec3f* a, Vec3f* b) {
    return Math_Vec3f_DistXYZ(a, b);
}

/*
 * Calculates the magnitude of the vector produced from
 * a - b.
*/
f32 func_800CB698(Vec3s *a, Vec3f *b) {
    Vec3f diff;

    diff.x = a->x - b->x;
    diff.y = a->y - b->y;
    diff.z = a->z - b->z;
    return Math3D_Vec3fMagnitude(&diff);
}

f32 func_800CB70C(Vec3f *arg0, Vec3f *arg1, f32 arg2, f32 arg3) {
    return ((arg0->x - arg2) * (arg1->y - arg3)) - ((arg0->y - arg3) * (arg1->x - arg2));
}

f32 func_800CB744(Vec3f *arg0, Vec3f *arg1, f32 arg2, f32 arg3) {
    return ((arg0->y - arg2) * (arg1->z - arg3)) - ((arg0->z - arg3) * (arg1->y - arg2));
}

f32 func_800CB77C(Vec3f *arg0, Vec3f *arg1, f32 arg2, f32 arg3) {
    return ((arg0->z - arg2) * (arg1->x - arg3)) - ((arg0->x - arg3) * (arg1->z - arg2));
}

//Math3D_Vec3f_Cross
void Math3D_Vec3f_Cross(Vec3f *a, Vec3f *b, Vec3f *ret) {
    ret->x = (a->y * b->z) - (a->z * b->y);
    ret->y = (a->z * b->x) - (a->x * b->z);
    ret->z = (a->x * b->y) - (a->y * b->x);
}

//Math3D_SurfaceNorm
void Math3D_SurfaceNorm(Vec3f* va, Vec3f* vb, Vec3f* vc, Vec3f* normal) {
    static Vec3f abDiff;
    static Vec3f acDiff;
    
    Math_Vec3f_Diff(vb, va, &abDiff);
    Math_Vec3f_Diff(vc, va, &acDiff);
    Math3D_Vec3f_Cross(&abDiff, &acDiff, normal);
}

s32 func_800CB88C(Vec3f *arg0, Vec3f *arg1, Vec3f *arg2) {
    s32 ret = 0;

    
    if (arg2->x < arg0->x) {
        ret = 1;
    }
    
    if (arg0->x < arg1->x) {
        ret |= 2;
    }
    
    if (arg2->y < arg0->y) {
        ret |= 4;
    }
    
    if (arg0->y < arg1->y) {
        ret |= 8;
    }
    
    if (arg2->z < arg0->z) {
        ret |= 0x10;
    }
    
    if (arg0->z < arg1->z) {
        ret |= 0x20;
    }
    return ret;
}

#ifdef NON_MATCHING
s32 func_800CB934(Vec3f *arg0, Vec3f *arg1, Vec3f *arg2) {
    s32 ret = 0;
    
    if ((arg2->y - arg1->x) < (arg0->y - arg0->x)) {
        ret = 1;
    }

    if ((arg0->y - arg0->x) < (arg1->y - arg2->x)) {
        ret |= 2;
    }
    
    if ((arg2->x + arg2->y) < (arg0->x + arg0->y)) {
        ret |= 4;
    }

    if ((arg0->x + arg0->y) < (arg1->x + arg1->y)) {
        ret |= 8;
    }

    if ((-arg1->z + arg2->y) < (-arg0->z + arg0->y)) {
        ret |= 0x10;
    }

    if ((-arg0->z + arg0->y) < (arg1->y - arg2->z)) {
        ret |= 0x20;
    }

    if ((arg2->z + arg2->y) < (arg0->z + arg0->y)) {
        ret |= 0x40;
    }

    if ((arg0->z + arg0->y) < (arg1->z + arg1->y)) {
        ret |= 0x80;
    }

    if ((-arg1->z + arg2->x) < (-arg0->z + arg0->x)) {
        ret |= 0x100;
    }

    if ((-arg0->z + arg0->x) < (-arg2->z + arg1->x)) {
        ret |= 0x200;
    }
    
    if ((arg2->z + arg2->x) < (arg0->z + arg0->x)) {
        ret |= 0x400;
    }
    
    if ((arg0->z + arg0->x) < (arg1->z + arg1->x)) {
        ret |= 0x800;
    }
    return ret;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/sys_math3d/func_800CB934.s")
#endif

s32 func_800CBAE4(Vec3f *arg0, Vec3f *arg1, Vec3f *arg2) {
    s32 ret = 0;

    if ((arg2->x + arg2->y + arg2->z) < (arg0->x + arg0->y + arg0->z)) {
        ret = 0x01;
    }

    if ((-arg1->x + arg2->y + arg2->z) < (-arg0->x + arg0->y + arg0->z)) {
        ret |= 0x02;
    }

    if ((-arg1->x + arg2->y - arg1->z) < (-arg0->x + arg0->y - arg0->z)) {
        ret |= 0x04;
    }

    if ((arg2->x + arg2->y - arg1->z) < (arg0->x + arg0->y - arg0->z)) {
        ret |= 0x08;
    }
    
    if ((arg2->x - arg1->y + arg2->z) < (arg0->x - arg0->y + arg0->z)) {
        ret |= 0x10;
    }

    if ((-arg1->x - arg1->y + arg2->z) < (-arg0->x - arg0->y + arg0->z)) {
        ret |= 0x20;
    }
    
    if ((-arg1->x - arg1->y + arg2->z) < (-arg0->x - arg0->y + arg0->z)) {
        ret |= 0x40;
    }
    
    if ((-arg1->x - arg1->y - arg1->z) < (-arg0->x - arg0->y - arg0->z)) {
        ret |= 0x80;
    }
    return ret;
}

#ifdef NON_MATCHING
// some confusing control flow.
s32 func_800CBC60(Vec3f *arg0, Vec3f *arg1, Vec3f* arg2, Vec3f* arg3) {
    static Vec3f D_8016A608;
    static Vec3f D_8016A618;
    static Vec3f D_8016A628;
    static Vec3f D_8016A638;

    s32 temp_ret;
    s32 temp_ret_2;
    s32 f2;
    s32 f1;
    s32 ret;
    

    f2 = f1 = 0;
    
    temp_ret = func_800CB88C(arg2, arg0, arg1);
    f1 = temp_ret;
    if (f1 == 0) {
        return 1;
    }

    temp_ret = func_800CB88C(arg3, arg0, arg1);
    if (temp_ret == 0) {
        return 1;
    }

    if ((temp_ret & f1) != 0) {
        return 0;
    }

    f1 = f1 | (func_800CB934(arg2, arg0, arg1) << 8);
    f2 = f2 | (func_800CB934(arg3, arg0, arg1) << 8);
    if ((f2 & f1) != 0) {
        return 0;
    }

    f1 = f1 | (func_800CBAE4(arg2, arg0, arg1) << 0x18);
    f2 = f2 | (func_800CBAE4(arg3, arg0, arg1) << 0x18);
    if ((f2 & f1) != 0) {
        return 0;
    }

    D_8016A608.x = arg0->x;
    D_8016A608.y = arg0->y;
    D_8016A608.z = arg0->z;
    D_8016A618.x = arg0->x;
    D_8016A618.y = arg0->y;
    D_8016A618.z = arg1->z;
    D_8016A628.x = arg0->x;
    D_8016A628.y = arg1->y;
    D_8016A628.z = arg1->z;
    if (func_800CE25C(&D_8016A608, &D_8016A618, &D_8016A628, 1.0f, 0.0f, 0.0f, arg0->x, arg2, arg3, &D_8016A638, 0) != 0) {
        return 1;
    }

    D_8016A608.x = arg0->x;
    D_8016A608.y = arg0->y;
    D_8016A608.z = arg0->z;
    D_8016A618.x = arg0->x;
    D_8016A618.y = arg1->y;
    D_8016A618.z = arg1->z;
    D_8016A628.x = arg0->x;
    D_8016A628.y = arg1->y;
    D_8016A628.z = arg0->z;
    if (func_800CE25C(&D_8016A608, &D_8016A618, &D_8016A628, -1.0f, 0.0f, 0.0f, arg0->x, arg2, arg3, &D_8016A638, 0) != 0) {
        return 1;
    }

    D_8016A608.x = arg0->x;
    D_8016A608.y = arg1->y;
    D_8016A608.z = arg1->z;
    D_8016A618.x = arg0->x;
    D_8016A618.y = arg0->y;
    D_8016A618.z = arg1->z;
    D_8016A628.x = arg1->x;
    D_8016A628.y = arg1->y;
    D_8016A628.z = arg1->z;
    if (func_800CE25C(&D_8016A608, &D_8016A618, &D_8016A628, 0.0f, 0.0f, 1.0f, -arg1->z, arg2, arg3, &D_8016A638, 0) != 0) {
        return 1;
    }

    D_8016A608.x = arg1->x;
    D_8016A608.y = arg1->y;
    D_8016A608.z = arg1->z;
    D_8016A618.x = arg0->x;
    D_8016A618.y = arg0->y;
    D_8016A618.z = arg1->z;
    D_8016A628.x = arg1->x;
    D_8016A628.y = arg0->y;
    D_8016A628.z = arg1->z;
    if (func_800CE25C(&D_8016A608, &D_8016A618, &D_8016A628, 0.0f, 0.0f, 1.0f, -arg1->z, arg2, arg3, &D_8016A638, 0) != 0) {
        return 1;
    }
    D_8016A608.x = arg1->x;
    D_8016A608.y = arg1->y;
    D_8016A608.z = arg1->z;
    D_8016A618.x = arg0->x;
    D_8016A618.y = arg1->y;
    D_8016A618.z = arg0->z;
    D_8016A628.x = arg0->x;
    D_8016A628.y = arg1->y;
    D_8016A628.z = arg1->z;
    if (func_800CE25C(&D_8016A608, &D_8016A618, &D_8016A628, 0.0f, 1.0f, 0.0f, -arg1->y, arg2, arg3, &D_8016A638, 0) != 0) {
        return 1;
    }

    D_8016A608.x = arg1->x;
    D_8016A608.y = arg1->y;
    D_8016A608.z = arg1->z;
    D_8016A618.x = arg1->x;
    D_8016A618.y = arg1->y;
    D_8016A618.z = arg0->z;
    D_8016A628.x = arg0->x;
    D_8016A628.y = arg1->y;
    D_8016A628.z = arg1->z;
    if (func_800CE25C(&D_8016A608, &D_8016A618, &D_8016A628, 0.0f, 1.0f, 0.0f, -arg1->y, arg2, arg3, &D_8016A638, 0) != 0) {
        return 1;
    }

    D_8016A608.x = arg0->x;
    D_8016A608.y = arg0->y;
    D_8016A608.z = arg0->z;
    D_8016A618.x = arg0->x;
    D_8016A618.y = arg1->y;
    D_8016A618.z = arg0->z;
    D_8016A628.x = arg1->x;
    D_8016A628.y = arg1->y;
    D_8016A628.z = arg0->z;
    if (func_800CE25C(&D_8016A608, &D_8016A618, &D_8016A628, 0.0f, 0.0f, -1.0f, arg0->z, arg2, arg3, &D_8016A638, 0) != 0) {
        return 1;
    }

    D_8016A608.x = arg0->x;
    D_8016A608.y = arg0->y;
    D_8016A608.z = arg0->z;
    D_8016A618.x = arg1->x;
    D_8016A618.y = arg1->y;
    D_8016A618.z = arg0->z;
    D_8016A628.x = arg1->x;
    D_8016A628.y = arg0->y;
    D_8016A628.z = arg0->z;
    if (func_800CE25C(&D_8016A608, &D_8016A618, &D_8016A628, 0.0f, 0.0f, -1.0f, arg0->z, arg2, arg3, &D_8016A638, 0) != 0) {
        return 1;
    }

    D_8016A608.x = arg0->x;
    D_8016A608.y = arg0->y;
    D_8016A608.z = arg0->z;
    D_8016A618.x = arg1->x;
    D_8016A618.y = arg0->y;
    D_8016A618.z = arg0->z;
    D_8016A628.x = arg1->x;
    D_8016A628.y = arg0->y;
    D_8016A628.z = arg1->z;
    if (func_800CE25C(&D_8016A608, &D_8016A618, &D_8016A628, 0.0f, -1.0f, 0.0f, arg0->y, arg2, arg3, &D_8016A638, 0) != 0) {
        return 1;
    }

    D_8016A608.x = arg0->x;
    D_8016A608.y = arg0->y;
    D_8016A608.z = arg0->z;
    D_8016A618.x = arg1->x;
    D_8016A618.y = arg0->y;
    D_8016A618.z = arg1->z;
    D_8016A628.x = arg0->x;
    D_8016A628.y = arg0->y;
    D_8016A628.z = arg1->z;
    if (func_800CE25C(&D_8016A608, &D_8016A618, &D_8016A628, 0.0f, -1.0f, 0.0f, arg0->y, arg2, arg3, &D_8016A638, 0) != 0) {
        return 1;
    }

    D_8016A608.x = arg1->x;
    D_8016A608.y = arg1->y;
    D_8016A608.z = arg1->z;
    D_8016A618.x = arg1->x;
    D_8016A618.y = arg0->y;
    D_8016A618.z = arg0->z;
    D_8016A628.x = arg1->x;
    D_8016A628.y = arg1->y;
    D_8016A628.z = arg0->z;
    if (func_800CE25C(&D_8016A608, &D_8016A618, &D_8016A628, 1.0f, 0.0f, 0.0f, -arg1->x, arg2, arg3, &D_8016A638, 0) != 0) {
        return 1;
    }

    D_8016A608.x = arg1->x;
    D_8016A608.y = arg1->y;
    D_8016A608.z = arg1->z;
    D_8016A618.x = arg1->x;
    D_8016A618.y = arg0->y;
    D_8016A618.z = arg1->z;
    D_8016A628.x = arg1->x;
    D_8016A628.y = arg0->y;
    D_8016A628.z = arg0->z;
    if (func_800CE25C(&D_8016A608, &D_8016A618, &D_8016A628, 0x3F800000, 0.0f, 0.0f, -arg1->x, arg2, arg3, &D_8016A638, 0) != 0) {
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/sys_math3d/func_800CBC60.s")
#endif

s32 func_800CC6D8(Vec3s *arg0, Vec3s *arg1, Vec3s *arg2, Vec3s *arg3) {
    static Vec3f vec1;
    static Vec3f vec2;
    static Vec3f vec3;
    static Vec3f vec4;

    vec1.x = arg0->x;
    vec1.y = arg0->y;
    vec1.z = arg0->z;
    vec2.x = arg1->x;
    vec2.y = arg1->y;
    vec2.z = arg1->z;
    vec3.x = arg2->x;
    vec3.y = arg2->y;
    vec3.z = arg2->z;
    vec4.x = arg3->x;
    vec4.y = arg3->y;
    vec4.z = arg3->z;
    return func_800CBC60(&vec1, &vec2, &vec3, &vec4);
}

void func_800CC824(Vec3f *arg0, s16 arg1, f32 *arg2, f32 *arg3, f32 *arg4) {
    *arg2 = Math_Sins(arg1) * 32767.0f;
    *arg3 = Math_Coss(arg1) * 32767.0f;
    *arg4 = -((*arg2 * arg0->x) + (*arg3 * arg0->z));
}

void func_800CC8B4(Vec3f *va, Vec3f* vb, Vec3f* vc, f32 *nx, f32 *ny, f32 *nz, f32 *nd) {
    f32 temp_f16;
    f32 t;
    static Vec3f surfaceNormal;

    Math3D_SurfaceNorm(va, vb, vc, &surfaceNormal);
    temp_f16 = sqrtf(SQ(surfaceNormal.x) + SQ(surfaceNormal.y) + SQ(surfaceNormal.z));
    if (!(fabsf(temp_f16) < 0.008f)) {
        t = 1.0f / temp_f16;
        *nx = surfaceNormal.x * t;
        *ny = surfaceNormal.y * t;
        *nz = surfaceNormal.z * t;
        *nd = -((*nx * va->x) + (*ny * va->y) + (*nz * va->z));
    } else {
        *nd = 0.0f;
        *nz = 0.0f;
        *ny = 0.0f;
        *nx = 0.0f;
    }
}

f32 func_800CC9C8(f32 arg0, f32 arg1, f32 arg2, f32 arg3, Vec3f *arg4) {
    return (arg4->x * arg0) + (arg1 * arg4->y) + (arg2 * arg4->z) + arg3;
}

f32 func_800CCA04(Vec4f *arg0, Vec4f *arg1) {
    return ((arg0->x * arg1->x) + (arg0->y * arg1->y) + (arg0->z * arg1->z)) + arg0->w;
}

// Math3D_UDistPlaneToPos
f32 func_800CCA3C(f32 x, f32 y, f32 z, f32 arg3, Vec3f* norm) {

    if (fabsf(sqrtf(SQ(x) + SQ(y) + SQ(z))) < 0.008f) {
        osSyncPrintf(VT_COL(YELLOW, BLACK));
        osSyncPrintf("Math3DLengthPlaneAndPos():法線size がゼロ近いです%f %f %f\n", x, y, z); //Math3DLengthPlaneAndPos(): Normal size is near zero %f %f %f
        osSyncPrintf(VT_RST);
        return 0.0f;
    }
    return fabsf(func_800CCB0C(x, y, z, arg3, norm));
}

//Math3D_DistPlaneToPos
f32 func_800CCB0C(f32 x, f32 y, f32 z, f32 arg3, Vec3f* norm) {
    f32 normMagnitude;

    normMagnitude = sqrtf(SQ(x) + SQ(y) + SQ(z));
    if (fabsf(normMagnitude) < 0.008f) {
        osSyncPrintf(VT_COL(YELLOW, BLACK));
        osSyncPrintf("Math3DSignedLengthPlaneAndPos():法線size がゼロ近いです%f %f %f\n", x, y, z); //Math3DSignedLengthPlaneAndPos(): Normal size is close to zero %f %f %f 
        osSyncPrintf(VT_RST);
        return 0.0f;
    }
    return func_800CC9C8(x, y, z, arg3, norm) / normMagnitude;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/sys_math3d/func_800CCBE4.s")

s32 func_800CCF00(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6) {
    return func_800CCBE4(arg0, arg1, arg2, arg3, arg4, arg5, 1.0f, arg6);
}

s32 func_800CCF48(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4) {
    func_800CCBE4(arg0, arg1, arg2, arg3, arg4, 300.0f, 1.0f, 0.6f);
}

s32 func_800CCF98(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 normMagnitude, f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 *pointDist, f32 argA) {
    if (fabsf(normMagnitude) < 0.008f) {
        return 0;
    }
    if (func_800CCBE4(arg0, arg1, arg2, arg7, arg8, 300.0f, argA, normMagnitude) != 0) {
        *pointDist = (f32) ((((-arg3 * arg8) - (arg5 * arg7)) - arg6) / normMagnitude);
        return 1;
    }
    return 0;
}

s32 func_800CD044(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 *arg9, f32 argA) {
    if (fabsf(arg4) < 0.008f) {
        return 0;
    }
    if (func_800CCBE4(arg0, arg1, arg2, arg7, arg8, 0.0f, argA, arg4) != 0) {
        *arg9 = (f32) ((((-arg3 * arg8) - (arg5 * arg7)) - arg6) / arg4);
        return 1;
    }
    return 0;
}

s32 func_800CD0F0(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5) {
    if (fabsf(arg3) < 0.008f) {
        return 0;
    }
    if (func_800CCBE4(arg0, arg1, arg2, arg4, arg5, 300.0f, 1.0f, arg3) != 0) {
        return 1;
    }
    return 0;
}

s32 func_800CD168(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 *arg9, f32 argA, f32 argB) {
    f32 sp3C;
    f32 temp_ret;
    Vec3f sp2C;
    

    if (fabsf(arg4) < 0.008f) {
        return 0;
    }
    sp2C.x = arg8;
    sp2C.y = argA;
    sp2C.z = arg7;
    sp3C = func_800CC9C8(arg3, arg4, arg5, arg6, &sp2C);
    sp2C.y = argB;
    temp_ret = func_800CC9C8(arg3, arg4, arg5, arg6, &sp2C);
    if (((0.0f < sp3C) && (0.0f < temp_ret)) || ((sp3C < 0.0f) && (temp_ret < 0.0f))) {
        return 0;
    }

    if (func_800CCBE4(arg0, arg1, arg2, arg7, arg8, 300.0f, 1.0f, arg4) != 0) {
        *arg9 = (f32) ((((-arg3 * arg8) - (arg5 * arg7)) - arg6) / arg4);
        return 1;
    }
    return 0;
}

s32 func_800CD2D8(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, Vec3f *arg3, f32 arg4, f32 arg5, f32 arg6) {
    if (fabsf(arg3->y) < 0.008f) {
        return 0;
    }
    if (func_800CCBE4(arg0, arg1, arg2, arg4, arg5, 0.0f, arg6, arg3->y) != 0) {
        return 1;
    }
    return 0;
}

s32 func_800CD34C(Vec3f*,Vec3f*,Vec3f*,f32,f32,f32,f32,f32);

#pragma GLOBAL_ASM("asm/non_matchings/code/sys_math3d/func_800CD34C.s")

s32 func_800CD668(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6) {
    return func_800CD34C(arg0, arg1, arg2, arg3, arg4, arg5, 1.0f, arg6);
}

s32 func_800CD6B0(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 *arg9) {
    if (fabsf(arg3) < 0.008f) {
        return 0;
    }
    arg3 = arg3;
    if (func_800CD34C(arg0, arg1, arg2, arg7, arg8, 300.0f, 1.0f, arg3) != 0) {
        *arg9 = (f32) ((((-arg4 * arg7) - (arg5 * arg8)) - arg6) / arg3);
        return 1;
    }
    return 0;
}

s32 func_800CD760(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5) {
    if (fabsf(arg3) < 0.008f) {
        return 0;
    }
    if (func_800CD34C(arg0, arg1, arg2, arg4, arg5, 300.0f, 1.0f, arg3) != 0) {
        return 1;
    }
    return 0;
}

Vec3f D_8016A698;
#ifdef NON_MATCHING
s32 func_800CD7D8(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 *arg9, f32 argA, f32 argB) {
    f32 sp34;
    f32 temp_ret;
    Vec3f* vec;
    if (fabsf(arg3) < 0.008f) {
        return 0;
    }

    D_8016A698.x = argA;
    D_8016A698.y = arg7;
    D_8016A698.z = arg8;
    sp34 = func_800CC9C8(arg3, arg4, arg5, arg6, &D_8016A698);
    D_8016A698.x = argB;
    temp_ret = func_800CC9C8(arg3, arg4, arg5, arg6, &D_8016A698);
    if (((0.0f < sp34) && (0.0f < temp_ret)) || (((sp34 < 0.0f) && (temp_ret < 0.0f)))) {
        return 0;
    }
    if (func_800CD34C(arg0, arg1, arg2, arg7, arg8, 300.0f, 1.0f, arg3) != 0) {
        *arg9 = (f32) ((((-arg4 * arg7) - (arg5 * arg8)) - arg6) / arg3);
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/sys_math3d/func_800CD7D8.s")
#endif

// no idea why arg3 would be a pointer here.
s32 func_800CD95C(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 *arg3, f32 arg4, f32 arg5, f32 arg6) {
    if (fabsf(*arg3) < 0.008f) {
        return 0;
    }
    if (func_800CD34C(arg0, arg1, arg2, arg4, arg5, 0.0f, arg6, *arg3) != 0) {
        return 1;
    }
    return 0;
}

s32 func_800CD9D0(Vec3f*,Vec3f*,Vec3f*,f32,f32,f32,f32,f32);
#pragma GLOBAL_ASM("asm/non_matchings/code/sys_math3d/func_800CD9D0.s")

s32 func_800CDD18(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6) {
    return func_800CD9D0(arg0, arg1, arg2, arg3, arg4, arg5, 1.0f, arg6);
}

s32 func_800CDD60(s32 arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 *arg9) {
    if (fabsf(arg5) < 0.008f) {
        return 0;
    }
    if (func_800CD9D0(arg0, arg1, arg2, arg7, arg8, 300.0f, 1.0f, arg5) != 0) {
        *arg9 = (f32) ((((-arg3 * arg7) - (arg4 * arg8)) - arg6) / arg5);
        return 1;
    }
    return 0;
}

s32 func_800CDE10(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5) {
    if (fabsf(arg3) < 0.008f) {
        return 0;
    }
    if (func_800CD9D0(arg0, arg1, arg2, arg4, arg5, 300.0f, 1.0f, arg3) != 0) {
        return 1;
    }
    return 0;
}

Vec3f D_8016A6A8;
#ifdef NON_MATCHING
s32 func_800CDE88(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 *arg9, f32 argA, f32 argB) {
    f32 sp2C;
    f32 temp_ret;

    if (fabsf(arg5) < 0.008f) {
        return 0;
    }
    D_8016A6A8.x = arg7;
    D_8016A6A8.y = arg8;
    D_8016A6A8.z = argA;
    sp2C = func_800CC9C8(arg3, arg4, arg5, arg6, &D_8016A6A8);
    D_8016A6A8.z = argB;
    temp_ret = func_800CC9C8(arg3, arg4, arg5, arg6, &D_8016A6A8);
    if (((0.0f < sp2C) && (0.0f < temp_ret)) || ((sp2C < 0.0f) && (temp_ret < 0.0f))) {
        return 0;
    }

    if (func_800CD9D0(arg0, arg1, arg2, arg7, arg8, 300.0f, 1.0f, arg5) != 0) {
        *arg9 = (f32) ((((-arg3 * arg7) - (arg4 * arg8)) - arg6) / arg5);
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/sys_math3d/func_800CE010.s")
#endif

s32 func_800CE010(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, Vec3f *arg3, f32 arg4, f32 arg5, f32 arg6) {
    if (fabsf(arg3->z) < 0.008f) {
        return 0;
    }
    if (func_800CD9D0(arg0, arg1, arg2, arg4, arg5, 0.0f, arg6, arg3->z) != 0) {
        return 1;
    }
    return 0;
}

s32 func_800CE084(f32 arg0, f32 arg1, Vec3f *arg2, Vec3f *arg3, Vec3f *arg4) {
    f32 temp_f2;

    temp_f2 = arg0 - arg1;
    if (fabsf(temp_f2) < 0.008f) {
        *arg4 = *arg3;
        return 0;
    }
    if (arg0 == 0.0f) {
        *arg4 = *arg2;
    } else {
        if (arg1 == 0.0f) {
            *arg4 = *arg3;
        } else {
            func_800CAFA0(arg2, arg3, arg0 / temp_f2, arg4);
        }
    }
    return 1;
}

s32 func_800CE15C(f32 arg0, f32 arg1, f32 arg2, f32 arg3, Vec3f* arg4, Vec3f *arg5, Vec3f *arg6, s32 arg7) {
    f32 sp24;
    f32 temp_ret;

    sp24 = func_800CC9C8(arg0, arg1, arg2, arg3, arg4);
    temp_ret = func_800CC9C8(arg0, arg1, arg2, arg3, arg5);
    if (0.0f < (sp24 * temp_ret)) {
        *arg6 = *arg5;
        return 0;
    }
    if (arg7 != 0) {
        if (sp24 < 0.0f) {
            if (0.0f < temp_ret) {
                *arg6 = *arg5;
                return 0;
            }
        }
    }
    return func_800CE084(sp24, temp_ret, arg4, arg5, arg6);
}

s32 func_800CE25C(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, Vec3f* arg7, Vec3f *arg8, Vec3f *arg9, s32 argA) {
    
    if (func_800CE15C(arg3, arg4, arg5, arg6, arg7, arg8, arg9, argA) == 0) {
        return 0;
    }
    
    if (((arg3 == 0.0f) || (func_800CD760(arg0, arg1, arg2, arg3, arg9->y, arg9->z) != 0)) &&
        ((arg4 == 0.0f) || (func_800CD0F0(arg0, arg1, arg2, arg4, arg9->z, arg9->x) != 0)) && 
        ((arg5 == 0.0f) || (func_800CDE10(arg0, arg1, arg2, arg5, arg9->x, arg9->y) != 0))) {
        
        return 1;
    }
    *arg9 = *arg8;
    return 0;
}



// some kind of triangle normal ? 
void func_800CE3C0(TriNorm* tri, Vec3f *va, Vec3f *vb, Vec3f *vc) {
    tri->vtx[0] = *va;
    tri->vtx[1] = *vb;
    tri->vtx[2] = *vc;
    func_800CC8B4(va, vb, vc, &tri->unitNormal.x, &tri->unitNormal.y, &tri->unitNormal.z, &tri->normalDist);
}

s32 func_800CE46C(Vec4s *arg0, Vec3f* arg1) {

    if (func_800CB698(arg0, arg1) < arg0->w) {
        return 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/sys_math3d/func_800CE4B8.s")

#ifdef NON_MATCHING
s32 func_800CE600(Vec4s *arg0, TriNorm *arg1) {
    f32 temp_f2;
    f32 temp_f0_2;
    Vec3f v;
    static Vec3f D_8016A6C8;

    if ((func_800CE46C(arg0, &arg1->vtx[0]) != 0) || (func_800CE46C(arg0, &arg1->vtx[1]) != 0)) {
        return 1;
    }

    temp_f2 = SQ((arg1->vtx[1].x - arg1->vtx[0].x)) + SQ((arg1->vtx[1].y - arg1->vtx[0].y)) + SQ((arg1->vtx[1].z - arg1->vtx[0].z));
    if (0.008f < fabsf(temp_f2)) {
        return 0;
    }

    v.x = arg0->x;
    v.y = arg0->y;
    v.z = arg0->z;

    temp_f0_2 = ((((v.x - arg1->vtx[0].x) * (arg1->vtx[1].x - arg1->vtx[0].x)) + ((v.y - arg1->vtx[0].y) * (arg1->vtx[1].y - arg1->vtx[0].y))) + ((v.z - arg1->vtx[0].z) * (arg1->vtx[1].z - arg1->vtx[0].z))) / temp_f2;
    if ((temp_f0_2 < 0.0f) || (1.0f < temp_f0_2)) {
        return 0;
    }

    D_8016A6C8.x = ((arg1->vtx[1].x - arg1->vtx[0].x) * temp_f0_2) + arg1->vtx[0].x;
    D_8016A6C8.y = ((arg1->vtx[1].y - arg1->vtx[0].y) * temp_f0_2) + arg1->vtx[0].y;
    D_8016A6C8.z = ((arg1->vtx[1].z - arg1->vtx[0].z) * temp_f0_2) + arg1->vtx[0].x;

    if ((SQ(D_8016A6C8.x - v.x) + SQ(D_8016A6C8.y - v.y) + SQ(D_8016A6C8.z - v.z)) <= SQ((f32)arg0->w)) {
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/sys_math3d/func_800CE600.s")
#endif

#ifdef NON_MATCHING
void func_800CE800(Vec4s *arg0, TriNorm *arg1, Vec3f *arg2) {
// one regalloc
    static Vec3f D_8016A6D8;
    static Vec3f D_8016A6E8;
    f32 temp_ret;

    D_8016A6D8.x = ((arg1->vtx[0].x + arg1->vtx[1].x) * 0.5f);
    D_8016A6D8.y = ((arg1->vtx[0].y + arg1->vtx[1].y) * 0.5f);
    D_8016A6D8.z = ((arg1->vtx[0].z + arg1->vtx[1].z) * 0.5f);
    D_8016A6E8.x = arg0->x;
    D_8016A6E8.y = arg0->y;
    D_8016A6E8.z = arg0->z;
    temp_ret = Math3D_Vec3f_DistXYZ(&D_8016A6D8, &D_8016A6E8);
    if (fabsf(temp_ret) < 0.008f) {
        arg2->x = D_8016A6E8.x;
        arg2->y = D_8016A6E8.y;
        arg2->z = D_8016A6E8.z;
        return;
    }
    func_800CAFA0(&D_8016A6E8, &D_8016A6D8, arg0->w / temp_ret, arg2);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/sys_math3d/func_800CE800.s")
#endif

#ifdef NON_MATCHING
s32 func_800CE934(Vec4s *arg0, TriNorm *arg1, Vec3f *arg2) {
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f2;
    f32 temp_ret;
    static TriNorm D_8016A6F8;

    D_8016A6F8.vtx[2].x = arg0->x;
    D_8016A6F8.vtx[2].y = arg0->y;
    D_8016A6F8.vtx[2].z = arg0->z;

    if (func_800CB338(&arg1->vtx[0], &arg1->vtx[1], &arg1->vtx[2], &D_8016A6F8.vtx[2], arg0->w) == 0) {
        return 0;
    }
    temp_ret = func_800CCA3C(arg1->unitNormal.x, arg1->unitNormal.y, arg1->unitNormal.z, arg1->normalDist, &D_8016A6F8.vtx[2]);
    
    if (arg0->w < temp_ret) {
        return 0;
    }
    D_8016A6F8.vtx[0] = arg1->vtx[0];
    D_8016A6F8.vtx[1] = arg1->vtx[1];
    if (func_800CE600(arg0, &D_8016A6F8) != 0) {
        func_800CE800(arg0, arg1, arg2);
        return 1;
    }
    D_8016A6F8.vtx[0] = arg1->vtx[1];
    D_8016A6F8.vtx[1] = arg1->vtx[2];
    if (func_800CE600(arg0, &D_8016A6F8) != 0) {
        func_800CE800(arg0, arg1, arg2);
        return 1;
    }
    D_8016A6F8.vtx[0] = arg1->vtx[2];
    D_8016A6F8.vtx[1] = arg1->vtx[0];
    if (func_800CE600(arg0, &D_8016A6F8) != 0) {
        func_800CE800(arg0, arg1, arg2);
        return 1;
    }
    temp_f2 = arg1->unitNormal.x * temp_ret;
    temp_f16 = arg1->unitNormal.y * temp_ret;
    temp_f18 = arg1->unitNormal.z * temp_ret;
    if (0.0f < func_800CC9C8(arg1->unitNormal.x, arg1->unitNormal.y, arg1->unitNormal.z, arg1->normalDist, &D_8016A6F8.vtx[2])) {
        
        D_8016A6F8.unitNormal.x = D_8016A6F8.vtx[2].x - temp_f2;
        D_8016A6F8.unitNormal.y = D_8016A6F8.vtx[2].y - temp_f16;
        D_8016A6F8.unitNormal.z = D_8016A6F8.vtx[2].z - temp_f18;
    } else {

        D_8016A6F8.unitNormal.x = D_8016A6F8.vtx[2].x + temp_f2;
        D_8016A6F8.unitNormal.y = D_8016A6F8.vtx[2].y + temp_f16;
        D_8016A6F8.unitNormal.z = D_8016A6F8.vtx[2].z + temp_f18;
    }
    if (0.5f < fabsf(arg1->unitNormal.y)) {
        if (func_800CCF00(&arg1->vtx[0], &arg1->vtx[1], &arg1->vtx[2],D_8016A6F8.unitNormal.z, D_8016A6F8.unitNormal.x, 0.0f, arg1->unitNormal.y) != 0) {
            func_800CE800(arg0, arg1, arg2);
            return 1;
        }
    } else {
        if (0.5f < fabsf(arg1->unitNormal.x)) {
            if (func_800CD668(&arg1->vtx[0], &arg1->vtx[1], &arg1->vtx[2], D_8016A6F8.unitNormal.y, D_8016A6F8.unitNormal.z, 0.0f, arg1->unitNormal.x) != 0) {
                func_800CE800(arg0, arg1, arg2);
                return 1;
            }
        } else {
            if (func_800CDD18(&arg1->vtx[0], &arg1->vtx[1], &arg1->vtx[2], D_8016A6F8.unitNormal.x, D_8016A6F8.unitNormal.y, 0.0f, arg1->unitNormal.z) != 0) {
                func_800CE800(arg0, arg1, arg2);
                return 1;
            }
        }
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/sys_math3d/func_800CE934.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/code/sys_math3d/func_800CED50.s")

// Big
#pragma GLOBAL_ASM("asm/non_matchings/code/sys_math3d/func_800CEE0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/sys_math3d/func_800CF7D0.s")

s32 func_800CFC4C(Vec3f* arg0, Vec3f* arg1) {
    Vec3s sp1C;

    return func_800CF7D0(arg0, arg1, &sp1C);
}

s32 func_800CFC6C(Vec4s* arg0, Vec4s* arg1) {
    f32 sp1C;

    return func_800CFC8C(arg0, arg1, &sp1C);
}

s32 func_800CFC8C(Vec4s* arg0, Vec4s* arg1, f32* arg2) {
    f32 sp1C;

    return func_800CFCAC(arg0, arg1, arg2, &sp1C);
}

s32 func_800CFCAC(Vec4s *arg0, Vec4s *arg1, f32 *arg2, f32 *arg3) {
    f32 y;
    f32 z;
    f32 temp_f16;
    f32 x;

    x = (f32)arg0->x - (f32)arg1->x;
    y = (f32)arg0->y - (f32)arg1->y;
    z = (f32)arg0->z - (f32)arg1->z;

    temp_f16 = sqrt(SQ(x) + SQ(y) + SQ(z));

    *arg3 = temp_f16;
    *arg2 = (((f32)arg0->w + (f32)arg1->w) - temp_f16);
    if (0.008f < *arg2) {
        return 1;
    }

    *arg2 = 0.0f;
    return 0;
}

s32 func_800CFD84(s16* arg0, s16* arg1, f32* arg2) {
    f32 sp1C;

    return func_800CFDA4(arg0, arg1, arg2, &sp1C);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/sys_math3d/func_800CFDA4.s")

s32 func_800CFF14(Cylinder16* arg0, Cylinder16* arg1, f32* arg2) {
    f32 sp1C;

    func_800CFF34(arg0, arg1, arg2, &sp1C);
}

s32 func_800CFF34(Cylinder16 *ca, Cylinder16 *cb, f32 *arg2, f32 *arg3) {
    static Cylinderf caf;
    static Cylinderf cbf;

    Math_Vec3s_ToVec3f(&caf.pos, &ca->pos);
    caf.radius = ca->radius;
    caf.yShift = ca->yShift;
    caf.height = ca->height;
    Math_Vec3s_ToVec3f(&cbf.pos, &cb->pos);
    cbf.radius = cb->radius;
    cbf.yShift = cb->yShift;
    cbf.height = cb->height;
    *arg3 = sqrtf(SQ(caf.pos.x - cbf.pos.x) + SQ(caf.pos.z - cbf.pos.z));
    if ((caf.radius + cbf.radius) < *arg3) {
        return 0;
    }
    if (((caf.pos.y + caf.yShift) + caf.height) < (cbf.pos.y + cbf.yShift) || 
        (((cbf.pos.y + cbf.yShift) + cbf.height) < (caf.pos.y + caf.yShift))) {
        return 0;
    }

    *arg2 = caf.radius + cbf.radius - *arg3;
    return 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/sys_math3d/func_800D0104.s")

s32 func_800D0480(Vec4s *arg0, f32 arg1, f32 arg2) {
    f32 temp_f0;
    f32 temp_f2;

    temp_f0 = arg0->x - arg1;
    temp_f2 = arg0->z - arg2;
    if ((SQ(temp_f0) + SQ(temp_f2)) <= SQ(arg0->w) ) {
        return 1;
    }
    return 0;
}

s32 func_800D04F0(Vec4s *arg0, f32 arg1, f32 arg2) {
    f32 temp_f0;
    f32 temp_f2;

    temp_f0 = arg0->x - arg1;
    temp_f2 = arg0->y - arg2;
    if ((SQ(temp_f0) + SQ(temp_f2)) <= SQ(arg0->w)) {
        return 1;
    }
    return 0;
}

s32 func_800D0560(Vec4s *arg0, f32 arg1, f32 arg2) {
    f32 temp_f0;
    f32 temp_f2;

    temp_f0 = arg0->y - arg1;
    temp_f2 = arg0->z - arg2;
    if ((SQ(temp_f0) + SQ(temp_f2)) <= SQ(arg0->w)) {
        return 1;
    }
    return 0;
}

void func_800D05D0(s32 arg0, s32 arg1) {

}

void func_800D05DC(s32 arg0, s32 arg1) {

}

