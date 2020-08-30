/*
 * File: z_eff_ss_g_magma2.c
 * Overlay: ovl_Effect_Ss_G_Magma2
 * Description:
 */

#include "z_eff_ss_g_magma2.h"

typedef enum {
    /* 0x00 */ SS_G_MAGMA2_0,
    /* 0x01 */ SS_G_MAGMA2_1,
    /* 0x02 */ SS_G_MAGMA2_2,
    /* 0x03 */ SS_G_MAGMA2_3,
    /* 0x04 */ SS_G_MAGMA2_4,
    /* 0x05 */ SS_G_MAGMA2_5,
    /* 0x06 */ SS_G_MAGMA2_6,
    /* 0x07 */ SS_G_MAGMA2_7,
    /* 0x08 */ SS_G_MAGMA2_8,
    /* 0x09 */ SS_G_MAGMA2_9,
    /* 0x0A */ SS_G_MAGMA2_A,
    /* 0x0B */ SS_G_MAGMA2_B,
    /* 0x0C */ SS_G_MAGMA2_C,
} EffectSsG_Magma2Regs;

u32 EffectSsGMagma2_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void func_809A6568(GlobalContext* globalCtx, u32 index, EffectSs* this);
void func_809A67C0(GlobalContext* globalCtx, u32 index, EffectSs* this);

UNK_PTR D_809A6860[] = {
    0x0602E4E0, 0x0602E8E0, 0x0602ECE0, 0x0602F0E0, 0x0602F4E0, 0x0602F8E0, 0x0602FCE0,
    0x060300E0, 0x060304E0, 0x060308E0, 0x060308E0, 0x060308E0, 0x060308E0,
};

EffectSsInit Effect_Ss_G_Magma2_InitVars = {
    EFFECT_SS_G_MAGMA2,
    EffectSsGMagma2_Init,
};

Vec3f D_809A689C  = { 0.0f, 0.0f, 0.0f }; // remove when init is done

extern Gfx D_06025A90[];

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_G_Magma2/EffectSsGMagma2_Init.s")

// u32 EffectSsGMagma2_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
//     static Vec3f zeroVecSrc = { 0.0f, 0.0f, 0.0f };
//     s32 objBankIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_KINGDODONGO);
//     s32 pad;
//     Vec3f zeroVec;
//     EffectSsGMagma2InitParams* initParams = (EffectSsGMagma2InitParams*)initParamsx;

//     if ((objBankIndex >= 0) && (Object_IsLoaded(&globalCtx->objectCtx, objBankIndex))) {
//         zeroVec = zeroVecSrc;
//         gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[objBankIndex].segment);
//         /* unk54 */ this->regs[SS_G_MAGMA2_A] = objBankIndex;
//         this->pos = initParams->pos;
//         this->velocity = zeroVec;
//         this->accel = zeroVec;
//         this->draw = func_809A6568;
//         this->update = func_809A67C0;
//         this->displayList = SEGMENTED_TO_VIRTUAL(D_06025A90);
//         this->life = 100;
//         /* unk4C */ this->regs[SS_G_MAGMA2_6] = 0;
//         /* unk52 */ this->regs[SS_G_MAGMA2_9] = initParams->unk_16;
//         /* unk50 */ this->regs[SS_G_MAGMA2_8] = initParams->unk_14;
//         /* unk56 */ this->regs[SS_G_MAGMA2_B] = initParams->unk_18;
//         /* regs  */ this->regs[SS_G_MAGMA2_0] = initParams->primColor.r;
//         /* unk42 */ this->regs[SS_G_MAGMA2_1] = initParams->primColor.g;
//         /* unk44 */ this->regs[SS_G_MAGMA2_2] = initParams->primColor.a;
//         /* unk46 */ this->regs[SS_G_MAGMA2_3] = initParams->envColor.r;
//         /* unk48 */ this->regs[SS_G_MAGMA2_4] = initParams->envColor.g;
//         /* unk4A */ this->regs[SS_G_MAGMA2_5] = initParams->envColor.a;
        
//         return 1;
//     }
//     return 0;
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_G_Magma2/func_809A6568.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_G_Magma2/func_809A67C0.s")
