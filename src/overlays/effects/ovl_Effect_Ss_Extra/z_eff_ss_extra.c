/*
 * File: z_eff_ss_extra.c
 * Overlay: ovl_Effect_Ss_Extra
 * Description:
 */

#include "z_eff_ss_extra.h"

typedef enum {
    /* 0x00 */ SS_EXTRA_0,
    /* 0x01 */ SS_EXTRA_1,
    /* 0x02 */ SS_EXTRA_2,
    /* 0x03 */ SS_EXTRA_3,
    /* 0x04 */ SS_EXTRA_4,
    /* 0x05 */ SS_EXTRA_5,
    /* 0x06 */ SS_EXTRA_6,
    /* 0x07 */ SS_EXTRA_7,
    /* 0x08 */ SS_EXTRA_8,
    /* 0x09 */ SS_EXTRA_9,
    /* 0x0A */ SS_EXTRA_A,
    /* 0x0B */ SS_EXTRA_B,
    /* 0x0C */ SS_EXTRA_C,
} EffectSsExtraRegs;

u32 EffectSsExtra_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsExtra_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsExtra_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

/*
EffectSsInit Effect_Ss_Extra_InitVars = {
    EFFECT_SS_EXTRA,
    EffectSsExtra_Init,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Extra/EffectSsExtra_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Extra/func_809A3E00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Extra/func_809A3FF8.s")
