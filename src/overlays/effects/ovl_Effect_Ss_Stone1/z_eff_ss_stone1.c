/*
 * File: z_eff_ss_stone1.c
 * Overlay: ovl_Effect_Ss_Stone1
 * Description:
 */

#include "z_eff_ss_stone1.h"

typedef enum {
    /* 0x00 */ SS_STONE1_0,
    /* 0x01 */ SS_STONE1_1,
    /* 0x02 */ SS_STONE1_2,
    /* 0x03 */ SS_STONE1_3,
    /* 0x04 */ SS_STONE1_4,
    /* 0x05 */ SS_STONE1_5,
    /* 0x06 */ SS_STONE1_6,
    /* 0x07 */ SS_STONE1_7,
    /* 0x08 */ SS_STONE1_8,
    /* 0x09 */ SS_STONE1_9,
    /* 0x0A */ SS_STONE1_A,
    /* 0x0B */ SS_STONE1_B,
    /* 0x0C */ SS_STONE1_C,
} EffectSsStone1Regs;

u32 EffectSsStone1_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsStone1_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsStone1_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

/*
EffectSsInit Effect_Ss_Stone1_InitVars = {
    EFFECT_SS_STONE1,
    EffectSsStone1_Init,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Stone1/EffectSsStone1_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Stone1/func_809AC78C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Stone1/func_809AC9C0.s")
