#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x00 */ char unk_00[0x18];
    /* 0x18 */ s32 unk_18;
    /* 0x1C */ s32 unk_1C;
} struct_801664D0; // size = 0x20

extern struct_801664D0 D_801664D0;

void func_800C9940(struct_801664D0* arg0, u32 arg1, u32 arg2) {
    LogUtils_CheckNullPointer("this", arg0, "../speed_meter.c", 181);
    arg0->unk_18 = arg1;
    arg0->unk_1C = arg2;
}

void func_800C9998(struct_801664D0* arg0) {
    func_800C9940(arg0, 0x20, 0x16);
}

void func_800C99BC(struct_801664D0* arg0) {
}

#pragma GLOBAL_ASM("asm/non_matchings/code/speed_meter/func_800C99C4.s")

typedef struct {
    /* 0x00 */ u32 unk_00;
    /* 0x04 */ u32 unk_04;
    /* 0x08 */ u16 unk_08;
    /* 0x0A */ u16 unk_0A;
    /* 0x0C */ u32 unk_0C;
    /* 0x10 */ u32 unk_10;
    /* 0x14 */ u32 unk_14;
    /* 0x18 */ u32 unk_18;
} struct_800C9E08;

void func_800C9E08(struct_800C9E08* arg0, u32 arg1, u32 arg2, u16 arg3, u16 arg4, u32 arg5, u32 arg6, u32 arg7,
                   u32 arg8) {
    arg0->unk_00 = arg1;
    arg0->unk_04 = arg2;
    arg0->unk_08 = arg3;
    arg0->unk_0A = arg4;
    arg0->unk_0C = arg5;
    arg0->unk_10 = arg6;
    arg0->unk_14 = arg7;
    arg0->unk_18 = arg8;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/speed_meter/func_800C9E44.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/speed_meter/func_800CA104.s")
