/*
 * File: z_eff_ss_en_fire.c
 * Overlay: ovl_Effect_Ss_En_Fire
 * Description:
 */

#include "z_eff_ss_en_fire.h"

typedef enum {
    /* 0x00 */ SS_EN_FIRE_0,
    /* 0x01 */ SS_EN_FIRE_1,
    /* 0x02 */ SS_EN_FIRE_2,
    /* 0x03 */ SS_EN_FIRE_3,
    /* 0x04 */ SS_EN_FIRE_4,
    /* 0x05 */ SS_EN_FIRE_5,
    /* 0x06 */ SS_EN_FIRE_6,
    /* 0x07 */ SS_EN_FIRE_7,
    /* 0x08 */ SS_EN_FIRE_8,
    /* 0x09 */ SS_EN_FIRE_9,
    /* 0x0A */ SS_EN_FIRE_A,
    /* 0x0B */ SS_EN_FIRE_B,
    /* 0x0C */ SS_EN_FIRE_C,
} EffectSsEn_FireRegs;

u32 EffectSsEnFire_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsEnFire_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsEnFire_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

/*
EffectSsInit Effect_Ss_En_Fire_InitVars = {
    EFFECT_SS_EN_FIRE,
    EffectSsEnFire_Init,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_En_Fire/EffectSsEnFire_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_En_Fire/func_809A2D28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_En_Fire/func_809A3060.s")
