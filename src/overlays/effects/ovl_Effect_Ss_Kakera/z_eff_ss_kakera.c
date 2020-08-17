/*
 * File: z_eff_ss_kakera.c
 * Overlay: ovl_Effect_Ss_Kakera
 * Description:
 */

#include "z_eff_ss_kakera.h"

typedef enum {
    /* 0x00 */ SS_KAKERA_0,
    /* 0x01 */ SS_KAKERA_1,
    /* 0x02 */ SS_KAKERA_2,
    /* 0x03 */ SS_KAKERA_3,
    /* 0x04 */ SS_KAKERA_4,
    /* 0x05 */ SS_KAKERA_5,
    /* 0x06 */ SS_KAKERA_6,
    /* 0x07 */ SS_KAKERA_7,
    /* 0x08 */ SS_KAKERA_8,
    /* 0x09 */ SS_KAKERA_9,
    /* 0x0A */ SS_KAKERA_A,
    /* 0x0B */ SS_KAKERA_B,
    /* 0x0C */ SS_KAKERA_C,
} EffectSsKakeraRegs;

u32 EffectSsKakera_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsKakera_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsKakera_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

/*
EffectSsInit Effect_Ss_Kakera_InitVars = {
    EFFECT_SS_KAKERA,
    EffectSsKakera_Init,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Kakera/EffectSsKakera_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Kakera/func_809A9818.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Kakera/func_809A9874.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Kakera/func_809A9BA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Kakera/func_809A9C10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Kakera/func_809A9DC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Kakera/func_809A9DD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Kakera/func_809A9DEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Kakera/func_809A9E28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Kakera/func_809A9E68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Kakera/func_809A9E88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Kakera/func_809A9F10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Kakera/func_809A9F4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Kakera/func_809A9FD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Kakera/func_809AA0B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Kakera/func_809AA0EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Kakera/func_809AA230.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Kakera/func_809AA430.s")
