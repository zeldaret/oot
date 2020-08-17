/*
 * File: z_eff_ss_g_ripple.c
 * Overlay: ovl_Effect_Ss_G_Ripple
 * Description:
 */

#include "z_eff_ss_g_ripple.h"

typedef enum {
    /* 0x00 */ SS_G_RIPPLE_0,
    /* 0x01 */ SS_G_RIPPLE_1,
    /* 0x02 */ SS_G_RIPPLE_2,
    /* 0x03 */ SS_G_RIPPLE_3,
    /* 0x04 */ SS_G_RIPPLE_4,
    /* 0x05 */ SS_G_RIPPLE_5,
    /* 0x06 */ SS_G_RIPPLE_6,
    /* 0x07 */ SS_G_RIPPLE_7,
    /* 0x08 */ SS_G_RIPPLE_8,
    /* 0x09 */ SS_G_RIPPLE_9,
    /* 0x0A */ SS_G_RIPPLE_A,
    /* 0x0B */ SS_G_RIPPLE_B,
    /* 0x0C */ SS_G_RIPPLE_C,
} EffectSsG_RippleRegs;

u32 EffectSsGRipple_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsGRipple_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsGRipple_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

/*
EffectSsInit Effect_Ss_G_Ripple_InitVars = {
    EFFECT_SS_G_RIPPLE,
    EffectSsGRipple_Init,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_G_Ripple/EffectSsGRipple_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_G_Ripple/func_809A6AD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_G_Ripple/func_809A6D08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_G_Ripple/func_809A6D40.s")
