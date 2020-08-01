/*
 * File: z_eff_ss_g_fire.c
 * Overlay: ovl_Effect_Ss_G_Fire
 * Description:
 */

#include "z_eff_ss_g_fire.h"

typedef enum {
    /* 0x00 */ SS_G_FIRE_0,
    /* 0x01 */ SS_G_FIRE_1,
    /* 0x02 */ SS_G_FIRE_2,
    /* 0x03 */ SS_G_FIRE_3,
    /* 0x04 */ SS_G_FIRE_4,
    /* 0x05 */ SS_G_FIRE_5,
    /* 0x06 */ SS_G_FIRE_6,
    /* 0x07 */ SS_G_FIRE_7,
    /* 0x08 */ SS_G_FIRE_8,
    /* 0x09 */ SS_G_FIRE_9,
    /* 0x0A */ SS_G_FIRE_A,
    /* 0x0B */ SS_G_FIRE_B,
    /* 0x0C */ SS_G_FIRE_C,
} EffectSsG_FireRegs;

u32 EffectSsGFire_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsGFire_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsGFire_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

/*
EffectSsInit Effect_Ss_G_Fire_InitVars = {
    EFFECT_SS_G_FIRE,
    EffectSsGFire_Init,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_G_Fire/EffectSsGFire_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_G_Fire/func_809A6010.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_G_Fire/func_809A60B4.s")
