#include <ultra64.h>
#include <global.h>
#include <padmgr.h>

extern u8 D_80160FD0[];
extern PadMgr gPadMgr;

void func_800A9F30(s32 a, s32 b) {
    func_800D2E30(&D_80160FD0);
    func_800C7948(a, &D_80160FD0);
}

void func_800A9F6C(f32 a, u8 b, u8 c, u8 d) {
    s32 temp1, temp2;

    if (1000000.0f < a) {
        temp1 = 1000;
    } else {
        temp1 = sqrtf(a);
    }

    if ((temp1 < 1000) && (b != 0) && (d != 0)) {
        temp2 = b - (temp1 * 255) / 1000;
        if (temp2 > 0) {
            D_801610DA = temp2;
            D_80160FD0[0x10B] = c;
            D_80160FD0[0x10C] = d;
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800A9F30/func_800AA000.s")
// this function is very similar to the one above but has a loop in it I can't figure out

void func_800AA0B4(void) {
    func_800D3140(&D_80160FD0);

    gPadMgr.unk_460 = func_800A9F30;
    gPadMgr.unk_464 = 0;

    if (0) {} // Necessary to match
}

void func_800AA0F0(void) {
    PadMgr* padmgr = &gPadMgr;

    if ((padmgr->unk_460 == func_800A9F30) && (padmgr->unk_464 == 0)) {
        padmgr->unk_460 = NULL;
        padmgr->unk_464 = 0;
    }

    func_800D3178(&D_80160FD0);
}

u32 func_800AA148(void) {
    return ((gPadMgr.unk_2AE[0] ^ 1) == 0);
}

void func_800AA15C(void) {
    D_801610D4 = 2;
}

void func_800AA16C(void) {
    D_801610D4 = 0;
}

void func_800AA178(u32 a) {
    D_801610D5 = !!a;
}
