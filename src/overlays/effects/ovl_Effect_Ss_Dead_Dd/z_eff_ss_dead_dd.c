/*
 * File: z_eff_ss_dead_dd.c
 * Overlay: ovl_Effect_Ss_Dead_Dd
 * Description:
 */

#include "z_eff_ss_dead_dd.h"

typedef enum {
    /* 0x00 */ SS_DEAD_DD_0,
    /* 0x01 */ SS_DEAD_DD_1,
    /* 0x02 */ SS_DEAD_DD_2,
    /* 0x03 */ SS_DEAD_DD_3,
    /* 0x04 */ SS_DEAD_DD_4,
    /* 0x05 */ SS_DEAD_DD_5,
    /* 0x06 */ SS_DEAD_DD_6,
    /* 0x07 */ SS_DEAD_DD_7,
    /* 0x08 */ SS_DEAD_DD_8,
    /* 0x09 */ SS_DEAD_DD_9,
    /* 0x0A */ SS_DEAD_DD_A,
    /* 0x0B */ SS_DEAD_DD_B,
    /* 0x0C */ SS_DEAD_DD_C,
} EffectSsDead_DdRegs;

u32 EffectSsDeadDd_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsDeadDd_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsDeadDd_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

/*
EffectSsInit Effect_Ss_Dead_Dd_InitVars = {
    EFFECT_SS_DEAD_DD,
    EffectSsDeadDd_Init,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Dead_Dd/EffectSsDeadDd_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Dead_Dd/func_809A12B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Dead_Dd/func_809A14B0.s")
