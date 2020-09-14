/*
 * File: z_eff_ss_lightning.c
 * Overlay: ovl_Effect_Ss_Lightning
 * Description:
 */

#include "z_eff_ss_lightning.h"

typedef enum {
    /* 0x00 */ SS_LIGHTNING_0,
    /* 0x01 */ SS_LIGHTNING_1,
    /* 0x02 */ SS_LIGHTNING_2,
    /* 0x03 */ SS_LIGHTNING_3,
    /* 0x04 */ SS_LIGHTNING_4,
    /* 0x05 */ SS_LIGHTNING_5,
    /* 0x06 */ SS_LIGHTNING_6,
    /* 0x07 */ SS_LIGHTNING_7,
    /* 0x08 */ SS_LIGHTNING_8,
    /* 0x09 */ SS_LIGHTNING_9,
    /* 0x0A */ SS_LIGHTNING_A,
    /* 0x0B */ SS_LIGHTNING_B,
    /* 0x0C */ SS_LIGHTNING_C,
} EffectSsLightningRegs;

u32 EffectSsLightning_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsLightning_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsLightning_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

/*
EffectSsInit Effect_Ss_Lightning_InitVars = {
    EFFECT_SS_LIGHTNING,
    EffectSsLightning_Init,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Lightning/EffectSsLightning_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Lightning/func_809AAFD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Lightning/func_809AB078.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Lightning/func_809AB338.s")
