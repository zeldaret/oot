/*
 * File: z_eff_ss_bomb.c
 * Overlay: ovl_Effect_Ss_Bomb
 * Description:
 */

#include "z_eff_ss_bomb.h"

typedef enum {
    /* 0x00 */ SS_BOMB_0,
    /* 0x01 */ SS_BOMB_1,
    /* 0x02 */ SS_BOMB_2,
    /* 0x03 */ SS_BOMB_3,
    /* 0x04 */ SS_BOMB_4,
    /* 0x05 */ SS_BOMB_5,
    /* 0x06 */ SS_BOMB_6,
    /* 0x07 */ SS_BOMB_7,
    /* 0x08 */ SS_BOMB_8,
    /* 0x09 */ SS_BOMB_9,
    /* 0x0A */ SS_BOMB_A,
    /* 0x0B */ SS_BOMB_B,
    /* 0x0C */ SS_BOMB_C,
} EffectSsBombRegs;

u32 EffectSsBomb_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsBomb_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsBomb_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

/*
EffectSsInit Effect_Ss_Bomb_InitVars = {
    EFFECT_SS_BOMB,
    EffectSsBomb_Init,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Bomb/EffectSsBomb_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Bomb/func_8099F274.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Bomb/func_8099F4D8.s")
