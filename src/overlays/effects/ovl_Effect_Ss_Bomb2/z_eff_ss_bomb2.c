/*
 * File: z_eff_ss_bomb2.c
 * Overlay: ovl_Effect_Ss_Bomb2
 * Description:
 */

#include "z_eff_ss_bomb2.h"

typedef enum {
    /* 0x00 */ SS_BOMB2_0,
    /* 0x01 */ SS_BOMB2_1,
    /* 0x02 */ SS_BOMB2_2,
    /* 0x03 */ SS_BOMB2_3,
    /* 0x04 */ SS_BOMB2_4,
    /* 0x05 */ SS_BOMB2_5,
    /* 0x06 */ SS_BOMB2_6,
    /* 0x07 */ SS_BOMB2_7,
    /* 0x08 */ SS_BOMB2_8,
    /* 0x09 */ SS_BOMB2_9,
    /* 0x0A */ SS_BOMB2_A,
    /* 0x0B */ SS_BOMB2_B,
    /* 0x0C */ SS_BOMB2_C,
} EffectSsBomb2Regs;

u32 EffectSsBomb2_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsBomb2_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsBomb2_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

/*
EffectSsInit Effect_Ss_Bomb2_InitVars = {
    EFFECT_SS_BOMB2,
    EffectSsBomb2_Init,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Bomb2/EffectSsBomb2_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Bomb2/func_8099F748.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Bomb2/func_8099F960.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Bomb2/func_8099FCCC.s")
