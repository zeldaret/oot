#include <ultra64.h>
#include <global.h>

f32 OLib_Vec3fDist(Vec3f* a, Vec3f* b) {
    f32 dx = a->x - b->x;
    f32 dy = a->y - b->y;
    f32 dz = a->z - b->z;

    return sqrtf(SQ(dx) + SQ(dy) + SQ(dz));
}

f32 OLib_Vec3fDistOutDiff(Vec3f* a, Vec3f* b, Vec3f* dest) {
    dest->x = a->x - b->x;
    dest->y = a->y - b->y;
    dest->z = a->z - b->z;

    return sqrtf(SQ(dest->x) + SQ(dest->y) + SQ(dest->z));
}

f32 OLib_Vec3fDistXZ(Vec3f* a, Vec3f* b) {
    return sqrtf(SQ(a->x - b->x) + SQ(a->z - b->z));
}

f32 func_8007C058(f32 arg0, f32 arg1) {
    return (arg1 <= fabsf(arg0)) ? arg0 : ((arg0 >= 0) ? arg1 : -arg1);
}

f32 func_8007C0A8(f32 arg0, f32 arg1) {
    return (fabsf(arg0) <= arg1) ? arg0 : ((arg0 >= 0) ? arg1 : -arg1);
}

Vec3f* OLib_Vec3fDistNormalize(Vec3f* dest, Vec3f* a, Vec3f* b) {
    Vec3f v1;
    Vec3f v2;
    f32 temp;

    v1.x = b->x - a->x;
    v1.y = b->y - a->y;
    v1.z = b->z - a->z;

    temp = func_8007C058(sqrtf(SQ(v1.x) + SQ(v1.y) + SQ(v1.z)), 0.01f);

    v2.x = v1.x / temp;
    v2.y = v1.y / temp;
    v2.z = v1.z / temp;

    *dest = v2;

    return dest;
}

Vec3f* OLib_VecSphToVec3f(Vec3f* dest, VecSph* sph) {
    Vec3f v;
    f32 sinPhi;
    f32 cosPhi;
    f32 sinTheta;
    f32 cosTheta;

    cosPhi = Math_Coss(sph->phi);
    cosTheta = Math_Coss(sph->theta);
    sinPhi = Math_Sins(sph->phi);
    sinTheta = Math_Sins(sph->theta);

    v.x = sph->r * sinPhi * sinTheta;
    v.y = sph->r * cosPhi;
    v.z = sph->r * sinPhi * cosTheta;

    *dest = v;

    return dest;
}

void OLib_VecSphRot90ToVec3f(Vec3f* dest, VecSph* sph) {
    VecSph src;

    src.r = sph->r;
    src.phi = 0x3FFF - sph->phi;
    src.theta = sph->theta;

    OLib_VecSphToVec3f(dest, &src);
}

VecSph* OLib_Vec3fToVecSph(VecSph* dest, Vec3f* vec) {
    VecSph sph;

    f32 distSquared;
    f32 dist;

    distSquared = SQ(vec->x) + SQ(vec->z);
    dist = sqrtf(distSquared);

    if ((dist == 0.0f) && (vec->y == 0.0f)) {
        sph.phi = 0;
    } else {
        sph.phi = Math_atan2f(dist, vec->y) * 57.295776f * 182.04167f + 0.5f;
    }

    sph.r = sqrtf(SQ(vec->y) + distSquared);
    if ((vec->x == 0.0f) && (vec->z == 0.0f)) {
        sph.theta = 0;
    } else {
        sph.theta = Math_atan2f(vec->x, vec->z) * 57.295776f * 182.04167f + 0.5f;
    }

    *dest = sph;

    return dest;
}

VecSph* OLib_Vec3fToVecSphRot90(VecSph* dest, Vec3f* vec) {
    VecSph sph;

    OLib_Vec3fToVecSph(&sph, vec);
    sph.phi = 0x3FFF - sph.phi;

    *dest = sph;

    return dest;
}

VecSph* OLib_Vec3fDiffToVecSph(VecSph* dest, Vec3f* a, Vec3f* b) {
    Vec3f sph;

    sph.x = b->x - a->x;
    sph.y = b->y - a->y;
    sph.z = b->z - a->z;

    return OLib_Vec3fToVecSph(dest, &sph);
}

VecSph* OLib_Vec3fDiffToVecSphRot90(VecSph* dest, Vec3f* a, Vec3f* b) {
    Vec3f sph;

    sph.x = b->x - a->x;
    sph.y = b->y - a->y;
    sph.z = b->z - a->z;

    return OLib_Vec3fToVecSphRot90(dest, &sph);
}

Vec3f* func_8007C4E0(Vec3f* dest, Vec3f* a, Vec3f* b) {
    Vec3f var;

    var.x = Math_atan2f(b->z - a->z, b->y - a->y);
    var.y = Math_atan2f(b->x - a->x, b->z - a->z);
    var.z = 0;

    *dest = var;

    return dest;
}

Vec3f* func_8007C574(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2) {
    Vec3f sp24;
    Vec3f sp18;

    func_8007C4E0(&sp24, arg1, arg2);

    // ~180 / pi
    sp18.x = sp24.x * 57.295776f;
    sp18.y = sp24.y * 57.295776f;
    sp18.z = 0.0f;

    *arg0 = sp18;

    return arg0;
}

Vec3s* func_8007C5E0(Vec3s* arg0, Vec3f* arg1, Vec3f* arg2) {
    Vec3f sp24;
    Vec3s sp18;

    func_8007C4E0(&sp24, arg1, arg2);

    sp18.x = (((sp24.x * 57.295776f)) * 182.04167f) + 0.5f;
    sp18.y = (((sp24.y * 57.295776f)) * 182.04167f) + 0.5f;
    sp18.z = 0.0f;

    *arg0 = sp18;

    return arg0;
}
