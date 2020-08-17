/*
 * File: z_eff_ss_dt_bubble.c
 * Overlay: ovl_Effect_Ss_Dt_Bubble
 * Description:
 */

#include "z_eff_ss_dt_bubble.h"

typedef enum {
    /* 0x00 */ SS_DT_BUBBLE_0,
    /* 0x01 */ SS_DT_BUBBLE_1,
    /* 0x02 */ SS_DT_BUBBLE_2,
    /* 0x03 */ SS_DT_BUBBLE_3,
    /* 0x04 */ SS_DT_BUBBLE_4,
    /* 0x05 */ SS_DT_BUBBLE_5,
    /* 0x06 */ SS_DT_BUBBLE_6,
    /* 0x07 */ SS_DT_BUBBLE_7,
    /* 0x08 */ SS_DT_BUBBLE_8,
    /* 0x09 */ SS_DT_BUBBLE_9,
    /* 0x0A */ SS_DT_BUBBLE_A,
    /* 0x0B */ SS_DT_BUBBLE_B,
    /* 0x0C */ SS_DT_BUBBLE_C,
} EffectSsDt_BubbleRegs;

u32 EffectSsDtBubble_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsDtBubble_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsDtBubble_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

/*
EffectSsInit Effect_Ss_Dt_Bubble_InitVars = {
    EFFECT_SS_DT_BUBBLE,
    EffectSsDtBubble_Init,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Dt_Bubble/EffectSsDtBubble_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Dt_Bubble/func_809A1F04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Dt_Bubble/func_809A2180.s")
