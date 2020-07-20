/*
 * File: z_eff_ss_dead_ds.c
 * Overlay: ovl_Effect_Ss_Dead_Ds
 * Description:
 */

#include "z_eff_ss_dead_ds.h"

typedef enum {
    /* 0x00 */ SS_DEAD_DS_0,
    /* 0x01 */ SS_DEAD_DS_1,
    /* 0x02 */ SS_DEAD_DS_2,
    /* 0x03 */ SS_DEAD_DS_3,
    /* 0x04 */ SS_DEAD_DS_4,
    /* 0x05 */ SS_DEAD_DS_5,
    /* 0x06 */ SS_DEAD_DS_6,
    /* 0x07 */ SS_DEAD_DS_7,
    /* 0x08 */ SS_DEAD_DS_8,
    /* 0x09 */ SS_DEAD_DS_9,
    /* 0x0A */ SS_DEAD_DS_A,
    /* 0x0B */ SS_DEAD_DS_B,
    /* 0x0C */ SS_DEAD_DS_C,
} EffectSsDead_DsRegs;

u32 EffectSsDeadDs_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsDeadDs_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsDeadDs_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

/*
EffectSsInit Effect_Ss_Dead_Ds_InitVars = {
    EFFECT_SS_DEAD_DS,
    EffectSsDeadDs_Init,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Dead_Ds/EffectSsDeadDs_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Dead_Ds/func_809A16F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Dead_Ds/func_809A1A08.s")
