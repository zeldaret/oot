/*
 * File: z_eff_ss_sibuki2.c
 * Overlay: ovl_Effect_Ss_Sibuki2
 * Description:
 */

#include "z_eff_ss_sibuki2.h"

typedef enum {
    /* 0x00 */ SS_SIBUKI2_0,
    /* 0x01 */ SS_SIBUKI2_1,
    /* 0x02 */ SS_SIBUKI2_2,
    /* 0x03 */ SS_SIBUKI2_3,
    /* 0x04 */ SS_SIBUKI2_4,
    /* 0x05 */ SS_SIBUKI2_5,
    /* 0x06 */ SS_SIBUKI2_6,
    /* 0x07 */ SS_SIBUKI2_7,
    /* 0x08 */ SS_SIBUKI2_8,
    /* 0x09 */ SS_SIBUKI2_9,
    /* 0x0A */ SS_SIBUKI2_A,
    /* 0x0B */ SS_SIBUKI2_B,
    /* 0x0C */ SS_SIBUKI2_C,
} EffectSsSibuki2Regs;

u32 EffectSsSibuki2_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsSibuki2_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsSibuki2_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

/*
EffectSsInit Effect_Ss_Sibuki2_InitVars = {
    EFFECT_SS_SIBUKI2,
    EffectSsSibuki2_Init,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Sibuki2/EffectSsSibuki2_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Sibuki2/func_809ABE0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Sibuki2/func_809AC030.s")
