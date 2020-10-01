#include <ultra64.h>
#include <global.h>

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F9280/func_800F9280.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F9280/func_800F9474.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F9280/func_800F94FC.s")

extern u32 D_8016E350[0x100];
extern u8 D_80133400;

void Audio_SetBGM(u32 bgmID) {
    D_8016E350[D_80133400] = bgmID;
    D_80133400++;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F9280/func_800FA034.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F9280/func_800FA0B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F9280/func_800FA11C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F9280/func_800FA174.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F9280/func_800FA18C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F9280/func_800FA240.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F9280/func_800FA3DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F9280/func_800FAD34.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F9280/func_800FADF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F9280/func_800FAEB4.s")
