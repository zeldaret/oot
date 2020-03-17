#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x00 */ u32 unk_00;
    /* 0x04 */ u32 unk_04;
    /* 0x08 */ s16 unk_08;
    /* 0x0A */ s16 unk_0A;
} struct_8007C820;

#pragma GLOBAL_ASM("asm/non_matchings/code/z_onepointdemo/func_8007C680.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_onepointdemo/func_8007C704.s")

void func_8007C76C(f32* pfParm1, s16 *puParm2)
{
  puParm2[0] = pfParm1[0];
  puParm2[1] = pfParm1[1];
  puParm2[2] = pfParm1[2];
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_onepointdemo/func_8007C7A8.s")

void func_8007C7F8(u32 uParm1, u32 uParm2)
{
  u8 auStack4[4];
  u8 auStack8[4];
  
  func_8003C940(uParm1, auStack4, auStack8, uParm2);
}

void func_8007C820(struct_8007C820* puParm1, s16 uParm2, s16 uParm3, u32 uParm4, u32 param_5)
{
  puParm1->unk_00 = uParm4;
  puParm1->unk_04 = param_5;
  puParm1->unk_08 = uParm2;
  puParm1->unk_0A = uParm3;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_onepointdemo/func_8007C850.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_onepointdemo/func_8007FFE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_onepointdemo/func_80080024.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_onepointdemo/func_800800F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_onepointdemo/func_800803F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_onepointdemo/func_80080480.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_onepointdemo/func_800806BC.s")

void func_8008070C()
{
    D_80120130 = 0;
}

void func_80080718()
{
    D_80120130 = 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_onepointdemo/func_80080728.s")

void func_80080788(UNK_TYPE arg0, UNK_TYPE arg1)
{
}
