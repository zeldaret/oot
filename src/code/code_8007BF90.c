#include <ultra64.h>
#include <global.h>

Vec3f* func_8007C1AC(Vec3f* dest, VecSph* arg1);

f32 func_8007BF90(Vec3f* a, Vec3f* b) {
    f32 dx = a->x - b->x;
    f32 dy = a->y - b->y;
    f32 dz = a->z - b->z;

    return sqrtf(SQ(dx) + SQ(dy) + SQ(dz));
}

f32 func_8007BFD0(Vec3f* a, Vec3f* b, Vec3f* dest) {
    dest->x = a->x - b->x;
    dest->y = a->y - b->y;
    dest->z = a->z - b->z;

    return sqrtf(SQ(dest->x) + SQ(dest->y) + SQ(dest->z));
}

f32 func_8007C028(Vec3f* a, Vec3f* b) {
    return sqrtf(SQ(a->x - b->x) + SQ(a->z - b->z));
}

f32 func_8007C058(f32 arg0, f32 arg1) {
    return (arg1 <= fabsf(arg0)) ? arg0 : ((arg0 >= 0) ? arg1 : -arg1);
}

f32 func_8007C0A8(f32 arg0, f32 arg1) {
    return (fabsf(arg0) <= arg1) ? arg0 : ((arg0 >= 0) ? arg1 : -arg1);
}

Vec3f* func_8007C0F8(Vec3f* dest, Vec3f* a, Vec3f* b) {
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

Vec3f* func_8007C1AC(Vec3f* dest, VecSph* arg1) {
    Vec3f v;
    f32 sin4;
    f32 cos4;
    f32 sin6;
    f32 cos6;

    cos4 = Math_Coss(arg1->phi);
    cos6 = Math_Coss(arg1->theta);
    sin4 = Math_Sins(arg1->phi);
    sin6 = Math_Sins(arg1->theta);

    v.x = arg1->r * sin4 * sin6;
    v.y = arg1->r * cos4;
    v.z = arg1->r * sin4 * cos6;

    *dest = v;

    return dest;
}

void func_8007C25C(Vec3f* dest, VecSph* arg1) {
    VecSph var;

    var.r = arg1->r;
    var.phi = 0x3FFF - arg1->phi;
    var.theta = arg1->theta;

    func_8007C1AC(dest, &var);
}

VecSph* func_8007C29C(VecSph* arg0, Vec3f* arg1) {
    VecSph sp28;

    f32 distSquared;
    f32 dist;

    distSquared = SQ(arg1->x) + SQ(arg1->z);
    dist = sqrtf(distSquared);

    if ((dist == 0.0f) && (arg1->y == 0.0f)) {
        sp28.phi = 0;
    } else {
        sp28.phi = Math_atan2f(dist, arg1->y) * 57.295776f * 182.04167f + 0.5f;
    }

    sp28.r = sqrtf(SQ(arg1->y) + distSquared);
    if ((arg1->x == 0.0f) && (arg1->z == 0.0f)) {
        sp28.theta = 0;
    } else {
        sp28.theta = Math_atan2f(arg1->x, arg1->z) * 57.295776f * 182.04167f + 0.5f;
    }

    *arg0 = sp28;

    return arg0;
}

VecSph* func_8007C3F4(VecSph* arg0, Vec3f* arg1) {
    VecSph sp18;

    func_8007C29C(&sp18, arg1);
    sp18.phi = 0x3FFF - sp18.phi;

    *arg0 = sp18;

    return arg0;
}

void func_8007C440(VecSph* arg0, Vec3f* a, Vec3f* b) {
    Vec3f var;

    var.x = b->x - a->x;
    var.y = b->y - a->y;
    var.z = b->z - a->z;

    func_8007C29C(arg0, &var);
}

void func_8007C490(VecSph* arg0, Vec3f* a, Vec3f* b) {
    Vec3f var;

    var.x = b->x - a->x;
    var.y = b->y - a->y;
    var.z = b->z - a->z;

    func_8007C3F4(arg0, &var);
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
