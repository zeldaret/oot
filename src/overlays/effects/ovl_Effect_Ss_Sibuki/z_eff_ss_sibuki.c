/*
 * File: z_eff_ss_sibuki.c
 * Overlay: ovl_Effect_Ss_Sibuki
 * Description:
 */

#include "z_eff_ss_sibuki.h"

typedef enum {
    /* 0x00 */ SS_SIBUKI_0,
    /* 0x01 */ SS_SIBUKI_1,
    /* 0x02 */ SS_SIBUKI_2,
    /* 0x03 */ SS_SIBUKI_3,
    /* 0x04 */ SS_SIBUKI_4,
    /* 0x05 */ SS_SIBUKI_5,
    /* 0x06 */ SS_SIBUKI_6,
    /* 0x07 */ SS_SIBUKI_7,
    /* 0x08 */ SS_SIBUKI_8,
    /* 0x09 */ SS_SIBUKI_9,
    /* 0x0A */ SS_SIBUKI_A,
    /* 0x0B */ SS_SIBUKI_B,
    /* 0x0C */ SS_SIBUKI_C,
} EffectSsSibukiRegs;

u32 EffectSsSibuki_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsSibuki_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsSibuki_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

/*
EffectSsInit Effect_Ss_Sibuki_InitVars = {
    EFFECT_SS_SIBUKI,
    EffectSsSibuki_Init,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Sibuki/EffectSsSibuki_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Sibuki/func_809AB7EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Sibuki/func_809AB9DC.s")
