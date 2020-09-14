/*
 * File: z_eff_ss_g_splash.c
 * Overlay: ovl_Effect_Ss_G_Splash
 * Description:
 */

#include "z_eff_ss_g_splash.h"

typedef enum {
    /* 0x00 */ SS_G_SPLASH_0,
    /* 0x01 */ SS_G_SPLASH_1,
    /* 0x02 */ SS_G_SPLASH_2,
    /* 0x03 */ SS_G_SPLASH_3,
    /* 0x04 */ SS_G_SPLASH_4,
    /* 0x05 */ SS_G_SPLASH_5,
    /* 0x06 */ SS_G_SPLASH_6,
    /* 0x07 */ SS_G_SPLASH_7,
    /* 0x08 */ SS_G_SPLASH_8,
    /* 0x09 */ SS_G_SPLASH_9,
    /* 0x0A */ SS_G_SPLASH_A,
    /* 0x0B */ SS_G_SPLASH_B,
    /* 0x0C */ SS_G_SPLASH_C,
} EffectSsG_SplashRegs;

u32 EffectSsGSplash_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsGSplash_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsGSplash_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

/*
EffectSsInit Effect_Ss_G_Splash_InitVars = {
    EFFECT_SS_G_SPLASH,
    EffectSsGSplash_Init,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_G_Splash/EffectSsGSplash_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_G_Splash/func_809A7760.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_G_Splash/func_809A7864.s")
