/*
 * File: z_eff_ss_d_fire.c
 * Overlay: ovl_Effect_Ss_D_Fire
 * Description:
 */

#include "z_eff_ss_d_fire.h"

typedef enum {
    /* 0x00 */ SS_D_FIRE_0,
    /* 0x01 */ SS_D_FIRE_1,
    /* 0x02 */ SS_D_FIRE_2,
    /* 0x03 */ SS_D_FIRE_3,
    /* 0x04 */ SS_D_FIRE_4,
    /* 0x05 */ SS_D_FIRE_5,
    /* 0x06 */ SS_D_FIRE_6,
    /* 0x07 */ SS_D_FIRE_7,
    /* 0x08 */ SS_D_FIRE_8,
    /* 0x09 */ SS_D_FIRE_9,
    /* 0x0A */ SS_D_FIRE_A,
    /* 0x0B */ SS_D_FIRE_B,
    /* 0x0C */ SS_D_FIRE_C,
} EffectSsD_FireRegs;

u32 EffectSsDFire_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsDFire_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsDFire_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

/*
EffectSsInit Effect_Ss_D_Fire_InitVars = {
    EFFECT_SS_D_FIRE,
    EffectSsDFire_Init,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_D_Fire/EffectSsDFire_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_D_Fire/func_809A0698.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_D_Fire/func_809A090C.s")
