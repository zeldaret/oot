/*
 * File: z_eff_ss_fcircle.c
 * Overlay: ovl_Effect_Ss_Fcircle
 * Description:
 */

#include "z_eff_ss_fcircle.h"

typedef enum {
    /* 0x00 */ SS_FCIRCLE_0,
    /* 0x01 */ SS_FCIRCLE_1,
    /* 0x02 */ SS_FCIRCLE_2,
    /* 0x03 */ SS_FCIRCLE_3,
    /* 0x04 */ SS_FCIRCLE_4,
    /* 0x05 */ SS_FCIRCLE_5,
    /* 0x06 */ SS_FCIRCLE_6,
    /* 0x07 */ SS_FCIRCLE_7,
    /* 0x08 */ SS_FCIRCLE_8,
    /* 0x09 */ SS_FCIRCLE_9,
    /* 0x0A */ SS_FCIRCLE_A,
    /* 0x0B */ SS_FCIRCLE_B,
    /* 0x0C */ SS_FCIRCLE_C,
} EffectSsFcircleRegs;

u32 EffectSsFcircle_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsFcircle_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsFcircle_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

/*
EffectSsInit Effect_Ss_Fcircle_InitVars = {
    EFFECT_SS_FCIRCLE,
    EffectSsFcircle_Init,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Fcircle/EffectSsFcircle_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Fcircle/func_809A41DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Fcircle/func_809A44E0.s")
