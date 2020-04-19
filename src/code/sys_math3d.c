#include <ultra64.h>
#include <global.h>
#include <vt.h>

s32 func_800CA8E8(Vec3f*, Vec3f*, Vec3f*, Vec3f*, Vec3f*, Vec3f*);
s32 Math3D_TriLineIntersect(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, Vec3f* arg7,
                            Vec3f* arg8, Vec3f* arg9, s32 argA);
s32 func_800CAD08(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, Linef* arg8);
s32 func_800CB1F8(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8);
s32 func_800CB338(Vec3f* v0, Vec3f* v1, Vec3f* v2, Vec3f* center, f32 radius);

s32 func_800CA7D0(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, Vec3f* arg8,
                  Vec3f* arg9, Vec3f* argA) {
    static Linef D_8016A5A0;
    static Linef D_8016A5B8;

    Vec3f sp34;

    if (func_800CAD08(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, &D_8016A5A0) == 0) {
        return 0;
    }
    Math_Vec3f_Copy(&D_8016A5B8.a, &D_8016A5A0.a);

    D_8016A5B8.b.x = (D_8016A5A0.b.x * 100.0f) + D_8016A5A0.a.x;
    D_8016A5B8.b.y = (D_8016A5A0.b.y * 100.0f) + D_8016A5A0.a.y;
    D_8016A5B8.b.z = (D_8016A5A0.b.z * 100.0f) + D_8016A5A0.a.z;

    if (!func_800CA8E8(&D_8016A5B8.a, &D_8016A5B8.b, arg8, arg9, argA, &sp34)) {
        return 0;
    }
    return 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/sys_math3d/func_800CA8E8.s")

void Math3D_LineVsPos(Linef* line, Vec3f* pos, Vec3f* ret) {
    f32 temp_ret;
    f32 temp_f0;

    temp_ret = func_800CB600(&line->b);
    if (fabsf(temp_ret) < 0.008f) {
        osSyncPrintf(VT_COL(YELLOW, BLACK));
        // Math3D_lineVsPosSuisenCross(): No straight line length
        osSyncPrintf("Math3D_lineVsPosSuisenCross():直線の長さがありません\n");
        // Returns cross = pos.
        osSyncPrintf("cross = pos を返します。\n");
        osSyncPrintf(VT_RST);
        Math_Vec3f_Copy(ret, pos);
    }
    temp_f0 =
        (((pos->x - line->a.x) * line->b.x) + ((pos->y - line->a.y) * line->b.y) + ((pos->z - line->a.z) * line->b.z)) /
        temp_ret;
    ret->x = (line->b.x * temp_f0) + line->a.x;
    ret->y = (line->b.y * temp_f0) + line->a.y;
    ret->z = (line->b.z * temp_f0) + line->a.z;
}

void func_800CACAC(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32* arg7, f32* arg8) {
    *arg7 = ((arg1 * arg6) - (arg3 * arg5)) / arg4;
    *arg8 = ((arg2 * arg5) - (arg0 * arg6)) / arg4;
}

s32 func_800CAD08(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, Linef* arg8) {
    char pad[4];
    Vec3f sp60;
    Vec3f sp54;
    f32 ax;
    f32 ay;
    f32 az;

    VEC_SET(sp60, arg0, arg1, arg2);
    VEC_SET(sp54, arg4, arg5, arg6);

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

s32 func_800CAEE8(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, Vec3f* arg8,
                  Vec3f* arg9) {
    static Linef D_8016A5D0;

    if (func_800CAD08(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, &D_8016A5D0) == 0) {
        return 0;
    }
    Math3D_LineVsPos(&D_8016A5D0, arg8, arg9);
    return 1;
}

void func_800CAF5C(Vec3f* arg0, Vec3f* arg1, f32 arg2, Vec3f* arg3) {
    arg3->x = (arg1->x * arg2) + arg0->x;
    arg3->y = (arg1->y * arg2) + arg0->y;
    arg3->z = (arg1->z * arg2) + arg0->z;
}

void func_800CAFA0(Vec3f* v0, Vec3f* v1, f32 arg2, Vec3f* ret) {
    Vec3f diff;

    Math_Vec3f_Diff(v1, v0, &diff);
    func_800CAF5C(v0, &diff, arg2, ret);
}

f32 Math3D_DotProduct(Vec3f* vec1, Vec3f* vec2) {
    f32 ret;

    func_800CB010(vec1, vec2, &ret);
    return ret;
}

s32 func_800CB010(Vec3f* vec1, Vec3f* vec2, f32* dst) {
    f32 magProduct;

    magProduct = Math3D_Vec3fMagnitude(vec1) * Math3D_Vec3fMagnitude(vec2);
    if (fabsf(magProduct) < 0.008f) {
        *dst = 0.0f;
        return 1;
    }
    *dst = ((vec1->x * vec2->x) + (vec1->y * vec2->y) + (vec1->z * vec2->z)) / magProduct;
    return 0;
}

void func_800CB0C0(Vec3f* vec1, Vec3f* vec2, Vec3f* ret) {

    f32 temp_f12;
    Vec3f negVec1;
    f32 temp_f14;
    f32 temp_f2;
    f32 dotProduct;

    negVec1.x = vec1->x * -1.0f;
    negVec1.y = vec1->y * -1.0f;
    negVec1.z = vec1->z * -1.0f;

    dotProduct = Math3D_DotProduct(&negVec1, vec2);

    temp_f2 = vec2->x * dotProduct;
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

/*************************************************************************/
/*         The next 2 functions have some interesting control flow       */
/*************************************************************************/
#pragma GLOBAL_ASM("asm/non_matchings/code/sys_math3d/func_800CB1F8.s")

#ifdef NON_MATCHING
/*
 * Math3D_TriInSphere
 * Checks if a tringle defined by `v0`, `v1`, and `v2` lies within a spehere
 * centered at `center` and has radius `radius`.  Returns 1 if any vertex of the
 * triangle lies within the sphere, or 0 otherwise.
 */
s32 func_800CB338(Vec3f* v0, Vec3f* v1, Vec3f* v2, Vec3f* center, f32 radius) {
    f32 minX;
    f32 maxX;
    f32 minY;
    f32 maxY;
    f32 minZ;
    f32 maxZ;

    if (v1->x < v0->x) {
        minX = v1->x;
        maxX = v0->x;
    } else if (v0->x < v1->x) {
        minX = v0->x;
        maxX = v1->x;
    }

    if (v1->y < v0->y) {
        minY = v1->y;
        maxY = v0->y;
    } else if (v0->y < v1->y) {
        minY = v0->y;
        maxY = v1->y;
    }

    if (v1->z < v0->z) {
        minZ = v1->z;
        maxZ = v0->z;
    } else if (v0->z < v1->z) {
        minZ = v0->z;
        maxZ = v1->z;
    }

    if (v2->x < minX) {
        minX = v2->x;
    } else if (maxX < v2->x) {
        maxX = v2->x;
    }

    if (v2->y < minY) {
        minY = v2->y;
    } else if (maxY < v2->y) {
        maxY = v2->y;
    }

    if (v2->z < minZ) {
        minZ = v2->z;
    } else if (maxZ < v2->z) {
        maxZ = v2->z;
    }

    if (((minX - radius) <= center->x) && (center->x <= (maxX + radius)) && ((minY - radius) <= center->y) &&
        (center->y <= (maxY + radius)) && ((minZ - radius) <= center->z) && (center->z <= (maxZ + radius))) {
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

f32 Math3D_Dist2D(f32 arg0, f32 arg1, f32 arg2, f32 arg3) {
    return sqrtf(func_800CB594(arg0, arg1, arg2, arg3));
}

f32 func_800CB600(Vec3f* vec) {
    return SQ(vec->x) + SQ(vec->y) + SQ(vec->z);
}

f32 Math3D_Vec3fMagnitude(Vec3f* vec) {
    return sqrt(func_800CB600(vec));
}

f32 func_800CB650(Vec3f* a, Vec3f* b) {
    Vec3f diff;

    Math_Vec3f_Diff(a, b, &diff);
    return func_800CB600(&diff);
}

/*
 * Math3D_Vec3f_DistXYZ
 * Calculates the distance between points `a` and `b`
 */
f32 Math3D_Vec3f_DistXYZ(Vec3f* a, Vec3f* b) {
    return Math_Vec3f_DistXYZ(a, b);
}

/*
 * Calculates the distance between `a` and `b`.
 */
f32 Math3D_DistXYZ16toF(Vec3s* a, Vec3f* b) {
    Vec3f diff;

    diff.x = a->x - b->x;
    diff.y = a->y - b->y;
    diff.z = a->z - b->z;
    return Math3D_Vec3fMagnitude(&diff);
}

f32 func_800CB70C(Vec3f* arg0, Vec3f* arg1, f32 arg2, f32 arg3) {
    return ((arg0->x - arg2) * (arg1->y - arg3)) - ((arg0->y - arg3) * (arg1->x - arg2));
}

f32 func_800CB744(Vec3f* arg0, Vec3f* arg1, f32 arg2, f32 arg3) {
    return ((arg0->y - arg2) * (arg1->z - arg3)) - ((arg0->z - arg3) * (arg1->y - arg2));
}

f32 func_800CB77C(Vec3f* arg0, Vec3f* arg1, f32 arg2, f32 arg3) {
    return ((arg0->z - arg2) * (arg1->x - arg3)) - ((arg0->x - arg3) * (arg1->z - arg2));
}

void Math3D_Vec3f_Cross(Vec3f* a, Vec3f* b, Vec3f* ret) {
    ret->x = (a->y * b->z) - (a->z * b->y);
    ret->y = (a->z * b->x) - (a->x * b->z);
    ret->z = (a->x * b->y) - (a->y * b->x);
}

/*
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

s32 func_800CB88C(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2) {
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
s32 func_800CB934(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2) {
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

s32 func_800CBAE4(Vec3f* v0, Vec3f* v1, Vec3f* v2) {
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

s32 func_800CBC60(Vec3f* v0, Vec3f* v1, Vec3f* v2, Vec3f* v3) {
    static Vec3f D_8016A608;
    static Vec3f D_8016A618;
    static Vec3f D_8016A628;
    static Vec3f D_8016A638;

    s32 flags[2];

    flags[0] = flags[1] = 0;
    flags[0] = func_800CB88C(v2, v0, v1);
    if (!flags[0]) {
        return 1;
    }

    flags[1] = func_800CB88C(v3, v0, v1);
    if (!flags[1]) {
        return 1;
    }

    if (flags[0] & flags[1]) {
        return 0;
    }

    flags[0] |= (func_800CB934(v2, v0, v1) << 8);
    flags[1] |= (func_800CB934(v3, v0, v1) << 8);
    if (flags[0] & flags[1]) {
        return 0;
    }

    flags[0] |= (func_800CBAE4(v2, v0, v1) << 0x18);
    flags[1] |= (func_800CBAE4(v3, v0, v1) << 0x18);
    if (flags[0] & flags[1]) {
        return 0;
    }
    D_8016A608.x = v0->x;
    D_8016A608.y = v0->y;
    D_8016A608.z = v0->z;
    D_8016A618.x = v0->x;
    D_8016A618.y = v0->y;
    D_8016A618.z = v1->z;
    D_8016A628.x = v0->x;
    D_8016A628.y = v1->y;
    D_8016A628.z = v1->z;
    if (Math3D_TriLineIntersect(&D_8016A608, &D_8016A618, &D_8016A628, -1.0f, 0.0f, 0.0f, v0->x, v2, v3, &D_8016A638,
                                0)) {
        return 1;
    }
    D_8016A608.x = v0->x;
    D_8016A608.y = v0->y;
    D_8016A608.z = v0->z;
    D_8016A618.x = v0->x;
    D_8016A618.y = v1->y;
    D_8016A618.z = v1->z;
    D_8016A628.x = v0->x;
    D_8016A628.y = v1->y;
    D_8016A628.z = v0->z;
    if (Math3D_TriLineIntersect(&D_8016A608, &D_8016A618, &D_8016A628, -1.0f, 0.0f, 0.0f, v0->x, v2, v3, &D_8016A638,
                                0)) {
        return 1;
    }
    D_8016A608.x = v0->x;
    D_8016A608.y = v1->y;
    D_8016A608.z = v1->z;
    D_8016A618.x = v0->x;
    D_8016A618.y = v0->y;
    D_8016A618.z = v1->z;
    D_8016A628.x = v1->x;
    D_8016A628.y = v1->y;
    D_8016A628.z = v1->z;
    if (Math3D_TriLineIntersect(&D_8016A608, &D_8016A618, &D_8016A628, 0.0f, 0.0f, 1.0f, -v1->z, v2, v3, &D_8016A638,
                                0)) {
        return 1;
    }
    D_8016A608.x = v1->x;
    D_8016A608.y = v1->y;
    D_8016A608.z = v1->z;
    D_8016A618.x = v0->x;
    D_8016A618.y = v0->y;
    D_8016A618.z = v1->z;
    D_8016A628.x = v1->x;
    // POSSIBLE BUG?
    D_8016A618.y = v0->y;
    D_8016A628.z = v1->z;
    if (Math3D_TriLineIntersect(&D_8016A608, &D_8016A618, &D_8016A628, 0.0f, 0.0f, 1.0f, -v1->z, v2, v3, &D_8016A638,
                                0)) {
        return 1;
    }
    D_8016A608.x = v1->x;
    D_8016A608.y = v1->y;
    D_8016A608.z = v1->z;
    D_8016A618.x = v0->x;
    D_8016A618.y = v1->y;
    D_8016A618.z = v0->z;
    D_8016A628.x = v0->x;
    D_8016A628.y = v1->y;
    D_8016A628.z = v1->z;
    if (Math3D_TriLineIntersect(&D_8016A608, &D_8016A618, &D_8016A628, 0.0f, 1.0f, 0.0f, -v1->y, v2, v3, &D_8016A638,
                                0)) {
        return 1;
    }
    D_8016A608.x = v1->x;
    D_8016A608.y = v1->y;
    D_8016A608.z = v1->z;
    D_8016A618.x = v1->x;
    D_8016A618.y = v1->y;
    D_8016A618.z = v0->z;
    D_8016A628.x = v0->x;
    D_8016A628.y = v1->y;
    D_8016A628.z = v0->z;
    if (Math3D_TriLineIntersect(&D_8016A608, &D_8016A618, &D_8016A628, 0.0f, 1.0f, 0.0f, -v1->y, v2, v3, &D_8016A638,
                                0)) {
        return 1;
    }
    D_8016A608.x = v0->x;
    D_8016A608.y = v0->y;
    D_8016A608.z = v0->z;
    D_8016A618.x = v0->x;
    D_8016A618.y = v1->y;
    D_8016A618.z = v0->z;
    D_8016A628.x = v1->x;
    D_8016A628.y = v1->y;
    D_8016A628.z = v0->z;
    if (Math3D_TriLineIntersect(&D_8016A608, &D_8016A618, &D_8016A628, 0.0f, 0.0f, -1.0f, v0->z, v2, v3, &D_8016A638,
                                0)) {
        return 1;
    }
    D_8016A608.x = v0->x;
    D_8016A608.y = v0->y;
    D_8016A608.z = v0->z;
    D_8016A618.x = v1->x;
    D_8016A618.y = v1->y;
    D_8016A618.z = v0->z;
    D_8016A628.x = v1->x;
    D_8016A628.y = v0->y;
    D_8016A628.z = v0->z;
    if (Math3D_TriLineIntersect(&D_8016A608, &D_8016A618, &D_8016A628, 0.0f, 0.0f, -1.0f, v0->z, v2, v3, &D_8016A638,
                                0)) {
        return 1;
    }
    D_8016A608.x = v0->x;
    D_8016A608.y = v0->y;
    D_8016A608.z = v0->z;
    D_8016A618.x = v1->x;
    D_8016A618.y = v0->y;
    D_8016A618.z = v0->z;
    D_8016A628.x = v1->x;
    D_8016A628.y = v0->y;
    D_8016A628.z = v1->z;
    if (Math3D_TriLineIntersect(&D_8016A608, &D_8016A618, &D_8016A628, 0.0f, -1.0f, 0.0f, v0->y, v2, v3, &D_8016A638,
                                0)) {
        return 1;
    }
    D_8016A608.x = v0->x;
    D_8016A608.y = v0->y;
    D_8016A608.z = v0->z;
    D_8016A618.x = v1->x;
    D_8016A618.y = v0->y;
    D_8016A618.z = v1->z;
    D_8016A628.x = v0->x;
    D_8016A628.y = v0->y;
    D_8016A628.z = v1->z;
    if (Math3D_TriLineIntersect(&D_8016A608, &D_8016A618, &D_8016A628, 0.0f, -1.0f, 0.0f, v0->y, v2, v3, &D_8016A638,
                                0)) {
        return 1;
    }
    D_8016A608.x = v1->x;
    D_8016A608.y = v1->y;
    D_8016A608.z = v1->z;
    D_8016A618.x = v1->x;
    D_8016A618.y = v0->y;
    D_8016A618.z = v0->z;
    D_8016A628.x = v1->x;
    D_8016A628.y = v1->y;
    D_8016A628.z = v0->z;
    if (Math3D_TriLineIntersect(&D_8016A608, &D_8016A618, &D_8016A628, 1.0f, 0.0f, 0.0f, -v1->x, v2, v3, &D_8016A638,
                                0)) {
        return 1;
    }
    D_8016A608.x = v1->x;
    D_8016A608.y = v1->y;
    D_8016A608.z = v1->z;
    D_8016A618.x = v1->x;
    D_8016A618.y = v0->y;
    D_8016A618.z = v1->z;
    D_8016A628.x = v1->x;
    D_8016A628.y = v0->y;
    D_8016A628.z = v0->z;
    if (Math3D_TriLineIntersect(&D_8016A608, &D_8016A618, &D_8016A628, 1.0f, 0.0f, 0.0f, -v1->x, v2, v3, &D_8016A638,
                                0)) {
        return 1;
    }

    return 0;
}

// Some type of quad detection?
s32 func_800CC6D8(Vec3s* v0, Vec3s* v1, Vec3s* v2, Vec3s* v3) {
    static Vec3f v0f;
    static Vec3f v1f;
    static Vec3f v2f;
    static Vec3f v3f;

    v0f.x = v0->x;
    v0f.y = v0->y;
    v0f.z = v0->z;
    v1f.x = v1->x;
    v1f.y = v1->y;
    v1f.z = v1->z;
    v2f.x = v2->x;
    v2f.y = v2->y;
    v2f.z = v2->z;
    v3f.x = v3->x;
    v3f.y = v3->y;
    v3f.z = v3->z;
    return func_800CBC60(&v0f, &v1f, &v2f, &v3f);
}

void func_800CC824(Vec3f* arg0, s16 angle, f32* arg2, f32* arg3, f32* arg4) {
    *arg2 = Math_Sins(angle) * 32767.0f;
    *arg3 = Math_Coss(angle) * 32767.0f;
    *arg4 = -((*arg2 * arg0->x) + (*arg3 * arg0->z));
}

/*
 * Defines a plane from verticies `va`, `vb`, and `vc`.  Normal components are output to
 * `nx`, `ny`, and `nz`.  Distance from the origin is output to `originDist`
 * Satisifes the plane equation NxVx + NyVy + NzVz + D = 0
 */
void func_800CC8B4(Vec3f* va, Vec3f* vb, Vec3f* vc, f32* nx, f32* ny, f32* nz, f32* originDist) {
    static Vec3f normal;

    f32 normMagnitude;
    f32 t;

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
 * Returns the answer to the plane equation with elements specified by arguments.
 */
f32 Math3D_Planef(f32 nx, f32 ny, f32 nz, f32 originDist, Vec3f* v) {
    return (v->x * nx) + (ny * v->y) + (nz * v->z) + originDist;
}

/*
 * Returns the answer to the plane equation
 */
f32 Math3D_Plane(Plane* plane, Vec3f* v) {
    return ((plane->normal.x * v->x) + (plane->normal.y * v->y) + (plane->normal.z * v->z)) + plane->originDist;
}

/*
 * Calculates the absolute distance from a point `p` to the plane defined as
 * `nx`, `ny`, `nz`, and `originDist`
 */
f32 Math3D_UDistPlaneToPos(f32 nx, f32 ny, f32 nz, f32 originDist, Vec3f* p) {

    if (fabsf(sqrtf(SQ(nx) + SQ(ny) + SQ(nz))) < 0.008f) {
        osSyncPrintf(VT_COL(YELLOW, BLACK));
        // Math3DLengthPlaneAndPos(): Normal size is near zero %f %f %f
        osSyncPrintf("Math3DLengthPlaneAndPos():法線size がゼロ近いです%f %f %f\n", nx, ny, nz);
        osSyncPrintf(VT_RST);
        return 0.0f;
    }
    return fabsf(Math3D_DistPlaneToPos(nx, ny, nz, originDist, p));
}

/*
 * Calculates the signed distance from a point `p` to a plane defined as
 * `nx`, `ny`, `nz`, and `originDist`
 */
f32 Math3D_DistPlaneToPos(f32 nx, f32 ny, f32 nz, f32 originDist, Vec3f* p) {
    f32 normMagnitude;

    normMagnitude = sqrtf(SQ(nx) + SQ(ny) + SQ(nz));
    if (fabsf(normMagnitude) < 0.008f) {
        osSyncPrintf(VT_COL(YELLOW, BLACK));
        // Math3DSignedLengthPlaneAndPos(): Normal size is close to zero %f %f %f
        osSyncPrintf("Math3DSignedLengthPlaneAndPos():法線size がゼロ近いです%f %f %f\n", nx, ny, nz);
        osSyncPrintf(VT_RST);
        return 0.0f;
    }
    return Math3D_Planef(nx, ny, nz, originDist, p) / normMagnitude;
}

s32 func_800CCBE4(Vec3f* v0, Vec3f* v1, Vec3f* v2, f32 z, f32 x, f32 arg5, f32 arg6, f32 ny) {
    f32 temp_f6;
    f32 temp_f10;
    f32 temp_f8;
    f32 sp60;
    f32 sq6;

    if (func_800CB1F8(v0->z, v0->x, v1->z, v1->x, v2->z, v2->x, z, x, arg6) == 0) {
        return 0;
    }

    sq6 = SQ(arg6);
    if (((SQ(v0->z - z) + SQ(v0->x - x)) < sq6) || ((SQ(v1->z - z) + SQ(v1->x - x)) < sq6) ||
        ((SQ(v2->z - z) + SQ(v2->x - x)) < sq6)) {

        return 1;
    }

    temp_f6 = ((v0->z - z) * (v1->x - x)) - ((v0->x - x) * (v1->z - z));
    temp_f10 = ((v1->z - z) * (v2->x - x)) - ((v1->x - x) * (v2->z - z));
    temp_f8 = ((v2->z - z) * (v0->x - x)) - ((v2->x - x) * (v0->z - z));

    if (((temp_f6 <= arg5) && (temp_f10 <= arg5) && (temp_f8 <= arg5)) ||
        ((-arg5 <= temp_f6) && (-arg5 <= temp_f10) && (-arg5 <= temp_f8))) {
        return 1;
    }
    if (0.5f < fabsf(ny)) {
        if (func_800CE4B8(z, x, v0->z, v0->x, v1->z, v1->x, &sp60)) {
            if (sp60 < sq6) {
                return 1;
            }
        }

        if (func_800CE4B8(z, x, v1->z, v1->x, v2->z, v2->x, &sp60)) {
            if (sp60 < sq6) {
                return 1;
            }
        }
        if (func_800CE4B8(z, x, v2->z, v2->x, v0->z, v0->x, &sp60)) {
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

s32 func_800CCF98(Vec3f* v0, Vec3f* v1, Vec3f* v2, f32 arg3, f32 normMagnitude, f32 arg5, f32 arg6, f32 z, f32 x,
                  f32* pointDist, f32 argA) {
    if (fabsf(normMagnitude) < 0.008f) {
        return 0;
    }
    if (func_800CCBE4(v0, v1, v2, z, x, 300.0f, argA, normMagnitude)) {
        *pointDist = (f32)((((-arg3 * x) - (arg5 * z)) - arg6) / normMagnitude);
        return 1;
    }
    return 0;
}

s32 func_800CD044(Vec3f* v0, Vec3f* v1, Vec3f* v2, f32 arg3, f32 ny, f32 arg5, f32 arg6, f32 z, f32 x, f32* arg9,
                  f32 argA) {
    if (fabsf(ny) < 0.008f) {
        return 0;
    }
    if (func_800CCBE4(v0, v1, v2, z, x, 0.0f, argA, ny)) {
        *arg9 = (f32)((((-arg3 * x) - (arg5 * z)) - arg6) / ny);
        return 1;
    }
    return 0;
}

s32 func_800CD0F0(Vec3f* v0, Vec3f* v1, Vec3f* v2, f32 ny, f32 z, f32 x) {
    if (fabsf(ny) < 0.008f) {
        return 0;
    }
    if (func_800CCBE4(v0, v1, v2, z, x, 300.0f, 1.0f, ny)) {
        return 1;
    }
    return 0;
}

/*
 * Determines if the Triangle defined by verticies `v0`, `v1`, and `v2` with normal vector
 * `nx`, `ny`, and `nz` is touching the cylinder defined by the center `cylZ`, `cylX` and top
 * y componets `cylBottom` and `cylTop` are touching. The y component which they are touching is
 * output to `yIntercept`, returns 1 if any part of the triangle is touching the cylinder.
 */
s32 Math3D_TriVtxCylTouching(Vec3f* v0, Vec3f* v1, Vec3f* v2, f32 nx, f32 ny, f32 nz, f32 originDist, f32 cylZ,
                             f32 cylX, f32* yIntercept, f32 cylBottom, f32 cylTop) {
    f32 bottomDist;
    f32 topDist;
    Vec3f cylPos;

    if (fabsf(ny) < 0.008f) {
        return 0;
    }

    cylPos.x = cylX;
    cylPos.y = cylBottom;
    cylPos.z = cylZ;

    bottomDist = Math3D_Planef(nx, ny, nz, originDist, &cylPos);
    cylPos.y = cylTop;
    topDist = Math3D_Planef(nx, ny, nz, originDist, &cylPos);
    if (((bottomDist > 0.0f) && (topDist > 0.0f)) || ((bottomDist < 0.0f) && (topDist < 0.0f))) {
        return 0;
    }

    if (func_800CCBE4(v0, v1, v2, cylZ, cylX, 300.0f, 1.0f, ny)) {
        *yIntercept = (((-nx * cylX) - (nz * cylZ)) - originDist) / ny;
        return 1;
    }
    return 0;
}

s32 func_800CD2D8(Vec3f* v0, Vec3f* v1, Vec3f* v2, Plane* plane, f32 z, f32 x, f32 arg6) {
    if (fabsf(plane->normal.y) < 0.008f) {
        return 0;
    }
    if (func_800CCBE4(v0, v1, v2, z, x, 0.0f, arg6, plane->normal.y)) {
        return 1;
    }
    return 0;
}

s32 func_800CD34C(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7) {
    f32 temp_f6;
    f32 temp_f10;
    f32 temp_f8;
    f32 sp60;
    f32 sq6;

    if (func_800CB1F8(arg0->y, arg0->z, arg1->y, arg1->z, arg2->y, arg2->z, arg3, arg4, arg6) == 0) {
        return 0;
    }

    sq6 = SQ(arg6);
    if (((SQ(arg0->y - arg3) + SQ(arg0->z - arg4)) < sq6) || ((SQ(arg1->y - arg3) + SQ(arg1->z - arg4)) < sq6) ||
        ((SQ(arg2->y - arg3) + SQ(arg2->z - arg4)) < sq6)) {
        return 1;
    }

    temp_f6 = ((arg0->y - arg3) * (arg1->z - arg4)) - ((arg0->z - arg4) * (arg1->y - arg3));
    temp_f10 = ((arg1->y - arg3) * (arg2->z - arg4)) - ((arg1->z - arg4) * (arg2->y - arg3));
    temp_f8 = ((arg2->y - arg3) * (arg0->z - arg4)) - ((arg2->z - arg4) * (arg0->y - arg3));

    if (((temp_f6 <= arg5) && (temp_f10 <= arg5) && (temp_f8 <= arg5)) ||
        ((-arg5 <= temp_f6) && (-arg5 <= temp_f10) && (-arg5 <= temp_f8))) {
        return 1;
    }

    if (0.5f < fabsf(arg7)) {

        if (func_800CE4B8(arg3, arg4, arg0->y, arg0->z, arg1->y, arg1->z, &sp60)) {
            if (sp60 < sq6) {
                return 1;
            }
        }

        if (func_800CE4B8(arg3, arg4, arg1->y, arg1->z, arg2->y, arg2->z, &sp60)) {
            if (sp60 < sq6) {
                return 1;
            }
        }

        if (func_800CE4B8(arg3, arg4, arg2->y, arg2->z, arg0->y, arg0->z, &sp60)) {
            if (sp60 < sq6) {
                return 1;
            }
        }
    }
    return 0;
}

s32 func_800CD668(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6) {
    return func_800CD34C(arg0, arg1, arg2, arg3, arg4, arg5, 1.0f, arg6);
}

s32 func_800CD6B0(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8,
                  f32* arg9) {
    if (fabsf(arg3) < 0.008f) {
        return 0;
    }
    arg3 = arg3;
    if (func_800CD34C(arg0, arg1, arg2, arg7, arg8, 300.0f, 1.0f, arg3)) {
        *arg9 = (f32)((((-arg4 * arg7) - (arg5 * arg8)) - arg6) / arg3);
        return 1;
    }
    return 0;
}

s32 func_800CD760(Vec3f* v0, Vec3f* v1, Vec3f* v2, f32 nx, f32 y, f32 z) {
    if (fabsf(nx) < 0.008f) {
        return 0;
    }
    if (func_800CD34C(v0, v1, v2, y, z, 300.0f, 1.0f, nx)) {
        return 1;
    }
    return 0;
}

s32 func_800CD7D8(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8,
                  f32* arg9, f32 argA, f32 argB) {
    static Vec3f D_8016A698;

    f32 sp34;
    f32 temp_ret;

    if (fabsf(arg3) < 0.008f) {
        return 0;
    }

    D_8016A698.x = argA;
    D_8016A698.y = arg7;
    D_8016A698.z = arg8;
    sp34 = Math3D_Planef(arg3, arg4, arg5, arg6, &D_8016A698);
    D_8016A698.x = argB;
    temp_ret = Math3D_Planef(arg3, arg4, arg5, arg6, &D_8016A698);
    if (((sp34 > 0.0f) && (temp_ret > 0.0f)) || ((sp34 < 0.0f) && (temp_ret < 0.0f))) {
        return 0;
    }
    if (func_800CD34C(arg0, arg1, arg2, arg7, arg8, 300.0f, 1.0f, arg3)) {
        *arg9 = (((-arg4 * arg7) - (arg5 * arg8)) - arg6) / arg3;
        return 1;
    }
    return 0;
}

s32 func_800CD95C(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32* arg3, f32 arg4, f32 arg5, f32 arg6) {
    if (fabsf(*arg3) < 0.008f) {
        return 0;
    }
    if (func_800CD34C(arg0, arg1, arg2, arg4, arg5, 0.0f, arg6, *arg3)) {
        return 1;
    }
    return 0;
}

s32 func_800CD9D0(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7) {
    f32 temp_f4;
    f32 temp_f8;
    f32 temp_f10;
    f32 sp78;
    f32 sq6;

    if (!func_800CB1F8(arg0->x, arg0->y, arg1->x, arg1->y, arg2->x, arg2->y, arg3, arg4, arg6)) {
        return 0;
    }
    sq6 = SQ(arg6);
    if (((SQ(arg3 - arg0->x) + SQ(arg4 - arg0->y)) < sq6) || ((SQ(arg3 - arg1->x) + SQ(arg4 - arg1->y)) < sq6) ||
        ((SQ(arg3 - arg2->x) + SQ(arg4 - arg2->y)) < sq6)) {
        return 1;
    }

    temp_f4 = ((arg0->x - arg3) * (arg1->y - arg4)) - ((arg0->y - arg4) * (arg1->x - arg3));
    temp_f8 = ((arg1->x - arg3) * (arg2->y - arg4)) - ((arg1->y - arg4) * (arg2->x - arg3));
    temp_f10 = ((arg2->x - arg3) * (arg0->y - arg4)) - ((arg2->y - arg4) * (arg0->x - arg3));

    if (((arg5 >= temp_f4) && (arg5 >= temp_f8) && (arg5 >= temp_f10)) ||
        ((-arg5 <= temp_f4) && (-arg5 <= temp_f8) && (-arg5 <= temp_f10))) {
        return 1;
    }

    if (fabsf(arg7) > 0.5f) {

        if (func_800CE4B8(arg3, arg4, arg0->x, arg0->y, arg1->x, arg1->y, &sp78) && (sp78 < sq6)) {
            return 1;
        }

        if (func_800CE4B8(arg3, arg4, arg1->x, arg1->y, arg2->x, arg2->y, &sp78) && (sp78 < sq6)) {
            return 1;
        }

        if (func_800CE4B8(arg3, arg4, arg2->x, arg2->y, arg0->x, arg0->y, &sp78) && (sp78 < sq6)) {
            return 1;
        }
    }

    return 0;
}

s32 func_800CDD18(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6) {
    return func_800CD9D0(arg0, arg1, arg2, arg3, arg4, arg5, 1.0f, arg6);
}

s32 func_800CDD60(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8,
                  f32* arg9) {
    if (fabsf(arg5) < 0.008f) {
        return 0;
    }
    if (func_800CD9D0(arg0, arg1, arg2, arg7, arg8, 300.0f, 1.0f, arg5)) {
        *arg9 = (f32)((((-arg3 * arg7) - (arg4 * arg8)) - arg6) / arg5);
        return 1;
    }
    return 0;
}

s32 func_800CDE10(Vec3f* v0, Vec3f* v1, Vec3f* v2, f32 nz, f32 x, f32 y) {
    if (fabsf(nz) < 0.008f) {
        return 0;
    }
    if (func_800CD9D0(v0, v1, v2, x, y, 300.0f, 1.0f, nz)) {
        return 1;
    }
    return 0;
}

s32 func_800CDE88(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8,
                  f32* arg9, f32 argA, f32 argB) {
    static Vec3f D_8016A6A8;

    f32 sp2C;
    f32 temp_ret;

    if (fabsf(arg5) < 0.008f) {
        return 0;
    }
    D_8016A6A8.x = arg7;
    D_8016A6A8.y = arg8;
    D_8016A6A8.z = argA;
    sp2C = Math3D_Planef(arg3, arg4, arg5, arg6, &D_8016A6A8);
    D_8016A6A8.z = argB;
    temp_ret = Math3D_Planef(arg3, arg4, arg5, arg6, &D_8016A6A8);
    if (((sp2C > 0.0f) && (temp_ret > 0.0f)) || ((sp2C < 0.0f) && (temp_ret < 0.0f))) {
        return 0;
    }

    if (func_800CD9D0(arg0, arg1, arg2, arg7, arg8, 300.0f, 1.0f, arg5)) {
        *arg9 = (((-arg3 * arg7) - (arg4 * arg8)) - arg6) / arg5;
        return 1;
    }
    return 0;
}

s32 func_800CE010(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, Vec3f* arg3, f32 arg4, f32 arg5, f32 arg6) {
    if (fabsf(arg3->z) < 0.008f) {
        return 0;
    }
    if (func_800CD9D0(arg0, arg1, arg2, arg4, arg5, 0.0f, arg6, arg3->z)) {
        return 1;
    }
    return 0;
}

s32 func_800CE084(f32 pointADist, f32 pointBDist, Vec3f* pointA, Vec3f* pointB, Vec3f* intersect) {
    f32 temp_f2;

    temp_f2 = pointADist - pointBDist;
    if (fabsf(temp_f2) < 0.008f) {
        *intersect = *pointB;
        return 0;
    }

    if (pointADist == 0.0f) {
        *intersect = *pointA;
    } else if (pointBDist == 0.0f) {
        *intersect = *pointB;
    } else {
        func_800CAFA0(pointA, pointB, pointADist / temp_f2, intersect);
    }
    return 1;
}

s32 func_800CE15C(f32 nx, f32 ny, f32 nz, f32 originDist, Vec3f* linePointA, Vec3f* linePointB, Vec3f* intersect,
                  s32 arg7) {
    f32 pointADist;
    f32 pointBDist;

    pointADist = Math3D_Planef(nx, ny, nz, originDist, linePointA);
    pointBDist = Math3D_Planef(nx, ny, nz, originDist, linePointB);

    if ((pointADist * pointBDist) > 0.0f) {
        *intersect = *linePointB;
        return 0;
    }

    if (arg7 != 0 && (pointADist < 0.0f) && (pointBDist > 0.0f)) {
        *intersect = *linePointB;
        return 0;
    }

    return func_800CE084(pointADist, pointBDist, linePointA, linePointB, intersect);
}

/*
 * Determines if the line formed by `linePiontA` and `linePointB` intersect with Triangle formed from
 * vertices `v0`, `v1`, and `v2` with normal vector `nx`, `ny`, and `nz` with plane distance from origin
 * `originDist` Outputs the intersection point at to `intersect`
 * Returns 1 if the line intersects with the triangle, 0 otherwise
 */
s32 Math3D_TriLineIntersect(Vec3f* v0, Vec3f* v1, Vec3f* v2, f32 nx, f32 ny, f32 nz, f32 originDist, Vec3f* linePointA,
                            Vec3f* linePointB, Vec3f* intersect, s32 argA) {

    if (!func_800CE15C(nx, ny, nz, originDist, linePointA, linePointB, intersect, argA)) {
        return 0;
    }

    if (((nx == 0.0f) || (func_800CD760(v0, v1, v2, nx, intersect->y, intersect->z))) &&
        ((ny == 0.0f) || (func_800CD0F0(v0, v1, v2, ny, intersect->z, intersect->x))) &&
        ((nz == 0.0f) || (func_800CDE10(v0, v1, v2, nz, intersect->x, intersect->y)))) {
        return 1;
    }

    *intersect = *linePointB;
    return 0;
}

/*
 * Creates a TriNorm output to `tri`, and calculates the normal vector and plane from vertices
 * `va`, `vb`, and `vc`
 */
void Math3D_TriNorm(TriNorm* tri, Vec3f* va, Vec3f* vb, Vec3f* vc) {
    tri->vtx[0] = *va;
    tri->vtx[1] = *vb;
    tri->vtx[2] = *vc;
    func_800CC8B4(va, vb, vc, &tri->plane.normal.x, &tri->plane.normal.y, &tri->plane.normal.z, &tri->plane.originDist);
}

/*
 * Determines if point `point` lies within `sphere`
 */
s32 Math3D_PointInSphere(Sphere16* sphere, Vec3f* point) {

    if (Math3D_DistXYZ16toF(&sphere->center, point) < sphere->radius) {
        return 1;
    }
    return 0;
}

s32 func_800CE4B8(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32* arg6) {
    static Vec3f D_8016A6B8;

    f32 temp_f0;
    f32 temp_f2;
    f32 temp_f16;
    f32 temp_f18;
    s32 ret = 0;

    temp_f2 = arg4 - arg2;
    temp_f18 = arg5 - arg3;
    temp_f16 = (temp_f2 * temp_f2) + (temp_f18 * temp_f18);
    if (fabsf(temp_f16) < 0.008f) {
        *arg6 = 0.0f;
        return 0;
    }

    temp_f0 = (((arg0 - arg2) * temp_f2) + (arg1 - arg3) * temp_f18) / temp_f16;
    if (temp_f0 >= 0.0f) {
        if (temp_f0 <= 1.0f) {
            ret = 1;
        }
    }
    D_8016A6B8.x = (temp_f2 * temp_f0) + arg2;
    D_8016A6B8.y = (temp_f18 * temp_f0) + arg3;
    *arg6 = (f32)(SQ(D_8016A6B8.x - arg0) + SQ(D_8016A6B8.y - arg1));
    return ret;
}

s32 func_800CE600(Sphere16* arg0, Linef* arg1) {
    static Vec3f D_8016A6C8;

    Vec3f t2;
    f32 temp_f0_2;
    f32 temp_f2;

    if ((Math3D_PointInSphere(arg0, &arg1->a)) || (Math3D_PointInSphere(arg0, &arg1->b))) {
        return 1;
    } else {
        t2.x = arg1->b.x - arg1->a.x;
        t2.y = arg1->b.y - arg1->a.y;
        t2.z = arg1->b.z - arg1->a.z;

        temp_f2 = SQ(t2.x) + SQ(t2.y) + SQ(t2.z);
        if (fabsf(temp_f2) < 0.008f) {
            return 0;
        }
        temp_f0_2 = ((((arg0->center.x - arg1->a.x) * t2.x) + ((arg0->center.y - arg1->a.y) * t2.y)) +
                     ((arg0->center.z - arg1->a.z) * t2.z)) /
                    temp_f2;
        if ((temp_f0_2 < 0.0f) || (1.0f < temp_f0_2)) {
            return 0;
        }

        D_8016A6C8.x = (t2.x * temp_f0_2) + arg1->a.x;
        D_8016A6C8.y = (t2.y * temp_f0_2) + arg1->a.y;
        D_8016A6C8.z = (t2.z * temp_f0_2) + arg1->a.z;

        if (SQ(D_8016A6C8.x - arg0->center.x) + SQ(D_8016A6C8.y - arg0->center.y) + SQ(D_8016A6C8.z - arg0->center.z) <=
            SQ((f32)arg0->radius)) {
            return 1;
        }
    }
    return 0;
}

void func_800CE800(Sphere16* sphere, TriNorm* tri, Vec3f* ret) {
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

s32 func_800CE934(Sphere16* arg0, TriNorm* arg1, Vec3f* arg2) {
    static Linef D_8016A6F8;
    static Vec3f D_8016A710;
    static Vec3f D_8016A720;

    f32 radius;
    f32 nx;
    f32 ny;
    f32 nz;
    f32 planeDist;

    D_8016A710.x = arg0->center.x;
    D_8016A710.y = arg0->center.y;
    D_8016A710.z = arg0->center.z;
    radius = arg0->radius;

    if (func_800CB338(&arg1->vtx[0], &arg1->vtx[1], &arg1->vtx[2], &D_8016A710, radius) == 0) {
        return 0;
    }

    planeDist = Math3D_UDistPlaneToPos(arg1->plane.normal.x, arg1->plane.normal.y, arg1->plane.normal.z,
                                       arg1->plane.originDist, &D_8016A710);
    if (radius < planeDist) {
        return 0;
    }

    D_8016A6F8.a = arg1->vtx[0];
    D_8016A6F8.b = arg1->vtx[1];

    if (func_800CE600(arg0, &D_8016A6F8)) {
        func_800CE800(arg0, arg1, arg2);
        return 1;
    }
    D_8016A6F8.a = arg1->vtx[1];
    D_8016A6F8.b = arg1->vtx[2];
    if (func_800CE600(arg0, &D_8016A6F8)) {
        func_800CE800(arg0, arg1, arg2);
        return 1;
    }
    D_8016A6F8.a = arg1->vtx[2];
    D_8016A6F8.b = arg1->vtx[0];
    if (func_800CE600(arg0, &D_8016A6F8)) {
        func_800CE800(arg0, arg1, arg2);
        return 1;
    }

    nx = arg1->plane.normal.x * planeDist;
    ny = arg1->plane.normal.y * planeDist;
    nz = arg1->plane.normal.z * planeDist;

    if (Math3D_Planef(arg1->plane.normal.x, arg1->plane.normal.y, arg1->plane.normal.z, arg1->plane.originDist,
                      &D_8016A710) > 0.0f) {
        D_8016A720.x = D_8016A710.x - nx;
        D_8016A720.y = D_8016A710.y - ny;
        D_8016A720.z = D_8016A710.z - nz;
    } else {
        D_8016A720.x = D_8016A710.x + nx;
        D_8016A720.y = D_8016A710.y + ny;
        D_8016A720.z = D_8016A710.z + nz;
    }

    if (0.5f < fabsf(arg1->plane.normal.y)) {
        if (func_800CCF00(&arg1->vtx[0], &arg1->vtx[1], &arg1->vtx[2], D_8016A720.z, D_8016A720.x, 0.0f,
                          arg1->plane.normal.y)) {
            func_800CE800(arg0, arg1, arg2);
            return 1;
        }
    } else if (0.5f < fabsf(arg1->plane.normal.x)) {
        if (func_800CD668(&arg1->vtx[0], &arg1->vtx[1], &arg1->vtx[2], D_8016A720.y, D_8016A720.z, 0.0f,
                          arg1->plane.normal.x)) {
            func_800CE800(arg0, arg1, arg2);
            return 1;
        }
    } else if (func_800CDD18(&arg1->vtx[0], &arg1->vtx[1], &arg1->vtx[2], D_8016A720.x, D_8016A720.y, 0.0f,
                             arg1->plane.normal.z)) {
        func_800CE800(arg0, arg1, arg2);
        return 1;
    }
    return 0;
}

/*
 * Checks if point `point` is within cylinder `cyl`
 * Returns 1 if the point is inside the cylinder, 0 otherwise.
 */
s32 Math3D_PointInCyl(Cylinder16* cyl, Vec3f* point) {
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

#pragma GLOBAL_ASM("asm/non_matchings/code/sys_math3d/func_800CEE0C.s")

/*
 * Determines if `cyl` and `tri` are touching.  The point of intersection
 * is placed in `intersect` Returns 1 if they are touching, 0 otherwise.
 */
s32 Math3D_CylTriTouchingIntersect(Cylinder16* cyl, TriNorm* tri, Vec3f* intersect) {
    static Sphere16 topSphere;
    static Sphere16 bottomSphere;
    static Vec3f D_8016A740;
    static Vec3f D_8016A750;

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

    cylBottom = (f32)cyl->pos.y + cyl->yShift;
    cylTop = cyl->height + cylBottom;

    // If all of the verticies are below or all of the verticies are above the cylinder.

    if (((tri->vtx[0].y < cylBottom) && (tri->vtx[1].y < cylBottom) && (tri->vtx[2].y < cylBottom)) ||
        ((cylTop < tri->vtx[0].y) && (cylTop < tri->vtx[1].y) && (cylTop < tri->vtx[2].y))) {
        return 0;
    }
    phi_f2 = 1.e38f;
    if (func_800CEE0C(cyl, &tri->vtx[0], &tri->vtx[1], &D_8016A740, &D_8016A750)) {
        phi_f2 = func_800CB650(&D_8016A740, &tri->vtx[0]);
        *intersect = D_8016A740;
    }

    if (func_800CEE0C(cyl, &tri->vtx[2], &tri->vtx[1], &D_8016A740, &D_8016A750)) {
        temp_ret = func_800CB650(&D_8016A740, &tri->vtx[2]);
        if (temp_ret < phi_f2) {
            *intersect = D_8016A740;
            phi_f2 = temp_ret;
        }
    }

    if (func_800CEE0C(cyl, &tri->vtx[0], &tri->vtx[2], &D_8016A740, &D_8016A750)) {
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

    if (Math3D_TriVtxCylTouching(&tri->vtx[0], &tri->vtx[1], &tri->vtx[2], tri->plane.normal.x, tri->plane.normal.y,
                                 tri->plane.normal.z, tri->plane.originDist, cyl->pos.z, cyl->pos.x, &sp8C, cylBottom,
                                 cylTop)) {

        sp6C.x = cyl->pos.x;
        sp6C.y = sp8C;
        sp6C.z = cyl->pos.z;

        sp60.x = (tri->vtx[0].x + tri->vtx[1].x) * 0.5f;
        sp60.y = (tri->vtx[0].y + tri->vtx[1].y) * 0.5f;
        sp60.z = (tri->vtx[0].z + tri->vtx[1].z) * 0.5f;

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

    if ((func_800CE934(&topSphere, tri, intersect)) || (func_800CE934(&bottomSphere, tri, intersect))) {
        return 1;
    }
    return 0;
}

/*
 * Returns 1 if `cyl` and `tri` and touching
 */
s32 Math3D_CylTriTouching(Cylinder16* cyl, TriNorm* tri) {
    Vec3f intersect;

    return Math3D_CylTriTouchingIntersect(cyl, tri, &intersect);
}

/*
 * Deteremines if two spheres are touching.  Returns 1 if their closest surface point
 * is within 0.008f units. 0 otherwise.
 */
s32 Math3D_SpheresTouching(Sphere16* sphereA, Sphere16* sphereB) {
    f32 surfaceDist;

    return Math3D_SpheresTouchingSurface(sphereA, sphereB, &surfaceDist);
}

/*
 * Determines if two spheres are within 0.008 units of each other.  The distance from
 * the closest point on the surface is placed in `surfaceDist`  Returns 1 if the surfaces
 * are not touching.  Returns 0 otherwise.
 */
s32 Math3D_SpheresTouchingSurface(Sphere16* sphereA, Sphere16* sphereB, f32* surfaceDist) {
    f32 centerDist;

    return Math3D_SpheresTouchingSurfaceCenter(sphereA, sphereB, surfaceDist, &centerDist);
}

/*
 * Determines if two spheres are within 0.008f units of each other.  The distance from
 * the centers is placed in `centerDist` and the closest distance to their surfaces is placed
 * in `surfaceDist` Returns 1 if the surfaces are not touching.  Returns 0 otherwise.
 */
s32 Math3D_SpheresTouchingSurfaceCenter(Sphere16* sphereA, Sphere16* sphereB, f32* surfaceDist, f32* centerDist) {
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

s32 func_800CFDA4(Sphere16* sph, Cylinder16* cyl, f32* surfaceDist, f32* centerDist) {
    static Cylinderf cylf;
    static Spheref sphf;

    f32 x;
    f32 z;
    f32 rad;
    f32 cylBottom;
    f32 cylTop;
    f32 sphBottom;
    f32 sphTop;

    if (sph->radius <= 0 || cyl->radius <= 0) {
        return 0;
    }
    sphf.center.y = sph->center.y;
    sphf.radius = sph->radius;
    cylf.pos.y = cyl->pos.y;
    cylf.yShift = cyl->yShift;
    cylf.height = cyl->height;
    x = (f32)sph->center.x - cyl->pos.x;
    z = (f32)sph->center.z - cyl->pos.z;
    rad = (f32)sph->radius + cyl->radius;
    *centerDist = sqrtf(SQ(x) + SQ(z));
    if (rad < *centerDist) {
        return 0;
    }

    cylBottom = (cylf.pos.y + cylf.yShift);
    cylTop = cylBottom + cylf.height;
    sphBottom = sphf.center.y - sphf.radius;
    sphTop = sphf.center.y + sphf.radius;

    if ((sphTop >= cylBottom) && (sphBottom <= cylTop)) {
        *surfaceDist = rad - *centerDist;
        return 1;
    }
    return 0;
}

/*
 * returns 1 if cylinder `ca` is outside cylinder `cb`.
 * Sets `deadSpace` to the mininum space between the cylinders not occupied by the other.
 */
s32 Math3D_CylinderOutCylinder(Cylinder16* ca, Cylinder16* cb, f32* deadSpace) {
    f32 xzDist;

    Math3D_CylinderOutCylinderDist(ca, cb, deadSpace, &xzDist);
}

/*
 * returns 1 if cylinder `ca` is outside cylinder `cb`.
 * Sets `xzDist` to the xz distance between the centers of the cylinders.
 * Sets `deadSpace` to the mininum space between the cylinders not occupied by the other.
 */
s32 Math3D_CylinderOutCylinderDist(Cylinder16* ca, Cylinder16* cb, f32* deadSpace, f32* xzDist) {
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

/*
 * Determines if triangle `ta` intersects with triangle `tb` the point of
 * intersection is output to `intersect.
 * Returns 1 is the triangles intersect, 0 otherwise
 */

s32 Math3D_TrisIntersect(TriNorm* ta, TriNorm* tb, Vec3f* intersect) {
    f32 dist0;
    f32 dist1;
    f32 dist2;

    dist0 = Math3D_Plane(&ta->plane, &tb->vtx[0]);
    dist1 = Math3D_Plane(&ta->plane, &tb->vtx[1]);
    dist2 = Math3D_Plane(&ta->plane, &tb->vtx[2]);

    if (((dist0 > 0.0f) && (dist1 > 0.0f) && (dist2 > 0.0f)) ||
        (((dist0 < 0.0f) && (dist1 < 0.0f)) && (dist2 < 0.0f))) {
        return 0;
    }

    dist0 = Math3D_Plane(&tb->plane, &ta->vtx[0]);
    dist1 = Math3D_Plane(&tb->plane, &ta->vtx[1]);
    dist2 = Math3D_Plane(&tb->plane, &ta->vtx[2]);

    if ((((dist0 > 0.0f) && (dist1 > 0.0f)) && (dist2 > 0.0f)) ||
        ((dist0 < 0.0f) && (dist1 < 0.0f) && (dist2 < 0.0f))) {
        return 0;
    }

    if (Math3D_TriLineIntersect(&tb->vtx[0], &tb->vtx[1], &tb->vtx[2], tb->plane.normal.x, tb->plane.normal.y,
                                tb->plane.normal.z, tb->plane.originDist, &ta->vtx[0], &ta->vtx[1], intersect, 0)) {
        return 1;
    }
    if (Math3D_TriLineIntersect(&tb->vtx[0], &tb->vtx[1], &tb->vtx[2], tb->plane.normal.x, tb->plane.normal.y,
                                tb->plane.normal.z, tb->plane.originDist, &ta->vtx[1], &ta->vtx[2], intersect, 0)) {
        return 1;
    }
    if (Math3D_TriLineIntersect(&tb->vtx[0], &tb->vtx[1], &tb->vtx[2], tb->plane.normal.x, tb->plane.normal.y,
                                tb->plane.normal.z, tb->plane.originDist, &ta->vtx[2], &ta->vtx[0], intersect, 0)) {
        return 1;
    }
    if (Math3D_TriLineIntersect(&ta->vtx[0], &ta->vtx[1], &ta->vtx[2], ta->plane.normal.x, ta->plane.normal.y,
                                ta->plane.normal.z, ta->plane.originDist, &tb->vtx[0], &tb->vtx[1], intersect,
                                0) == 1) {
        return 1;
    }
    if (Math3D_TriLineIntersect(&ta->vtx[0], &ta->vtx[1], &ta->vtx[2], ta->plane.normal.x, ta->plane.normal.y,
                                ta->plane.normal.z, ta->plane.originDist, &tb->vtx[1], &tb->vtx[2], intersect,
                                0) == 1) {
        return 1;
    }
    if (Math3D_TriLineIntersect(&ta->vtx[0], &ta->vtx[1], &ta->vtx[2], ta->plane.normal.x, ta->plane.normal.y,
                                ta->plane.normal.z, ta->plane.originDist, &tb->vtx[2], &tb->vtx[0], intersect,
                                0) == 1) {
        return 1;
    }
    return 0;
}

s32 func_800D0480(Sphere16* arg0, f32 arg1, f32 arg2) {
    f32 temp_f0;
    f32 temp_f2;

    temp_f0 = arg0->center.x - arg1;
    temp_f2 = arg0->center.z - arg2;
    if ((SQ(temp_f0) + SQ(temp_f2)) <= SQ(arg0->radius)) {
        return 1;
    }
    return 0;
}

s32 func_800D04F0(Sphere16* arg0, f32 arg1, f32 arg2) {
    f32 temp_f0;
    f32 temp_f2;

    temp_f0 = arg0->center.x - arg1;
    temp_f2 = arg0->center.y - arg2;
    if ((SQ(temp_f0) + SQ(temp_f2)) <= SQ(arg0->radius)) {
        return 1;
    }
    return 0;
}

s32 func_800D0560(Sphere16* arg0, f32 arg1, f32 arg2) {
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
