/*
 * File: z_eff_ss_g_spk.c
 * Overlay: ovl_Effect_Ss_G_Spk
 * Description: Sparks
 */

#include "z_eff_ss_g_spk.h"

u32 func_809A6F30(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
//void EffectSsBlast_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);
//void EffectSsBlast_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);

 EffectSsInit Effect_Ss_G_Spk_InitVars = {
    EFFECT_SS_G_SPK,
    func_809A6F30,
};

UNK_PTR D_809A7498[] = {
    0x04055FB0, 
    0x040561B0, 
    0x040563B0, 
    0x040565B0,
};

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_G_Spk/func_809A6F30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_G_Spk/func_809A70A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_G_Spk/func_809A72C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_G_Spk/func_809A73C8.s")
