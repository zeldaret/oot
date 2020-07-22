/*
 * File: z_eff_ss_ice_smoke.c
 * Overlay: ovl_Effect_Ss_Ice_Smoke
 * Description:
 */

#include "z_eff_ss_ice_smoke.h"

typedef enum {
    /* 0x00 */ SS_ICE_SMOKE_0,
    /* 0x01 */ SS_ICE_SMOKE_1,
    /* 0x02 */ SS_ICE_SMOKE_2,
    /* 0x03 */ SS_ICE_SMOKE_3,
    /* 0x04 */ SS_ICE_SMOKE_4,
    /* 0x05 */ SS_ICE_SMOKE_5,
    /* 0x06 */ SS_ICE_SMOKE_6,
    /* 0x07 */ SS_ICE_SMOKE_7,
    /* 0x08 */ SS_ICE_SMOKE_8,
    /* 0x09 */ SS_ICE_SMOKE_9,
    /* 0x0A */ SS_ICE_SMOKE_A,
    /* 0x0B */ SS_ICE_SMOKE_B,
    /* 0x0C */ SS_ICE_SMOKE_C,
} EffectSsIce_SmokeRegs;

u32 EffectSsIceSmoke_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsIceSmoke_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsIceSmoke_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

/*
EffectSsInit Effect_Ss_Ice_Smoke_InitVars = {
    EFFECT_SS_ICE_SMOKE,
    EffectSsIceSmoke_Init,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Ice_Smoke/EffectSsIceSmoke_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Ice_Smoke/func_809A8D18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Ice_Smoke/func_809A9030.s")
