/*
 * File: z_eff_ss_hahen.c
 * Overlay: ovl_Effect_Ss_Hahen
 * Description:
 */

#include "z_eff_ss_hahen.h"

typedef enum {
    /* 0x00 */ SS_HAHEN_0,
    /* 0x01 */ SS_HAHEN_1,
    /* 0x02 */ SS_HAHEN_2,
    /* 0x03 */ SS_HAHEN_3,
    /* 0x04 */ SS_HAHEN_4,
    /* 0x05 */ SS_HAHEN_5,
    /* 0x06 */ SS_HAHEN_6,
    /* 0x07 */ SS_HAHEN_7,
    /* 0x08 */ SS_HAHEN_8,
    /* 0x09 */ SS_HAHEN_9,
    /* 0x0A */ SS_HAHEN_A,
    /* 0x0B */ SS_HAHEN_B,
    /* 0x0C */ SS_HAHEN_C,
} EffectSsHahenRegs;

u32 EffectSsHahen_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsHahen_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsHahen_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

/*
EffectSsInit Effect_Ss_Hahen_InitVars = {
    EFFECT_SS_HAHEN,
    EffectSsHahen_Init,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Hahen/func_809A79F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Hahen/EffectSsHahen_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Hahen/func_809A7BFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Hahen/func_809A7D9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Hahen/func_809A7F84.s")
