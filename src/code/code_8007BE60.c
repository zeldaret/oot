#include <ultra64.h>
#include <global.h>

extern u32 osResetType;

/*
void func_8007BE60(u32* a0)
{
    u32 var1;

    //*a0 = 0;

    if (osResetType == 0)
    {
        a0[1] = 0;
        a0[2] = 0;
        a0[3] = 0;
    }
    else
    {
        var1 = a0[3] + a0[5];
        a0[1]++;
        a0[2] = (var1 < a0[5]) + a0[2] + a0[4];
        a0[3] = var1;
    }

    a0[5] = 0;
    a0[4] = 0;
}
*/

#pragma GLOBAL_ASM("asm/non_matchings/code/code_8007BE60/func_8007BE60.s")

typedef struct
{
    /* 0x00 */ u32    unk_00;
    /* 0x04 */ char   unk_04[0x0C];
    /* 0x10 */ OSTime unk_10;
} struct_8007BED4;

void func_8007BED4(struct_8007BED4* arg0)
{
    arg0->unk_00 = 1;
    arg0->unk_10 = osGetTime();
}

u32 func_8007BF08(struct_8007BED4* arg0)
{
    return arg0->unk_00;
}
