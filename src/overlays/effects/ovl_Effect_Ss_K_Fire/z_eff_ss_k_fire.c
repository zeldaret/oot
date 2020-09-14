/*
 * File: z_eff_ss_k_fire.c
 * Overlay: ovl_Effect_Ss_K_Fire
 * Description:
 */

#include "z_eff_ss_k_fire.h"

typedef enum {
    /* 0x00 */ SS_K_FIRE_0,
    /* 0x01 */ SS_K_FIRE_1,
    /* 0x02 */ SS_K_FIRE_2,
    /* 0x03 */ SS_K_FIRE_3,
    /* 0x04 */ SS_K_FIRE_4,
    /* 0x05 */ SS_K_FIRE_5,
    /* 0x06 */ SS_K_FIRE_6,
    /* 0x07 */ SS_K_FIRE_7,
    /* 0x08 */ SS_K_FIRE_8,
    /* 0x09 */ SS_K_FIRE_9,
    /* 0x0A */ SS_K_FIRE_A,
    /* 0x0B */ SS_K_FIRE_B,
    /* 0x0C */ SS_K_FIRE_C,
} EffectSsK_FireRegs;

u32 EffectSsKFire_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsKFire_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsKFire_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

/*
EffectSsInit Effect_Ss_K_Fire_InitVars = {
    EFFECT_SS_K_FIRE,
    EffectSsKFire_Init,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_K_Fire/EffectSsKFire_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_K_Fire/func_809A9280.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_K_Fire/func_809A951C.s")
