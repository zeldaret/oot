/*
 * File: z_eff_ss_g_magma.c
 * Overlay: ovl_Effect_Ss_G_Magma
 * Description:
 */

#include "z_eff_ss_g_magma.h"

typedef enum {
    /* 0x00 */ SS_G_MAGMA_0,
    /* 0x01 */ SS_G_MAGMA_1,
    /* 0x02 */ SS_G_MAGMA_2,
    /* 0x03 */ SS_G_MAGMA_3,
    /* 0x04 */ SS_G_MAGMA_4,
    /* 0x05 */ SS_G_MAGMA_5,
    /* 0x06 */ SS_G_MAGMA_6,
    /* 0x07 */ SS_G_MAGMA_7,
    /* 0x08 */ SS_G_MAGMA_8,
    /* 0x09 */ SS_G_MAGMA_9,
    /* 0x0A */ SS_G_MAGMA_A,
    /* 0x0B */ SS_G_MAGMA_B,
    /* 0x0C */ SS_G_MAGMA_C,
} EffectSsG_MagmaRegs;

u32 EffectSsGMagma_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsGMagma_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsGMagma_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

/*
EffectSsInit Effect_Ss_G_Magma_InitVars = {
    EFFECT_SS_G_MAGMA,
    EffectSsGMagma_Init,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_G_Magma/EffectSsGMagma_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_G_Magma/func_809A62A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_G_Magma/func_809A6300.s")
