/*
 * File: z_eff_ss_g_spk.c
 * Overlay: ovl_Effect_Ss_G_Spk
 * Description:
 */

#include "z_eff_ss_g_spk.h"

typedef enum {
    /* 0x00 */ SS_G_SPK_0,
    /* 0x01 */ SS_G_SPK_1,
    /* 0x02 */ SS_G_SPK_2,
    /* 0x03 */ SS_G_SPK_3,
    /* 0x04 */ SS_G_SPK_4,
    /* 0x05 */ SS_G_SPK_5,
    /* 0x06 */ SS_G_SPK_6,
    /* 0x07 */ SS_G_SPK_7,
    /* 0x08 */ SS_G_SPK_8,
    /* 0x09 */ SS_G_SPK_9,
    /* 0x0A */ SS_G_SPK_A,
    /* 0x0B */ SS_G_SPK_B,
    /* 0x0C */ SS_G_SPK_C,
} EffectSsG_SpkRegs;

u32 EffectSsGSpk_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsGSpk_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsGSpk_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

/*
EffectSsInit Effect_Ss_G_Spk_InitVars = {
    EFFECT_SS_G_SPK,
    EffectSsGSpk_Init,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_G_Spk/EffectSsGSpk_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_G_Spk/func_809A70A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_G_Spk/func_809A72C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_G_Spk/func_809A73C8.s")
