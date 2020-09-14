/*
 * File: z_eff_ss_fire_tail.c
 * Overlay: ovl_Effect_Ss_Fire_Tail
 * Description:
 */

#include "z_eff_ss_fire_tail.h"

typedef enum {
    /* 0x00 */ SS_FIRE_TAIL_0,
    /* 0x01 */ SS_FIRE_TAIL_1,
    /* 0x02 */ SS_FIRE_TAIL_2,
    /* 0x03 */ SS_FIRE_TAIL_3,
    /* 0x04 */ SS_FIRE_TAIL_4,
    /* 0x05 */ SS_FIRE_TAIL_5,
    /* 0x06 */ SS_FIRE_TAIL_6,
    /* 0x07 */ SS_FIRE_TAIL_7,
    /* 0x08 */ SS_FIRE_TAIL_8,
    /* 0x09 */ SS_FIRE_TAIL_9,
    /* 0x0A */ SS_FIRE_TAIL_A,
    /* 0x0B */ SS_FIRE_TAIL_B,
    /* 0x0C */ SS_FIRE_TAIL_C,
} EffectSsFire_TailRegs;

u32 EffectSsFireTail_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsFireTail_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsFireTail_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

/*
EffectSsInit Effect_Ss_Fire_Tail_InitVars = {
    EFFECT_SS_FIRE_TAIL,
    EffectSsFireTail_Init,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Fire_Tail/EffectSsFireTail_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Fire_Tail/func_809A5858.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Fire_Tail/func_809A5D98.s")
