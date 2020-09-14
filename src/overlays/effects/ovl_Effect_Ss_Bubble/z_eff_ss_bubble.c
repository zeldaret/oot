/*
 * File: z_eff_ss_bubble.c
 * Overlay: ovl_Effect_Ss_Bubble
 * Description:
 */

#include "z_eff_ss_bubble.h"

typedef enum {
    /* 0x00 */ SS_BUBBLE_0,
    /* 0x01 */ SS_BUBBLE_1,
    /* 0x02 */ SS_BUBBLE_2,
    /* 0x03 */ SS_BUBBLE_3,
    /* 0x04 */ SS_BUBBLE_4,
    /* 0x05 */ SS_BUBBLE_5,
    /* 0x06 */ SS_BUBBLE_6,
    /* 0x07 */ SS_BUBBLE_7,
    /* 0x08 */ SS_BUBBLE_8,
    /* 0x09 */ SS_BUBBLE_9,
    /* 0x0A */ SS_BUBBLE_A,
    /* 0x0B */ SS_BUBBLE_B,
    /* 0x0C */ SS_BUBBLE_C,
} EffectSsBubbleRegs;

u32 EffectSsBubble_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsBubble_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsBubble_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

/*
EffectSsInit Effect_Ss_Bubble_InitVars = {
    EFFECT_SS_BUBBLE,
    EffectSsBubble_Init,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Bubble/EffectSsBubble_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Bubble/func_809A01CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Bubble/func_809A0360.s")
