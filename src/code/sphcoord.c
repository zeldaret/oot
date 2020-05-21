#include <ultra64.h>
#include <global.h>

/*
 * Calculates the magintude of the vector formed from `a`-`b`
 * returns the magnitude of vector `a`-`b`
*/
f32 SphCoord_Vec3fDist(Vec3f* a, Vec3f* b) {
    f32 dx = a->x - b->x;
    f32 dy = a->y - b->y;
    f32 dz = a->z - b->z;

    return sqrtf(SQ(dx) + SQ(dy) + SQ(dz));
}

/*
 * Calculates the magintude of the vector formed from `a`-`b`
 * outputs the vector `a`-`b` to `dest`
 * returns the magnitude of vector `a`-`b`
*/
f32 SphCoord_Vec3fDiffDist(Vec3f* a, Vec3f* b, Vec3f* dest) {
    dest->x = a->x - b->x;
    dest->y = a->y - b->y;
    dest->z = a->z - b->z;

    return sqrtf(SQ(dest->x) + SQ(dest->y) + SQ(dest->z));
}

/*
 * Calculates the xz distance of the vector formed from `a`-`b`
 * returns the xz distance of vector `a`-`b`
*/
f32 SphCoord_XZDistDiff(Vec3f* a, Vec3f* b) {
    return sqrtf(SQ(a->x - b->x) + SQ(a->z - b->z));
}

/*
 * Returns the maximum absolute value between `a` and `b`
*/
f32 SphCoord_MaxAbsf(f32 a, f32 b) {
    return (b <= fabsf(a)) ? a : ((a >= 0) ? b : -b);
}

/*
 * Returns the minimum absolute value between `a` and `b`
*/
f32 SphCoord_MinAbsf(f32 arg0, f32 arg1) {
    return (fabsf(arg0) <= arg1) ? arg0 : ((arg0 >= 0) ? arg1 : -arg1);
}

/*
 * Normalizes the vector `a`-`b` and stores the result in `dest`
 * Sets the minimum normal distance to 0.01f
*/
Vec3f* SphCoord_NormalizeDiff(Vec3f* dest, Vec3f* a, Vec3f* b) {
    Vec3f diff;
    Vec3f norm;
    f32 normDist;

    diff.x = b->x - a->x;
    diff.y = b->y - a->y;
    diff.z = b->z - a->z;

    normDist = SphCoord_MaxAbsf(sqrtf(SQ(diff.x) + SQ(diff.y) + SQ(diff.z)), 0.01f);

    norm.x = diff.x / normDist;
    norm.y = diff.y / normDist;
    norm.z = diff.z / normDist;

    *dest = norm;

    return dest;
}

/*
 * Converts spherical coordinates `sph` to cartesian coordinates `dest`
 * Returns `dest`
*/
Vec3f* SphCoord_SphToVec3f(Vec3f* dest, VecSph* sph) {
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

/*
 * Converts spherical coordinates `sph` to cartestian coordinates `dest`
 * rotates polar angle by 90 degrees clockwise.
 * returns `dest`
*/
Vec3f* SphCoord_SphToVec3fRot90(Vec3f* dest, VecSph* arg1) {
    VecSph var;

    var.r = arg1->r;
    var.phi = 0x3FFF - arg1->phi;
    var.theta = arg1->theta;

    return SphCoord_SphToVec3f(dest, &var);
}

/*
 * Converts cartesian coordinates `cartCoords` to spherical coordates `dest`
 * returns `dest`
*/
VecSph* SphCoord_Vec3fToSph(VecSph* dest, Vec3f* cartCoords) {
    VecSph sph;

    f32 distSquared;
    f32 dist;

    distSquared = SQ(cartCoords->x) + SQ(cartCoords->z);
    dist = sqrtf(distSquared);

    if ((dist == 0.0f) && (cartCoords->y == 0.0f)) {
        sph.phi = 0;
    } else {
        sph.phi = Math_atan2f(dist, cartCoords->y) * (180.0f / M_PI) * (65535.0f / 360.0f) + 0.5f;
    }

    sph.r = sqrtf(SQ(cartCoords->y) + distSquared);
    if ((cartCoords->x == 0.0f) && (cartCoords->z == 0.0f)) {
        sph.theta = 0;
    } else {
        sph.theta = Math_atan2f(cartCoords->x, cartCoords->z) * (180.0f / M_PI) * (65535.0f / 360.0f) + 0.5f;
    }

    *dest = sph;

    return dest;
}

/*
 * Converts cartesian coordinates `cartCoords` to spherical coordates `dest`
 * rotates `dest` polar angle by 90 degrees clockwise.
 * returns `dest`
*/
VecSph* SphCoord_Vec3fToSphRot90(VecSph* dest, Vec3f* cartCoords) {
    VecSph sph;

    SphCoord_Vec3fToSph(&sph, cartCoords);
    sph.phi = 0x3FFF - sph.phi;

    *dest = sph;

    return dest;
}

/*
 * Subtracts the vectors `a` and `b` and converts the resulting vector into
 * spherical coordinates `dest`
 * returns `dest`
*/
Vec3f* SphCoord_Vec3fToSphDiff(VecSph* dest, Vec3f* a, Vec3f* b) {
    Vec3f diff;

    diff.x = b->x - a->x;
    diff.y = b->y - a->y;
    diff.z = b->z - a->z;

    return SphCoord_Vec3fToSph(dest, &diff);
}

/*
 * Subtracts the vectors `a` and `b` and converts the resulting vector into
 * spherical coordinates `dest`, rotates `dest` polar angle by 90 degrees clockwise.
 * returns `dest`
*/
VecSph* SphCoord_Vec3fToSphDiffRot90(VecSph* dest, Vec3f* a, Vec3f* b) {
    Vec3f diff;

    diff.x = b->x - a->x;
    diff.y = b->y - a->y;
    diff.z = b->z - a->z;

    return SphCoord_Vec3fToSphRot90(dest, &diff);
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

    sp18.x = sp24.x * (180.0f / M_PI);
    sp18.y = sp24.y * (180.0f / M_PI);
    sp18.z = 0.0f;

    *arg0 = sp18;

    return arg0;
}

Vec3s* func_8007C5E0(Vec3s* arg0, Vec3f* arg1, Vec3f* arg2) {
    Vec3f sp24;
    Vec3s sp18;

    func_8007C4E0(&sp24, arg1, arg2);

    sp18.x = (((sp24.x * (180.0f / M_PI))) * (65535.0f / 360.0f)) + 0.5f;
    sp18.y = (((sp24.y * (180.0f / M_PI))) * (65535.0f / 360.0f)) + 0.5f;
    sp18.z = 0.0f;

    *arg0 = sp18;

    return arg0;
}
