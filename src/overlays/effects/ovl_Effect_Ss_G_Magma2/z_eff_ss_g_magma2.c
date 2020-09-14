/*
 * File: z_eff_ss_g_magma2.c
 * Overlay: ovl_Effect_Ss_G_Magma2
 * Description:
 */

#include "z_eff_ss_g_magma2.h"

typedef enum {
    /* 0x00 */ SS_G_MAGMA2_0,
    /* 0x01 */ SS_G_MAGMA2_1,
    /* 0x02 */ SS_G_MAGMA2_2,
    /* 0x03 */ SS_G_MAGMA2_3,
    /* 0x04 */ SS_G_MAGMA2_4,
    /* 0x05 */ SS_G_MAGMA2_5,
    /* 0x06 */ SS_G_MAGMA2_6,
    /* 0x07 */ SS_G_MAGMA2_7,
    /* 0x08 */ SS_G_MAGMA2_8,
    /* 0x09 */ SS_G_MAGMA2_9,
    /* 0x0A */ SS_G_MAGMA2_A,
    /* 0x0B */ SS_G_MAGMA2_B,
    /* 0x0C */ SS_G_MAGMA2_C,
} EffectSsG_Magma2Regs;

u32 EffectSsGMagma2_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsGMagma2_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsGMagma2_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

/*
EffectSsInit Effect_Ss_G_Magma2_InitVars = {
    EFFECT_SS_G_MAGMA2,
    EffectSsGMagma2_Init,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_G_Magma2/EffectSsGMagma2_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_G_Magma2/func_809A6568.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_G_Magma2/func_809A67C0.s")
