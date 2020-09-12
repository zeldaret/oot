/*
 * File: z_eff_ss_en_ice.c
 * Overlay: ovl_Effect_Ss_En_Ice
 * Description:
 */

#include "z_eff_ss_en_ice.h"

typedef enum {
    /* 0x00 */ SS_EN_ICE_0,
    /* 0x01 */ SS_EN_ICE_1,
    /* 0x02 */ SS_EN_ICE_2,
    /* 0x03 */ SS_EN_ICE_3,
    /* 0x04 */ SS_EN_ICE_4,
    /* 0x05 */ SS_EN_ICE_5,
    /* 0x06 */ SS_EN_ICE_6,
    /* 0x07 */ SS_EN_ICE_7,
    /* 0x08 */ SS_EN_ICE_8,
    /* 0x09 */ SS_EN_ICE_9,
    /* 0x0A */ SS_EN_ICE_A,
    /* 0x0B */ SS_EN_ICE_B,
    /* 0x0C */ SS_EN_ICE_C,
} EffectSsEn_IceRegs;

u32 EffectSsEnIce_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsEnIce_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsEnIce_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

/*
EffectSsInit Effect_Ss_En_Ice_InitVars = {
    EFFECT_SS_EN_ICE,
    EffectSsEnIce_Init,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_En_Ice/EffectSsEnIce_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_En_Ice/func_809A35DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_En_Ice/func_809A3988.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_En_Ice/func_809A3B60.s")
