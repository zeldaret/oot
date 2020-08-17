/*
 * File: z_eff_ss_kirakira.c
 * Overlay: ovl_Effect_Ss_KiraKira
 * Description:
 */

#include "z_eff_ss_kirakira.h"

typedef enum {
    /* 0x00 */ SS_KIRAKIRA_0,
    /* 0x01 */ SS_KIRAKIRA_1,
    /* 0x02 */ SS_KIRAKIRA_2,
    /* 0x03 */ SS_KIRAKIRA_3,
    /* 0x04 */ SS_KIRAKIRA_4,
    /* 0x05 */ SS_KIRAKIRA_5,
    /* 0x06 */ SS_KIRAKIRA_6,
    /* 0x07 */ SS_KIRAKIRA_7,
    /* 0x08 */ SS_KIRAKIRA_8,
    /* 0x09 */ SS_KIRAKIRA_9,
    /* 0x0A */ SS_KIRAKIRA_A,
    /* 0x0B */ SS_KIRAKIRA_B,
    /* 0x0C */ SS_KIRAKIRA_C,
} EffectSsKiraKiraRegs;

u32 EffectSsKiraKira_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsKiraKira_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsKiraKira_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

/*
EffectSsInit Effect_Ss_KiraKira_InitVars = {
    EFFECT_SS_KIRAKIRA,
    EffectSsKiraKira_Init,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_KiraKira/EffectSsKiraKira_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_KiraKira/func_809AA9AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_KiraKira/func_809AABF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_KiraKira/func_809AACAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_KiraKira/func_809AAD6C.s")
