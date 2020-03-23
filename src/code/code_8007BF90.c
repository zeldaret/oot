#include <ultra64.h>
#include <global.h>

Vec3f* func_8007C1AC(Vec3f* dest, struct_80045714* arg1);

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

#pragma GLOBAL_ASM("asm/non_matchings/code/code_8007BF90/func_8007C0A8.s")

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

Vec3f* func_8007C1AC(Vec3f* dest, struct_80045714* arg1) {
    Vec3f v;
    f32 sin4;
    f32 cos4;
    f32 sin6;
    f32 cos6;

    cos4 = Math_Coss(arg1->unk_04);
    cos6 = Math_Coss(arg1->unk_06);
    sin4 = Math_Sins(arg1->unk_04);
    sin6 = Math_Sins(arg1->unk_06);

    v.x = arg1->unk_00 * sin4 * sin6;
    v.y = arg1->unk_00 * cos4;
    v.z = arg1->unk_00 * sin4 * cos6;

    *dest = v;

    return dest;
}

void func_8007C3F4(struct_80045714* arg0, Vec3f* arg1);

void func_8007C25C(Vec3f* dest, struct_80045714* arg1) {
    struct_80045714 var;

    var.unk_00 = arg1->unk_00;
    var.unk_04 = 0x3FFF - arg1->unk_04;
    var.unk_06 = arg1->unk_06;

    func_8007C1AC(dest, &var);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_8007BF90/func_8007C29C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_8007BF90/func_8007C3F4.s")

void func_8007C29C(struct_80045714* arg0, Vec3f* arg1);

void func_8007C440(struct_80045714* arg0, Vec3f* a, Vec3f* b) {
    Vec3f var;

    var.x = b->x - a->x;
    var.y = b->y - a->y;
    var.z = b->z - a->z;

    func_8007C29C(arg0, &var);
}

void func_8007C490(struct_80045714* arg0, Vec3f* a, Vec3f* b) {
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

#pragma GLOBAL_ASM("asm/non_matchings/code/code_8007BF90/func_8007C574.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_8007BF90/func_8007C5E0.s")
