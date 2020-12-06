#include "ultra64.h"
#include "global.h"

// like audio_load in sm64, but completely rewritten

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E11F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E12DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E1618.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/Audio_IsBankLoadComplete.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/Audio_IsSeqLoadComplete.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E19A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/Audio_SetBankLoadStatus.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/Audio_SetSeqLoadStatus.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E1A78.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E1AD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E1B08.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E1B68.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E1C18.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E1C78.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E1D64.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E1E34.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E1E6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E1EB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E1EF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E1F38.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E1F7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E202C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E20D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E2124.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E217C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E22C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E2318.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E2338.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E2454.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E2558.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E2768.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E27A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E27F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E283C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E2AA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E2BCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E2BE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E2CB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E2CC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E2CE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E2FEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E301C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E3028.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E3034.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E3094.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E3400.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E3414.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E35E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E3670.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E3678.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E36EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E3874.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E38F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E390C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E3A14.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E3A44.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E3AC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E3BEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E3D10.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E3D1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E3E58.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E3FB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E4044.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E4058.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E4198.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E4590.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E4744.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E478C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E48C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E4918.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E4D94.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E4ED4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E4EDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E4EE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E4EEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E4F58.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E4FB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E4FE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E5000.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E5584.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E5958.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E59AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E59F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E5A8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E5AD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E5AFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E5B20.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E5B50.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E5B80.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E5C10.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E5C28.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E5D6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E5E20.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E5E84.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E5EA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E5EDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E5F34.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E5F88.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E6024.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E6070.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E60C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E60EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E611C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E6128.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E6300.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E64B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E64F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E651C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E6550.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E6590.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E6680.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E66A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E66C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/Audio_NextRandom.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E6818.s")
