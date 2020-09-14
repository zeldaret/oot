/*
 * File: z_eff_ss_hitmark.c
 * Overlay: ovl_Effect_Ss_HitMark
 * Description:
 */

#include "z_eff_ss_hitmark.h"

typedef enum {
    /* 0x00 */ SS_HITMARK_0,
    /* 0x01 */ SS_HITMARK_1,
    /* 0x02 */ SS_HITMARK_2,
    /* 0x03 */ SS_HITMARK_3,
    /* 0x04 */ SS_HITMARK_4,
    /* 0x05 */ SS_HITMARK_5,
    /* 0x06 */ SS_HITMARK_6,
    /* 0x07 */ SS_HITMARK_7,
    /* 0x08 */ SS_HITMARK_8,
    /* 0x09 */ SS_HITMARK_9,
    /* 0x0A */ SS_HITMARK_A,
    /* 0x0B */ SS_HITMARK_B,
    /* 0x0C */ SS_HITMARK_C,
} EffectSsHitMarkRegs;

u32 EffectSsHitMark_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsHitMark_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsHitMark_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

/*
EffectSsInit Effect_Ss_HitMark_InitVars = {
    EFFECT_SS_HITMARK,
    EffectSsHitMark_Init,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_HitMark/EffectSsHitMark_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_HitMark/func_809A824C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_HitMark/func_809A8484.s")
