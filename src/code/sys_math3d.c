#include <ultra64.h>
#include <global.h>
#include <vt.h>
#include <sys_math3d.h>
#define NON_MATCHING

s32 func_800CA7D0(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, /* 10 */f32 arg6, f32 arg7, Vec3f* arg8, Vec3f* arg9, Vec3f* argA) {
    Vec3f sp34;
    static unk_800CAB94 D_8016A5A0;
    static unk_800CAB94 D_8016A5B8;

    if (func_800CAD08(arg0, arg1, arg2, arg3, arg4, arg5, /* 10 */arg6, arg7, &D_8016A5A0) == 0) {
        return 0;
    }
    Math_Vec3f_Copy(&D_8016A5B8.a, &D_8016A5A0.a);

    VEC3F(D_8016A5B8.b,
         ((D_8016A5A0.b.x * 100.0f) + D_8016A5A0.a.x),
         ((D_8016A5A0.b.y * 100.0f) + D_8016A5A0.a.y),
         ((D_8016A5A0.b.z * 100.0f) + D_8016A5A0.a.z));

    if (func_800CA8E8(&D_8016A5B8.a, &D_8016A5B8.b, arg8, arg9, argA, &sp34) == 0) {
        return 0;
    }
    return 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/sys_math3d/func_800CA8E8.s")

void func_800CAB94(unk_800CAB94 *arg0, Vec3f *arg1, Vec3f *arg2) {
    f32 temp_ret;
    f32 temp_f0;

    temp_ret = Math3D_Vec3f_HadamardProduct(&arg0->b);
    if (fabsf(temp_ret) < 0.008f) {
        osSyncPrintf(VT_COL(YELLOW, BLACK));
        osSyncPrintf("Math3D_lineVsPosSuisenCross():直線の長さがありません\n"); // Math3D_lineVsPosSuisenCross(): No straight line length
        osSyncPrintf("cross = pos を返します。\n"); // "Returns cross = pos.
        osSyncPrintf(VT_RST);
        Math_Vec3f_Copy(arg2, arg1);
    }
    temp_f0 = (((arg1->x - arg0->a.x) * arg0->b.x) + ((arg1->y - arg0->a.y) * arg0->b.y) + ((arg1->z - arg0->a.z) * arg0->b.z)) / temp_ret;
    arg2->x = (arg0->b.x * temp_f0) + arg0->a.x;
    arg2->y = (arg0->b.y * temp_f0) + arg0->a.y;
    arg2->z = (arg0->b.z * temp_f0) + arg0->a.z;
}

void func_800CACAC(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 *arg7, f32 *arg8) {
    *arg7 = ((arg1 * arg6) - (arg3 * arg5)) / arg4;
    *arg8 = ((arg2 * arg5) - (arg0 * arg6)) / arg4;
}

s32 func_800CAD08(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, unk_800CAB94* arg8) {
    char pad[4];
    Vec3f sp60;
    Vec3f sp54;
    f32 ax;
    f32 ay;
    f32 az;

    VEC3F(sp60,arg0,arg1,arg2);
    VEC3F(sp54,arg4,arg5,arg6);

    Math3D_Vec3f_Cross(&sp60, &sp54, &arg8->b);

    if (fabsf(arg8->b.x) < 0.008f && fabsf(arg8->b.y) < 0.008f && fabsf(arg8->b.z) < 0.008f) {
        return 0;
    }

    ax = fabsf(arg8->b.x);
    ay = fabsf(arg8->b.y);
    az = fabsf(arg8->b.z);

    if ((ay <= ax) && (az <= ax)) {
        func_800CACAC(arg1, arg2, arg5, arg6, arg8->b.x, arg3, arg7, &arg8->a.y, &arg8->a.z);
        arg8->a.x = 0.0f;
    } else if ((ax <= ay) && (az <= ay)) {
        func_800CACAC(arg2, arg0, arg6, arg4, arg8->b.y, arg3, arg7, &arg8->a.z, &arg8->a.x);
        arg8->a.y = 0.0f;
    } else {
        func_800CACAC(arg0, arg1, arg4, arg5, arg8->b.z, arg3, arg7, &arg8->a.x, &arg8->a.y);
        arg8->a.z = 0.0f;
    }
    return 1;
}

s32 func_800CAEE8(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, Vec3f* arg8, Vec3f* arg9) {
    static unk_800CAB94 D_8016A5D0;
    if (func_800CAD08(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, &D_8016A5D0) == 0) {
        return 0;
    }
    func_800CAB94(&D_8016A5D0, arg8, arg9);
    return 1;
}

void func_800CAF5C(Vec3f *arg0, Vec3f *arg1, f32 arg2, Vec3f *arg3) {
    arg3->x = (arg1->x * arg2) + arg0->x;
    arg3->y = (arg1->y * arg2) + arg0->y;
    arg3->z = (arg1->z * arg2) + arg0->z;
}

//func_800CAFA0(&sphereCenter, &centroid, fw, ret);
// centroid - scenter
void func_800CAFA0(Vec3f* v0, Vec3f* v1, f32 arg2, Vec3f* ret) {
    Vec3f diff;

    Math_Vec3f_Diff(v1, v0, &diff);
    func_800CAF5C(v0, &diff, arg2, ret);
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
    f32 dotProduct;

    negVec1.x = vec1->x * -1.0f;
    negVec1.y = vec1->y * -1.0f;
    negVec1.z = vec1->z * -1.0f;

    dotProduct = Math3D_DotProduct(&negVec1, vec2);

    temp_f2 =  vec2->x * dotProduct;
    temp_f12 = vec2->y * dotProduct;
    temp_f14 = vec2->z * dotProduct;

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

#ifdef NON_MATCHING
/*
 * Math3D_TriInSphere
 * Checks if a tringle defined by `v0`, `v1`, and `v2` lies within a spehere
 * centered at `center` and has radius `radius`.  Returns 1 if any vertex of the
 * triangle lies within the sphere, or 0 otherwise.
*/
s32 func_800CB338(Vec3f *v0, Vec3f *v1, Vec3f *v2, Vec3f *center, f32 radius) {
    f32 minX;
    f32 maxX;
    f32 minY;
    f32 maxY;
    f32 minZ;
    f32 maxZ;

    if(v1->x < v0->x){
        minX = v1->x;
        maxX = v0->x;
    } else if (v0->x < v1->x){
        minX = v0->x;
        maxX = v1->x;
    }

    if(v1->y < v0->y){
        minY = v1->y;
        maxY = v0->y;
    } else if (v0->y < v1->y){
        minY = v0->y;
        maxY = v1->y;
    }

    if(v1->z < v0->z){
        minZ = v1->z;
        maxZ = v0->z;
    } else if (v0->z < v1->z){
        minZ = v0->z;
        maxZ = v1->z;
    }

    if(v2->x < minX){
        minX = v2->x;
    } else if(maxX < v2->x){
        maxX = v2->x;
    }

    if(v2->y < minY){
        minY = v2->y;
    } else if(maxY < v2->y){
        maxY = v2->y;
    }

    if(v2->z < minZ){
        minZ = v2->z;
    } else if(maxZ < v2->z){
        maxZ = v2->z;
    }

    if(((minX - radius) <= center->x) && (center->x <= (maxX + radius)) &&
       ((minY - radius) <= center->y) && (center->y <= (maxY + radius)) &&
       ((minZ - radius) <= center->z) && (center->z <= (maxZ + radius))){
        return 1;
    }

    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/sys_math3d/func_800CB338.s")
#endif
/**********************************************************************/

f32 func_800CB55C(f32 arg0, f32 arg1) {
    return SQ(arg0) + SQ(arg1);
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

/*
 *
f32 func_800CB650(Vec3f* a, Vec3f* b) {
    Vec3f diff;

    Math_Vec3f_Diff(a, b, &diff);
    return Math3D_Vec3f_HadamardProduct(&diff);
}

/*
 * Math3D_Vec3f_DistXYZ
 * Calculates the distance between points `a` and `b`
*/
f32 Math3D_Vec3f_DistXYZ(Vec3f* a, Vec3f* b) {
    return Math_Vec3f_DistXYZ(a, b);
}

/*
 * Math3D_DistXYZ16toF
 * Calculates the distance between `a` and `b`.
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

void Math3D_Vec3f_Cross(Vec3f *a, Vec3f *b, Vec3f *ret) {
    ret->x = (a->y * b->z) - (a->z * b->y);
    ret->y = (a->z * b->x) - (a->x * b->z);
    ret->z = (a->x * b->y) - (a->y * b->x);
}

/*
 * Math3D_SurfaceNorm
 * Calculates the normal vector to a surface with sides `vb` - `va` and `vc` - `va`
 * outputs the normal to `normal`
*/
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

s32 func_800CBAE4(Vec3f *v0, Vec3f *v1, Vec3f *v2) {
    s32 ret = 0;

    if ((v2->x + v2->y + v2->z) < (v0->x + v0->y + v0->z)) {
        ret = 0x01;
    }

    if ((-v1->x + v2->y + v2->z) < (-v0->x + v0->y + v0->z)) {
        ret |= 0x02;
    }

    if ((-v1->x + v2->y - v1->z) < (-v0->x + v0->y - v0->z)) {
        ret |= 0x04;
    }

    if ((v2->x + v2->y - v1->z) < (v0->x + v0->y - v0->z)) {
        ret |= 0x08;
    }

    if ((v2->x - v1->y + v2->z) < (v0->x - v0->y + v0->z)) {
        ret |= 0x10;
    }

    if ((-v1->x - v1->y + v2->z) < (-v0->x - v0->y + v0->z)) {
        ret |= 0x20;
    }

    if ((-v1->x - v1->y + v2->z) < (-v0->x - v0->y + v0->z)) {
        ret |= 0x40;
    }

    if ((-v1->x - v1->y - v1->z) < (-v0->x - v0->y - v0->z)) {
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

void func_800CC824(Vec3f *arg0, s16 angle, f32 *arg2, f32 *arg3, f32 *arg4) {
    *arg2 = Math_Sins(angle) * 32767.0f;
    *arg3 = Math_Coss(angle) * 32767.0f;
    *arg4 = -((*arg2 * arg0->x) + (*arg3 * arg0->z));
}

/*
 * Math3D_DefinePlane
 * Defines a plane from verticies `va`, `vb`, and `vc`.  Normal components are output to
 * `nx`, `ny`, and `nz`.  Distance from the origin is output to `originDist`
 * Satisifes the plane equation NxVx + NyVy + NzVz + D = 0
*/
void func_800CC8B4(Vec3f *va, Vec3f* vb, Vec3f* vc, f32 *nx, f32 *ny, f32 *nz, f32 *originDist) {
    f32 normMagnitude;
    f32 t;
    static Vec3f normal;

    Math3D_SurfaceNorm(va, vb, vc, &normal);
    normMagnitude = sqrtf(SQ(normal.x) + SQ(normal.y) + SQ(normal.z));
    if (!(fabsf(normMagnitude) < 0.008f)) {
        t = 1.0f / normMagnitude;
        *nx = normal.x * t;
        *ny = normal.y * t;
        *nz = normal.z * t;
        *originDist = -((*nx * va->x) + (*ny * va->y) + (*nz * va->z));
    } else {
        *originDist = 0.0f;
        *nz = 0.0f;
        *ny = 0.0f;
        *nx = 0.0f;
    }
}

/*
 * Math3D_PointDistToPlaneNumer
 * Probably can get a better name.
 * Returns the numerator of the point distance to a plane equation
*/
f32 func_800CC9C8(f32 nx, f32 ny, f32 nz, f32 originDist, Vec3f *v) {
    return (v->x * nx) + (ny * v->y) + (nz * v->z) + originDist;
}

/*
 * Math3D_PointDistToPlanePlaneNumer
 * Same as above, uses the Plane struct to define nx, ny, nz, and originDist
*/
f32 func_800CCA04(Plane *plane, Vec3f *v) {
    return ((plane->normal.x * v->x) + (plane->normal.y * v->y) + (plane->normal.z * v->z)) + plane->originDist;
}

/*
 * Math3D_UDistPlaneToPos
 * Calculates the absolute distance from a point `p` to the plane defined as
 * `nx`, `ny`, `nz`, and `originDist`
*/
f32 func_800CCA3C(f32 nx, f32 ny, f32 nz, f32 originDist, Vec3f* p) {

    if (fabsf(sqrtf(SQ(nx) + SQ(ny) + SQ(nz))) < 0.008f) {
        osSyncPrintf(VT_COL(YELLOW, BLACK));
        osSyncPrintf("Math3DLengthPlaneAndPos():法線size がゼロ近いです%f %f %f\n", nx, ny, nz); //Math3DLengthPlaneAndPos(): Normal size is near zero %f %f %f
        osSyncPrintf(VT_RST);
        return 0.0f;
    }
    return fabsf(func_800CCB0C(nx, ny, nz, originDist, p));
}

/*
 * Math3D_DistPlaneToPos
 * Calculates the signed distance from a point `p` to a plane defined as
 * `nx`, `ny`, `nz`, and `originDist`
*/
f32 func_800CCB0C(f32 nx, f32 ny, f32 nz, f32 originDist, Vec3f* p) {
    f32 normMagnitude;

    normMagnitude = sqrtf(SQ(nx) + SQ(ny) + SQ(nz));
    if (fabsf(normMagnitude) < 0.008f) {
        osSyncPrintf(VT_COL(YELLOW, BLACK));
        osSyncPrintf("Math3DSignedLengthPlaneAndPos():法線size がゼロ近いです%f %f %f\n", nx, ny, nz); //Math3DSignedLengthPlaneAndPos(): Normal size is close to zero %f %f %f
        osSyncPrintf(VT_RST);
        return 0.0f;
    }
    return func_800CC9C8(nx, ny, nz, originDist, p) / normMagnitude;
}

s32 func_800CCBE4(Vec3f *v0, Vec3f *v1, Vec3f *v2, f32 z, f32 x, f32 arg5, f32 arg6, f32 ny) {
    f32 temp_f6;
    f32 temp_f10;
    f32 temp_f8;
    f32 sp60;
    f32 sq6;

    if (func_800CB1F8(v0->z, v0->x, v1->z, v1->x, v2->z, v2->x, z, x, arg6) == 0) {
        return 0;
    }

    sq6 = SQ(arg6);
    if (((SQ(v0->z - z) + SQ(v0->x - x)) < sq6) ||
        ((SQ(v1->z - z) + SQ(v1->x - x)) < sq6) ||
        ((SQ(v2->z - z) + SQ(v2->x - x)) < sq6)) {

        return 1;
    }


    temp_f6 = ((v0->z - z) * (v1->x - x)) - ((v0->x - x) * (v1->z - z));
    temp_f10 = ((v1->z - z) * (v2->x - x)) - ((v1->x - x) * (v2->z - z));
    temp_f8 = ((v2->z - z) * (v0->x - x)) - ((v2->x - x) * (v0->z - z));

    if(((temp_f6 <= arg5) && (temp_f10 <= arg5) && (temp_f8 <= arg5)) ||
        ((-arg5 <= temp_f6) && (-arg5 <= temp_f10) && (-arg5 <= temp_f8))){
        return 1;
    }
    if (0.5f < fabsf(ny)) {
        if (func_800CE4B8(z, x, v0->z, v0->x, v1->z, v1->x, &sp60) != 0) {
            if (sp60 < sq6) {
                return 1;
            }
        }

        if (func_800CE4B8(z, x, v1->z, v1->x, v2->z, v2->x, &sp60) != 0) {
            if (sp60 < sq6) {
                return 1;
            }
        }
        if (func_800CE4B8(z, x, v2->z, v2->x, v0->z, v0->x, &sp60) != 0) {
            if (sp60 < sq6) {
                return 1;
            }
        }
    }
    return 0;
}

s32 func_800CCF00(Vec3f* v0, Vec3f* v1, Vec3f* v2, f32 z, f32 x, f32 arg5, f32 ny) {
    return func_800CCBE4(v0, v1, v2, z, x, arg5, 1.0f, ny);
}

s32 func_800CCF48(Vec3f* v0, Vec3f* v1, Vec3f* v2, f32 z, f32 x) {
    return func_800CCBE4(v0, v1, v2, z, x, 300.0f, 1.0f, 0.6f);
}

s32 func_800CCF98(Vec3f* v0, Vec3f* v1, Vec3f* v2, f32 arg3, f32 normMagnitude, f32 arg5, f32 arg6, f32 z, f32 x, f32 *pointDist, f32 argA) {
    if (fabsf(normMagnitude) < 0.008f) {
        return 0;
    }
    if (func_800CCBE4(v0, v1, v2, z, x, 300.0f, argA, normMagnitude) != 0) {
        *pointDist = (f32) ((((-arg3 * x) - (arg5 * z)) - arg6) / normMagnitude);
        return 1;
    }
    return 0;
}

s32 func_800CD044(Vec3f* v0, Vec3f* v1, Vec3f* v2, f32 arg3, f32 ny, f32 arg5, f32 arg6, f32 z, f32 x, f32 *arg9, f32 argA) {
    if (fabsf(ny) < 0.008f) {
        return 0;
    }
    if (func_800CCBE4(v0, v1, v2, z, x, 0.0f, argA, ny) != 0) {
        *arg9 = (f32) ((((-arg3 * x) - (arg5 * z)) - arg6) / ny);
        return 1;
    }
    return 0;
}

s32 func_800CD0F0(Vec3f* v0, Vec3f* v1, Vec3f* v2, f32 ny, f32 z, f32 x) {
    if (fabsf(ny) < 0.008f) {
        return 0;
    }
    if (func_800CCBE4(v0, v1, v2, z, x, 300.0f, 1.0f, ny) != 0) {
        return 1;
    }
    return 0;
}

/*
 * Math3D_TriVtxCylTouching
 * Determines if the Triangle defined by verticies `v0`, `v1`, and `v2` with normal vector
 * `nx`, `ny`, and `nz` is touching the cylinder defined by the center `cylZ`, `cylX` and top
 * y componets `cylBottom` and `cylTop` are touching. The y component which they are touching is 
 * output to `yIntercept`, returns 1 if any part of the triangle is touching the cylinder.
*/
s32 func_800CD168(Vec3f* v0, Vec3f* v1, Vec3f* v2, f32 nx, f32 ny, f32 nz, f32 originDist, f32 cylZ, f32 cylX, f32 *yIntercept, f32 cylBottom, f32 cylTop) {
    f32 bottomDist;
    f32 topDist;
    Vec3f cylPos;

    if (fabsf(ny) < 0.008f) {
        return 0;
    }

    VEC3F(cylPos, cylX, cylBottom, cylZ);

    bottomDist = func_800CC9C8(nx, ny, nz, originDist, &cylPos);
    cylPos.y = cylTop;
    topDist = func_800CC9C8(nx, ny, nz, originDist, &cylPos);
    if (((bottomDist > 0.0f) && (topDist > 0.0f)) || ((bottomDist < 0.0f) && (topDist < 0.0f))) {
        return 0;
    }

    if (func_800CCBE4(v0, v1, v2, cylZ, cylX, 300.0f, 1.0f, ny) != 0) {
        *yIntercept = (((-nx * cylX) - (nz * cylZ)) - originDist) / ny;
        return 1;
    }
    return 0;
}

s32 func_800CD2D8(Vec3f* v0, Vec3f* v1, Vec3f* v2, Plane *plane, f32 z, f32 x, f32 arg6) {
    if (fabsf(plane->normal.y) < 0.008f) {
        return 0;
    }
    if (func_800CCBE4(v0, v1, v2, z, x, 0.0f, arg6, plane->normal.y) != 0) {
        return 1;
    }
    return 0;
}

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

s32 func_800CD7D8(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 *arg9, f32 argA, f32 argB) {
    f32 sp34;
    f32 temp_ret;
    Vec3f* vec;
    static Vec3f D_8016A698;

    if (fabsf(arg3) < 0.008f) {
        return 0;
    }

    D_8016A698.x = argA;
    D_8016A698.y = arg7;
    D_8016A698.z = arg8;
    sp34 = func_800CC9C8(arg3, arg4, arg5, arg6, &D_8016A698);
    D_8016A698.x = argB;
    temp_ret = func_800CC9C8(arg3, arg4, arg5, arg6, &D_8016A698);
    if (((0.0f < sp34) && (0.0f < temp_ret)) || ((sp34 < 0.0f) && (temp_ret < 0.0f))) {
        return 0;
    }
    if (func_800CD34C(arg0, arg1, arg2, arg7, arg8, 300.0f, 1.0f, arg3) != 0) {
        *arg9 = (((-arg4 * arg7) - (arg5 * arg8)) - arg6) / arg3;
        return 1;
    }
    return 0;
}

s32 func_800CD95C(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 *arg3, f32 arg4, f32 arg5, f32 arg6) {
    if (fabsf(*arg3) < 0.008f) {
        return 0;
    }
    if (func_800CD34C(arg0, arg1, arg2, arg4, arg5, 0.0f, arg6, *arg3) != 0) {
        return 1;
    }
    return 0;
}

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

s32 func_800CDE88(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 *arg9, f32 argA, f32 argB) {
    f32 sp2C;
    f32 temp_ret;
    static Vec3f D_8016A6A8;

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
        *arg9 = (((-arg3 * arg7) - (arg4 * arg8)) - arg6) / arg5;
        return 1;
    }
    return 0;
}

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

/*
 * Math3D_TriNorm
 * Creates a TriNorm output to `tri`, and calculates the normal vector and plane from vertices
 * `va`, `vb`, and `vc`
*/
void func_800CE3C0(TriNorm* tri, Vec3f *va, Vec3f *vb, Vec3f *vc) {
    tri->vtx[0] = *va;
    tri->vtx[1] = *vb;
    tri->vtx[2] = *vc;
    func_800CC8B4(va, vb, vc, &tri->normal.x, &tri->normal.y, &tri->normal.z, &tri->originDist);
}

/*
 * Math3D_PointInSphere
 * Determines if point `point` lies within `sphere`
*/
s32 func_800CE46C(Sphere16 *sphere, Vec3f* point) {

    if (func_800CB698(&sphere->center, point) < sphere->radius) {
        return 1;
    }
    return 0;
}

#ifdef NON_MATCHING
s32 func_800CE4B8(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 *arg6) {
    f32 sp20;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f10_2;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f2;
    f32 temp_f8;
    s32 ret = 0;
    static Vec3f D_8016A6B8;


    temp_f16 = SQ(arg4 - arg2) + SQ(arg5 - arg3);
    if (fabsf(temp_f16) < 0.008f) {
        *arg6 = 0.0f;
        return 0;
    }
    temp_f0 = (((arg0 - arg2) * (arg4 - arg2)) + ((arg1 - arg3) * (arg5 - arg3))) / temp_f16;
    if (0.0f <= temp_f0) {
        if (temp_f0 <= 1.0f) {
            ret = 1;
        }
    }
    temp_f14 = (((arg0 - arg2) * (arg4 - arg2)) + ((arg1 - arg3) * (arg5 - arg3))) / temp_f16;
    temp_f8 = ((arg4 - arg2) * temp_f14) + arg2;
    D_8016A6B8.x = temp_f8;
    temp_f10_2 = ((arg5 - arg3) * temp_f14) + arg3;
    temp_f0_2 = temp_f8 - arg0;
    D_8016A6B8.z = temp_f10_2;
    temp_f12 = temp_f10_2 - arg1;
    *arg6 = (f32) ((temp_f0_2 * temp_f0_2) + (temp_f12 * temp_f12));
    return ret;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/sys_math3d/func_800CE4B8.s")
#endif

#ifdef NON_MATCHING
s32 func_800CE600(Sphere16 *arg0, TriNorm *arg1) {
//reg/stack alloc
    f32 temp_f0_2;
    f32 temp_f2;
    Vec3f t;
    Vec3f t2;
    static Vec3f D_8016A6C8;

    if ((func_800CE46C(arg0, &arg1->vtx[0]) != 0) || (func_800CE46C(arg0, &arg1->vtx[1]) != 0)) {
        return 1;
    } else {
        t2.x = arg1->vtx[1].x - arg1->vtx[0].x;
        t2.y = arg1->vtx[1].y - arg1->vtx[0].y;
        t2.z = arg1->vtx[1].z - arg1->vtx[0].z;

        temp_f2 = SQ(t2.x) + SQ(t2.y) + SQ(t2.z);
        if (fabsf(temp_f2) < 0.008f) {
            return 0;
        }
        t.x = arg0->center.x;
        t.y = arg0->center.y;
        t.z = arg0->center.z;
        temp_f0_2 = ((((t.x - arg1->vtx[0].x) * t2.x) + ((t.y - arg1->vtx[0].y) * t2.y)) + ((t.z - arg1->vtx[0].z) * t2.z)) / temp_f2;
        if ((temp_f0_2 < 0.0f) || (1.0f < temp_f0_2)) {
            return 0;
        }

        D_8016A6C8.x = (t2.x * temp_f0_2) + arg1->vtx[0].x;
        D_8016A6C8.y = (t2.y * temp_f0_2) + arg1->vtx[0].y;
        D_8016A6C8.z = (t2.z * temp_f0_2) + arg1->vtx[0].z;

        if (SQ(D_8016A6C8.x - t.x) + SQ(D_8016A6C8.y - t.y) + SQ(D_8016A6C8.z - t.z) <= SQ((f32)arg0->radius)) {
            return 1;
        }

    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/sys_math3d/func_800CE600.s")
#endif

void func_800CE800(Sphere16 *sphere, TriNorm *tri, Vec3f *ret) {
    static Vec3f centroid;
    static Vec3f sphereCenter;
    f32 dist;
    f32 fw;

    centroid.x = ((tri->vtx[0].x + tri->vtx[1].x) * 0.5f);
    centroid.y = ((tri->vtx[0].y + tri->vtx[1].y) * 0.5f);
    centroid.z = ((tri->vtx[0].z + tri->vtx[1].z) * 0.5f);
    sphereCenter.x = sphere->center.x;
    sphereCenter.y = sphere->center.y;
    sphereCenter.z = sphere->center.z;
    dist = Math3D_Vec3f_DistXYZ(&centroid, &sphereCenter);
    if (fabsf(dist) < 0.008f) {
        ret->x = sphereCenter.x;
        ret->y = sphereCenter.y;
        ret->z = sphereCenter.z;
        return;
    }
    fw = sphere->radius / dist;
    func_800CAFA0(&sphereCenter, &centroid, fw, ret);
}

s32 func_800CE934(Sphere16 *arg0, TriNorm *arg1, Vec3f *arg2) {
    f32 radius;
    f32 nx;
    f32 ny;
    f32 nz;
    f32 planeDist;

    static Vec3f D_8016A6F8;
    static Vec3f D_8016A704;
    static Vec3f D_8016A710;
    static Vec3f D_8016A720;

    D_8016A710.x = arg0->center.x;
    D_8016A710.y = arg0->center.y;
    D_8016A710.z = arg0->center.z;
    radius = arg0->radius;

    if (func_800CB338(&arg1->vtx[0], &arg1->vtx[1], &arg1->vtx[2], &D_8016A710, radius) == 0) {
        return 0;
    }

    planeDist = func_800CCA3C(arg1->normal.x, arg1->normal.y, arg1->normal.z, arg1->originDist, &D_8016A710);
    if (radius < planeDist) {
        return 0;
    }

    D_8016A6F8 = arg1->vtx[0];
    D_8016A704 = arg1->vtx[1];

    if (func_800CE600(arg0, &D_8016A6F8) != 0) {
        func_800CE800(arg0, arg1, arg2);
        return 1;
    }
    D_8016A6F8 = arg1->vtx[1];
    D_8016A704 = arg1->vtx[2];
    if (func_800CE600(arg0, &D_8016A6F8) != 0) {
        func_800CE800(arg0, arg1, arg2);
        return 1;
    }
    D_8016A6F8 = arg1->vtx[2];
    D_8016A704 = arg1->vtx[0];
    if (func_800CE600(arg0, &D_8016A6F8) != 0) {
        func_800CE800(arg0, arg1, arg2);
        return 1;
    }

    nx = arg1->normal.x * planeDist;
    ny = arg1->normal.y * planeDist;
    nz = arg1->normal.z * planeDist;

    if (0.0f < func_800CC9C8(arg1->normal.x, arg1->normal.y, arg1->normal.z, arg1->originDist, &D_8016A710)) {
        D_8016A720.x = D_8016A710.x - nx;
        D_8016A720.y = D_8016A710.y - ny;
        D_8016A720.z = D_8016A710.z - nz;
    } else {
        D_8016A720.x = D_8016A710.x + nx;
        D_8016A720.y = D_8016A710.y + ny;
        D_8016A720.z = D_8016A710.z + nz;
    }

    if (0.5f < fabsf(arg1->normal.y)){
        if(func_800CCF00(&arg1->vtx[0], &arg1->vtx[1], &arg1->vtx[2], D_8016A720.z, (f32) D_8016A720.x, 0.0f, (f32) arg1->normal.y) != 0) {
            func_800CE800(arg0, arg1, arg2);
            return 1;
        }
    } else if(0.5f < fabsf(arg1->normal.x)) {
        if(func_800CD668(&arg1->vtx[0], &arg1->vtx[1], &arg1->vtx[2], D_8016A720.y, (f32) D_8016A720.z, 0.0f, (f32) arg1->normal.x) != 0) {
            func_800CE800(arg0, arg1, arg2);
            return 1;
        }
    } else if(func_800CDD18(&arg1->vtx[0], &arg1->vtx[1], &arg1->vtx[2], D_8016A720.x, (f32) D_8016A720.y, 0.0f, arg1->normal.z) != 0) {
        func_800CE800(arg0, arg1, arg2);
        return 1;
    }
    return 0;
}

/*
 * Math3D_PointInCyl
 * Checks if point `point` is within cylinder `cyl`
 * Returns 1 if the point is inside the cylinder, 0 otherwise.
*/
s32 func_800CED50(Cylinder16 *cyl, Vec3f *point) {
    f32 bottom;
    f32 top;
    f32 x;
    f32 z;

    x = cyl->pos.x - point->x;
    z = cyl->pos.z - point->z;
    bottom = (f32)cyl->pos.y + cyl->yShift;
    top = cyl->height + bottom;

    if ((SQ(x) + SQ(z)) < SQ(cyl->radius) && (bottom < point->y) && (point->y < top)) {
        return 1;
    } else {
        return 0;
    }
}

#ifdef NON_MATCHING
/*
 * arg0 cylinder
 * arg1 vtx
 * arg2 vtx arg1/arg2 line?
 * arg3 ???
 * arg4 ???
*/
s32 func_800CEE0C(Cylinder16 *arg0, Vec3f *arg1, Vec3f *arg2, Vec3f *arg3, Vec3f *arg4) {
    Vec3f spEC;
    Vec3f spE0;
    Vec3f spD4;
    f32 spD0;
    f32 spCC;
    f32 spB8;
    s32 sp9C;
    f32 sp98;
    f32 sp94;
    f32 sp90;
    f32 sp8C;
    f32 sp88;
    f32 sp84;
    f32 sp80;
    f32 sp7C;
    f32 sp78;
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    s32 sp68;
    f32 sp4C;
    f32 sp2C;
    f32 sp28;
    f32 sp24;
    f32 sp20;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f0_6;
    f32 temp_f10;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f14_3;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f18;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f2_4;
    f32 temp_f2_5;
    f32 temp_f2_6;
    f32 temp_f2_7;
    s32 temp_a0_2;
    s32 temp_t0;
    s32 temp_v0;
    s32 temp_v1;
    Vec3f *temp_a0;
    Vec3f *temp_a1;
    Vec3f *temp_s0;
    Vec3f *temp_t2;
    s32 phi_a1;
    s32 phi_a1_2;
    f32 phi_f2;
    s32 phi_v0;
    s32 phi_v0_2;
    s32 phi_v1;
    s32 phi_v1_2;
    s32 phi_a2;
    s32 phi_a1_3;
    s32 phi_a2_2;
    s32 phi_a1_4;
    s32 phi_v0_3;
    s32 phi_t0;
    s32 phi_v1_3;
    s32 phi_v1_4;
    s32 phi_a2_3;
    s32 phi_a2_4;
    s32 phi_t0_2;
    s32 phi_v1_5;
    s32 phi_t0_3;
    Vec3f sp6C2[4];
/*
 * arg0 cylinder
 * arg1 vtx
 * arg2 vtx arg1/arg2 line?
 * arg3 ???
 * arg4 ???
*/
    sp9C = 0;
    // if vtx1 and v12 are inside the cylinder return 2;
    if (func_800CED50(arg0, arg1) != 0 && func_800CED50(arg0, arg2) != 0) {
        *arg3 = *arg1;
        *arg4 = *arg2;
        return 2;
    }

    temp_a0 = &spE0;
    temp_a1 = &spEC;
    spEC.x = (f32) (arg1->x - (f32) arg0->pos.x);
    spEC.y = (f32) ((arg1->y - (f32) arg0->pos.y) - (f32) arg0->yShift);
    spEC.z = (f32) (arg1->z - (f32) arg0->pos.z);
    spE0.x = (f32) (arg2->x - (f32) arg0->pos.x);
    spE0.y = (f32) ((arg2->y - (f32) arg0->pos.y) - (f32) arg0->yShift);
    sp9C = (s32) sp9C;
    spE0.z = (f32) (arg2->z - (f32) arg0->pos.z);
    Math_Vec3f_Diff(temp_a0, temp_a1, &spD4);
    temp_t0 = sp9C;
    temp_f14 = (f32) (arg0->radius * arg0->radius);
    phi_t0_2 = temp_t0;
    if (!(fabsf(spD4.y) < 0.008f)) {
        temp_f0 = -spEC.y / spD4.y;
        phi_t0_3 = temp_t0;
        if (0.0f <= temp_f0) {
            phi_t0_3 = temp_t0;
            if (temp_f0 <= 1.0f) {
                temp_f2 = (spD4.x * temp_f0) + spEC.x;
                temp_f12 = (spD4.z * temp_f0) + spEC.z;
                phi_t0_3 = temp_t0;
                if (((temp_f2 * temp_f2) + (temp_f12 * temp_f12)) < temp_f14) {
                    sp6C = (f32) ((f32) arg0->pos.x + temp_f2);
                    sp70 = (f32) ((f32) arg0->pos.y + (f32) arg0->yShift);
                    sp74 = (f32) ((f32) arg0->pos.z + temp_f12);
                    phi_t0_3 = 1;
                }
            }
        }
        temp_f10 = ((f32) arg0->height - spEC.y) / spD4.y;
        spD0 = temp_f10;
        phi_t0_2 = phi_t0_3;
        if (0.0f <= temp_f10) {
            phi_t0_2 = phi_t0_3;
            if (temp_f10 <= 1.0f) {
                temp_f0_2 = (spD4.x * temp_f10) + spEC.x;
                temp_f2_2 = (spD4.z * temp_f10) + spEC.z;
                phi_t0_2 = phi_t0_3;
                if (((temp_f0_2 * temp_f0_2) + (temp_f2_2 * temp_f2_2)) < temp_f14) {
                    sp78 = (f32) ((f32) arg0->pos.x + temp_f0_2);
                    sp7C = (f32) (((f32) arg0->pos.y + (f32) arg0->yShift) + (f32) arg0->height);
                    sp80 = (f32) ((f32) arg0->pos.z + temp_f2_2);
                    phi_t0_2 = phi_t0_3 | 2;
                }
            }
        }
    }
    sp20 = spEC.x;
    sp24 = spEC.z;
    temp_f16 = ((spEC.x * spEC.x) + (spEC.z * spEC.z)) - temp_f14;
    spB8 = temp_f16;
    temp_f12_2 = (spD4.x * spD4.x) + (spD4.z * spD4.z);
    temp_f18 = temp_f12_2 + temp_f12_2;
    if (!(fabsf(temp_f18) < 0.008f)) {
        temp_f2_3 = (spD4.x * sp20) + (spD4.z * sp24);
        temp_f14_2 = temp_f2_3 + temp_f2_3;
        temp_f0_3 = temp_f14_2 * temp_f14_2;
        temp_f16_2 = (4.0f * temp_f12_2) * spB8;
        if (temp_f0_3 < temp_f16_2) {
            return 0;
        }
        temp_f2_4 = temp_f0_3 - temp_f16_2;
        temp_f0_4 = sqrtf(temp_f2_4);
        phi_a1 = 0;
        if (0.0f < temp_f2_4) {
            phi_a1 = 1;
        }
        temp_f2_5 = (temp_f0_4 - temp_f14_2) / temp_f18;
        spD0 = temp_f2_5;
        if (phi_a1 == 1) {
            spCC = (f32) ((-temp_f14_2 - temp_f0_4) / temp_f18);
        }
        phi_a1_2 = phi_a1;
        phi_f2 = temp_f2_5;
    } else {
        temp_f2_6 = (spD4.x * spEC.x) + (spD4.z * spEC.z);
        temp_f14_3 = temp_f2_6 + temp_f2_6;
        if (fabsf(temp_f14_3) < 0.008f) {
            return 0;
        }
        temp_f2_7 = -temp_f16 / temp_f14_3;
        spD0 = temp_f2_7;
        phi_a1_2 = 0;
        phi_f2 = temp_f2_7;
        phi_a2_4 = 1;
    }

    if (((phi_a1_2 == 0) && (phi_f2 < 0.0f)) || (1.0f < phi_f2)) {
        return 0;
    }

    phi_a2 = phi_a2_4;
        phi_a1_3 = phi_a1_2;

    phi_v0 = 0;
    if (phi_f2 < 0.0f) {
        phi_v0 = 1;
    }
    phi_v1 = phi_v0;
    if (phi_v0 == 0) {
        phi_v1 = 0;
        if (1.0f < phi_f2) {
            phi_v1 = 1;
        }
    }
    temp_a0_2 = phi_v1;
    phi_v0_2 = 0;
    if (spCC < 0.0f) {
        phi_v0_2 = 1;
    }
    phi_v1_2 = phi_v0_2;
    if (phi_v0_2 == 0) {
        phi_v1_2 = 0;
        if (1.0f < spCC) {
            phi_v1_2 = 1;
        }
    }
    if (temp_a0_2 != 0) {
        if (phi_v1_2 != 0) {
            return 0;
        }
    }
    phi_a2_3 = phi_a2_4;
    if (temp_a0_2 != 0) {
        phi_a2_3 = 0;
    }
    phi_a2 = phi_a2_3;
    phi_a1_3 = phi_a1_2;
    if (phi_v1_2 != 0) {
        phi_a2 = phi_a2_3;
        phi_a1_3 = 0;
    }
    phi_a2_2 = phi_a2;
    if (phi_a2 == 1) {
        temp_f0_5 = (phi_f2 * spD4.y) + spEC.y;
        if ((temp_f0_5 < 0.0f) || ((f32) arg0->height < temp_f0_5)) {
            phi_a2_2 = 0;
        } else {

        }
    }
    phi_a1_4 = phi_a1_3;
    if (phi_a1_3 == 1) {
        temp_f0_6 = (spCC * spD4.y) + spEC.y;
        if ((temp_f0_6 < 0.0f) || ((f32) arg0->height < temp_f0_6)) {
            phi_a1_4 = 0;
        } else {

        }
    }
    if (phi_a2_2 == 0) {
        if (phi_a1_4 == 0) {
            return 0;
        }
    }
    if ((phi_a2_2 == 1) && (phi_a1_4 == 1)) {
        sp24 = spD4.x;
        sp84 = (f32) (((phi_f2 * spD4.x) + spEC.x) + (f32) arg0->pos.x);
        sp20 = spEC.x;
        sp28 = spD4.y;
        sp88 = (f32) ((((phi_f2 * spD4.y) + spEC.y) + (f32) arg0->pos.y) + (f32) arg0->yShift);
        sp2C = spEC.y;
        sp8C = (f32) (((phi_f2 * spD4.z) + spEC.z) + (f32) arg0->pos.z);
        sp90 = (f32) (((spCC * spD4.x) + sp20) + (f32) arg0->pos.x);
        sp94 = (f32) ((((spCC * sp28) + spEC.y) + (f32) arg0->pos.y) + (f32) arg0->yShift);
        sp98 = (f32) (((spCC * spD4.z) + spEC.z) + (f32) arg0->pos.z);
        phi_t0 = (phi_t0_2 | 4) | 8;
    } else {
        if (phi_a2_2 == 1) {
            sp84 = (f32) (((phi_f2 * spD4.x) + spEC.x) + (f32) arg0->pos.x);
            sp88 = (f32) ((((phi_f2 * spD4.y) + spEC.y) + (f32) arg0->pos.y) + (f32) arg0->yShift);
            sp8C = (f32) (((phi_f2 * spD4.z) + spEC.z) + (f32) arg0->pos.z);
            phi_t0 = phi_t0_2 | 4;
        } else {
            phi_t0 = phi_t0_2;
            if (phi_a1_4 == 1) {
                sp84 = (f32) (((spCC * spD4.x) + spEC.x) + (f32) arg0->pos.x);
                sp88 = (f32) ((((spCC * spD4.y) + spEC.y) + (f32) arg0->pos.y) + (f32) arg0->yShift);
                sp8C = (f32) (((spCC * spD4.z) + spEC.z) + (f32) arg0->pos.z);
                phi_t0 = phi_t0_2 | 4;
            }
        }
    }

    phi_v0_3 = 0;
    phi_v1_3 = 0;

    do {
        if((1 << phi_v0_3) & phi_t0){
            if(phi_v1_3 == 0){
                *arg3 = sp6C2[phi_v0_3];
            }else {
                if(phi_v1_3 == 1){
                    temp_s0 = &sp6C2[phi_v0_3];
                    if(func_800CB650(arg3, arg1) <= func_800CB650(arg3, temp_s0)){
                        *arg4 = *arg3;
                        *arg3 = *temp_s0;
                        return 1;
                    } else {
                        *arg4 = *temp_s0;
                        return 1;
                    }
                }
            }
            phi_v1_3++;
        }
        phi_v0_3++;
    } while (phi_v0_3 != 4);

    return phi_v1_3;
/*
loop_63:
    phi_v1_5 = phi_v1_3;
    if (((1 << phi_v0_3) & phi_t0) != 0) {
        if (phi_v1_3 == 0) {
            temp_t2 = &sp6C + (phi_v0_3 * 0xC);
            *arg3 = *temp_t2;
block_70:
            phi_v1_5 = phi_v1_3 + 1;
block_71:
            temp_v0 = phi_v0_3 + 1;
            phi_v0_3 = temp_v0;
            phi_v1_3 = phi_v1_5;
            phi_v1_4 = phi_v1_5;
            if (temp_v0 != 4) {
                goto loop_63;
            }
        } else {
            if (phi_v1_3 == 1) {
                temp_s0 = (((phi_v0_3 * 4) - phi_v0_3) * 4) + &sp6C;
                sp68 = (s32) phi_v1_3;
                temp_v1 = phi_v1_3;
                if (func_800CB650(arg3, arg1) < func_800CB650(arg3, temp_s0)) {
                    *arg4 = *temp_s0;
                    phi_v1_4 = temp_v1;
                } else {
                    *arg4 = *arg3;
                    *arg3 = *temp_s0;
                    phi_v1_4 = temp_v1;
                }
            } else {
                goto block_70;
            }
        }
    } else {
        goto block_71;
    }
    return phi_v1_4;
*/
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/sys_math3d/func_800CEE0C.s")
#endif

/* Math3D_CylTriTouchingIntersect
 * Determines if `cyl` and `tri` are touching.  The point of intersection
 * is placed in `intersect` Returns 1 if they are touching, 0 otherwise.
*/
s32 func_800CF7D0(Cylinder16 *cyl, TriNorm *tri, Vec3f *intersect) {

    f32 sp8C;
    f32 cylTop;
    f32 cylBottom;

    f32 phi_f2;
    f32 t;
    f32 temp_ret;
    Vec3f sp6C;
    Vec3f sp60;
    Vec3f sp54;
    f32 temp_f14_2;
    f32 temp_f2;

    static Vec3f D_80146550;
    static Sphere16 topSphere;
    static Sphere16 bottomSphere;
    static Vec3f D_8016A740;
    static Vec3f D_8016A750;

    cylBottom = (f32)cyl->pos.y + cyl->yShift;
    cylTop = cyl->height + cylBottom;

    // If all of the verticies are below or all of the verticies are above the cylinder.

    if (((tri->vtx[0].y < cylBottom) && (tri->vtx[1].y < cylBottom) && (tri->vtx[2].y < cylBottom)) ||
        ((cylTop < tri->vtx[0].y) && (cylTop < tri->vtx[1].y) && (cylTop < tri->vtx[2].y))) {
        return 0;
    }
    phi_f2 = D_80146550.x;
    if (func_800CEE0C(cyl, &tri->vtx[0], &tri->vtx[1], &D_8016A740, &D_8016A750) != 0) {
        phi_f2 = func_800CB650(&D_8016A740, &tri->vtx[0]);
        *intersect = D_8016A740;
    }

    if (func_800CEE0C(cyl, &tri->vtx[2], &tri->vtx[1], &D_8016A740, &D_8016A750) != 0) {
        temp_ret = func_800CB650(&D_8016A740, &tri->vtx[2]);
        if (temp_ret < phi_f2) {
            *intersect = D_8016A740;
            phi_f2 = temp_ret;
        }
    }

    if (func_800CEE0C(cyl, &tri->vtx[0], &tri->vtx[2], &D_8016A740, &D_8016A750) != 0) {
        temp_ret = func_800CB650(&D_8016A740, &tri->vtx[0]);
        if (temp_ret < phi_f2) {
            *intersect = D_8016A740;
            phi_f2 = temp_ret;
        }
    }
    // what is 1.e38f ?
    if (phi_f2 != 1.e38f) {
        return 1;
    }

    if (func_800CD168(&tri->vtx[0], &tri->vtx[1], &tri->vtx[2], tri->normal.x, tri->normal.y, tri->normal.z, tri->originDist, cyl->pos.z, cyl->pos.x, &sp8C, cylBottom, cylTop) != 0) {
        VEC3F(sp6C, cyl->pos.x, sp8C, cyl->pos.z);
        VEC3F(sp60, ((tri->vtx[0].x + tri->vtx[1].x) * 0.5f),
                    ((tri->vtx[0].y + tri->vtx[1].y) * 0.5f),
                    ((tri->vtx[0].z + tri->vtx[1].z) * 0.5f));

        Math_Vec3f_Diff(&sp60, &sp6C, &sp54);
        temp_f14_2 = sqrtf((sp54.x * sp54.x) + (sp54.z * sp54.z));

        if (fabsf(temp_f14_2) < 0.008f) {
            Math_Vec3f_Copy(intersect, &sp60);
            return 1;
        }
        t = cyl->radius / temp_f14_2;
        func_800CAF5C(&sp6C, &sp54, t, intersect);
        return 1;

    }

    topSphere.center.x = bottomSphere.center.x = cyl->pos.x;
    topSphere.center.z = bottomSphere.center.z = cyl->pos.z;
    topSphere.center.y = cylTop;
    bottomSphere.center.y = cylBottom;
    topSphere.radius = bottomSphere.radius = cyl->radius;


    if ((func_800CE934(&topSphere, tri, intersect) != 0) || (func_800CE934(&bottomSphere, tri, intersect) != 0)) {
        return 1;
    }
    return 0;
}

/*
 * Math3D_CylTriTouching
 * Returns 1 if `cyl` and `tri` and touching
*/
s32 func_800CFC4C(Cylinder16* cyl, TriNorm* tri) {
    char pad[4];
    Vec3s intersect;

    return func_800CF7D0(cyl, tri, &intersect);
}

/*
 * Math3D_SpheresTouching
 * Deteremines if two spheres are touching.  Returns 1 if their closest surface point
 * is within 0.008f units. 0 otherwise.
*/
s32 func_800CFC6C(Sphere16* sphereA, Sphere16* sphereB) {
    f32 surfaceDist;

    return func_800CFC8C(sphereA, sphereB, &surfaceDist);
}

/*
 * Math3D_SpheresTouchingSurface
 * Determines if two spheres are within 0.008 units of each other.  The distance from
 * the closest point on the surface is placed in `surfaceDist`  Returns 1 if the surfaces
 * are not touching.  Returns 0 otherwise.
*/
s32 func_800CFC8C(Sphere16* sphereA, Sphere16* sphereB, f32* surfaceDist) {
    f32 centerDist;

    return func_800CFCAC(sphereA, sphereB, surfaceDist, &centerDist);
}

/*
 * Math3D_SpheresTouchingSurfaceCenter
 * Determines if two spheres are within 0.008f units of each other.  The distance from
 * the centers is placed in `centerDist` and the closest distance to their surfaces is placed 
 * in `surfaceDist` Returns 1 if the surfaces are not touching.  Returns 0 otherwise.
*/
s32 func_800CFCAC(Sphere16 *sphereA, Sphere16 *sphereB, f32 *surfaceDist, f32 *centerDist) {
    Vec3f diff;

    diff.x = (f32)sphereA->center.x - (f32)sphereB->center.x;
    diff.y = (f32)sphereA->center.y - (f32)sphereB->center.y;
    diff.z = (f32)sphereA->center.z - (f32)sphereB->center.z;

    *centerDist = sqrt(SQ(diff.x) + SQ(diff.y) + SQ(diff.z));

    *surfaceDist = (((f32)sphereA->radius + (f32)sphereB->radius) - *centerDist);
    if (0.008f < *surfaceDist) {
        return 1;
    }

    *surfaceDist = 0.0f;
    return 0;
}

s32 func_800CFD84(Sphere16* sph, Cylinder16* cyl, f32* surfaceDist) {
    f32 centerDist;

    return func_800CFDA4(sph, cyl, surfaceDist, &centerDist);
}

#ifdef NON_MATCHING
s32 func_800CFDA4(Sphere16 *sph, Cylinder16 *cyl, f32 *surfaceDist, f32 *centerDist) {
    f32 yOffset;
    f32 radix;

    static Cylinderf cylf;
    static Spheref sphf;

    if (sph->radius <= 0 || cyl->radius <= 0) {
        return 0;
    }
    sphf.radius = sph->radius;
    sphf.center.y = sph->center.y;

    cylf.pos.y = cyl->pos.y;
    cylf.yShift = cyl->yShift;
    cylf.height = cyl->height;

    *centerDist = sqrtf(SQ((f32)sph->center.x - cyl->pos.x) + SQ((f32)sph->center.z - cyl->pos.z));
    radix = sphf.radius + cyl->radius;
    if (radix < *centerDist) {
        return 0;
    }

    yOffset = cylf.pos.y + cylf.yShift;
    if (yOffset <= (sphf.center.y + sphf.radius) && ((sphf.center.y - sphf.radius) <= (yOffset + cylf.height))) {
        *surfaceDist = radix - *centerDist;
        return 1;
    }

    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/sys_math3d/func_800CFDA4.s")
#endif
/*
 * Math3D_CylinderOutCylinder
 * returns 1 if cylinder `ca` is outside cylinder `cb`.
 * Sets `deadSpace` to the mininum space between the cylinders not occupied by the other.
*/
s32 func_800CFF14(Cylinder16* ca, Cylinder16* cb, f32* deadSpace) {
    f32 xzDist;

    func_800CFF34(ca, cb, deadSpace, &xzDist);
}

/*
 * Math3D_CylinderOutCylinderDist
 * returns 1 if cylinder `ca` is outside cylinder `cb`.
 * Sets `xzDist` to the xz distance between the centers of the cylinders.
 * Sets `deadSpace` to the mininum space between the cylinders not occupied by the other.
*/
// Math3D_CylinderOutCylinderDist
s32 func_800CFF34(Cylinder16 *ca, Cylinder16 *cb, f32 *deadSpace, f32 *xzDist) {
    static Cylinderf caf;
    static Cylinderf cbf;

    CYL16TOF(ca,caf);
    CYL16TOF(cb,cbf);

    *xzDist = sqrtf(SQ(caf.pos.x - cbf.pos.x) + SQ(caf.pos.z - cbf.pos.z));

    // The combined radix are within the xz distance
    if ((caf.radius + cbf.radius) < *xzDist) {
        return 0;
    }

    // top of ca < bottom of cb or top of cb < bottom of ca
    if (((caf.pos.y + caf.yShift) + caf.height) < (cbf.pos.y + cbf.yShift) ||
        (((cbf.pos.y + cbf.yShift) + cbf.height) < (caf.pos.y + caf.yShift))) {
        return 0;
    }

    *deadSpace = caf.radius + cbf.radius - *xzDist;
    return 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/sys_math3d/func_800D0104.s")

s32 func_800D0480(Sphere16 *arg0, f32 arg1, f32 arg2) {
    f32 temp_f0;
    f32 temp_f2;

    temp_f0 = arg0->center.x - arg1;
    temp_f2 = arg0->center.z - arg2;
    if ((SQ(temp_f0) + SQ(temp_f2)) <= SQ(arg0->radius) ) {
        return 1;
    }
    return 0;
}

s32 func_800D04F0(Sphere16 *arg0, f32 arg1, f32 arg2) {
    f32 temp_f0;
    f32 temp_f2;

    temp_f0 = arg0->center.x - arg1;
    temp_f2 = arg0->center.y - arg2;
    if ((SQ(temp_f0) + SQ(temp_f2)) <= SQ(arg0->radius)) {
        return 1;
    }
    return 0;
}

s32 func_800D0560(Sphere16 *arg0, f32 arg1, f32 arg2) {
    f32 temp_f0;
    f32 temp_f2;

    temp_f0 = arg0->center.y - arg1;
    temp_f2 = arg0->center.z - arg2;
    if ((SQ(temp_f0) + SQ(temp_f2)) <= SQ(arg0->radius)) {
        return 1;
    }
    return 0;
}

void func_800D05D0(s32 arg0, s32 arg1) {

}

void func_800D05DC(s32 arg0, s32 arg1) {

}

