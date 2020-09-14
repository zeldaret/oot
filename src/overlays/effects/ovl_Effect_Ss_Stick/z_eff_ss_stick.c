/*
 * File: z_eff_ss_stick.c
 * Overlay: ovl_Effect_Ss_Stick
 * Description:
 */

#include "z_eff_ss_stick.h"

typedef enum {
    /* 0x00 */ SS_STICK_0,
    /* 0x01 */ SS_STICK_1,
    /* 0x02 */ SS_STICK_2,
    /* 0x03 */ SS_STICK_3,
    /* 0x04 */ SS_STICK_4,
    /* 0x05 */ SS_STICK_5,
    /* 0x06 */ SS_STICK_6,
    /* 0x07 */ SS_STICK_7,
    /* 0x08 */ SS_STICK_8,
    /* 0x09 */ SS_STICK_9,
    /* 0x0A */ SS_STICK_A,
    /* 0x0B */ SS_STICK_B,
    /* 0x0C */ SS_STICK_C,
} EffectSsStickRegs;

u32 EffectSsStick_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsStick_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsStick_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

/*
EffectSsInit Effect_Ss_Stick_InitVars = {
    EFFECT_SS_STICK,
    EffectSsStick_Init,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Stick/EffectSsStick_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Stick/func_809AC42C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Stick/func_809AC604.s")
