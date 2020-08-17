/*
 * File: z_eff_ss_fhg_flash.c
 * Overlay: ovl_Effect_Ss_Fhg_Flash
 * Description:
 */

#include "z_eff_ss_fhg_flash.h"

typedef enum {
    /* 0x00 */ SS_FHG_FLASH_0,
    /* 0x01 */ SS_FHG_FLASH_1,
    /* 0x02 */ SS_FHG_FLASH_2,
    /* 0x03 */ SS_FHG_FLASH_3,
    /* 0x04 */ SS_FHG_FLASH_4,
    /* 0x05 */ SS_FHG_FLASH_5,
    /* 0x06 */ SS_FHG_FLASH_6,
    /* 0x07 */ SS_FHG_FLASH_7,
    /* 0x08 */ SS_FHG_FLASH_8,
    /* 0x09 */ SS_FHG_FLASH_9,
    /* 0x0A */ SS_FHG_FLASH_A,
    /* 0x0B */ SS_FHG_FLASH_B,
    /* 0x0C */ SS_FHG_FLASH_C,
} EffectSsFhg_FlashRegs;

u32 EffectSsFhgFlash_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsFhgFlash_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsFhgFlash_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

/*
EffectSsInit Effect_Ss_Fhg_Flash_InitVars = {
    EFFECT_SS_FHG_FLASH,
    EffectSsFhgFlash_Init,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Fhg_Flash/EffectSsFhgFlash_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Fhg_Flash/func_809A49B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Fhg_Flash/func_809A4BE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Fhg_Flash/func_809A4E28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Fhg_Flash/func_809A4EC0.s")
