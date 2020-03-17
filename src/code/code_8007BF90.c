#include <ultra64.h>
#include <global.h>

void func_8007C1AC(Vec3f* dest, struct_80045714* arg1);

f32 func_8007BF90(Vec3f* a, Vec3f* b)
{
    f32 dx = a->x - b->x;
    f32 dy = a->y - b->y;
    f32 dz = a->z - b->z;

    return sqrtf(SQ(dx) + SQ(dy) + SQ(dz));
}

f32 func_8007BFD0(Vec3f* a, Vec3f* b, Vec3f* dest)
{
    dest->x = a->x - b->x;
    dest->y = a->y - b->y;
    dest->z = a->z - b->z;

    return sqrtf(SQ(dest->x) + SQ(dest->y) + SQ(dest->z));
}

f32 func_8007C028(Vec3f* a, Vec3f* b)
{
    return sqrtf(SQ(a->x - b->x) + SQ(a->z - b->z));
}

f32 func_8007C058(f32 arg0, f32 arg1)
{
    return (arg1 <= fabsf(arg0)) ? arg0 : ((arg0 >= 0) ? arg1 : -arg1);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_8007BF90/func_8007C0A8.s")

#ifdef NON_MATCHING
void func_8007C0F8(Vec3f* dest, Vec3f* a, Vec3f* b)
{
    f32 fVar1;
    Vec3f v;

    v.x = b->x - a->x;
    v.y = b->y - a->y;
    v.z = b->z - a->z;

    fVar1 = func_8007C058(sqrtf(v.x * v.x + v.y * v.y + v.z * v.z), D_8013CB80);

    dest->x = v.x / fVar1;
    dest->y = v.y / fVar1;
    dest->z = v.z / fVar1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_8007BF90/func_8007C0F8.s")
#endif

#ifdef NON_MATCHING
void func_8007C1AC(Vec3f* dest, struct_80045714* arg1)
{
    f32 fVar1;
    f32 fVar2;
    f32 fVar3;
    f32 fVar4;
    f32 fVar5;
    f32 fVar6;

    fVar1 = Math_Coss(arg1->unk_04);
    fVar2 = Math_Coss(arg1->unk_06);
    fVar3 = Math_Coss(arg1->unk_04);
    fVar4 = Math_Coss(arg1->unk_06);
    fVar6 = arg1->unk_00;
    fVar5 = arg1->unk_00;
    dest->x = arg1->unk_00 * fVar3 * fVar4;
    dest->y = fVar6 * fVar1;
    dest->z = fVar5 * fVar3 * fVar2;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_8007BF90/func_8007C1AC.s")
#endif

void func_8007C3F4(struct_80045714* arg0, Vec3f* arg1);

void func_8007C25C(Vec3f* dest, struct_80045714* arg1)
{
    struct_80045714 var;

    var.unk_00 = arg1->unk_00;
    var.unk_04 = 0x3FFF - arg1->unk_04;
    var.unk_06 = arg1->unk_06;

    func_8007C1AC(dest, &var);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_8007BF90/func_8007C29C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_8007BF90/func_8007C3F4.s")

void func_8007C29C(struct_80045714* arg0, Vec3f* arg1);

void func_8007C440(struct_80045714* arg0, Vec3f* a, Vec3f* b)
{
    Vec3f var;

    var.x = b->x - a->x;
    var.y = b->y - a->y;
    var.z = b->z - a->z;

    func_8007C29C(arg0, &var);
}

void func_8007C490(struct_80045714* arg0, Vec3f* a, Vec3f* b)
{
    Vec3f var;

    var.x = b->x - a->x;
    var.y = b->y - a->y;
    var.z = b->z - a->z;

    func_8007C3F4(arg0, &var);
}

Vec3f* func_8007C4E0(Vec3f* dest, Vec3f* a, Vec3f* b)
{
    Vec3f var;

    var.x = func_800FD250(b->z - a->z, b->y - a->y);
    var.y = func_800FD250(b->x - a->x, b->z - a->z);
    var.z = 0;

    *dest = var;

    return dest;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_8007BF90/func_8007C574.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_8007BF90/func_8007C5E0.s")

