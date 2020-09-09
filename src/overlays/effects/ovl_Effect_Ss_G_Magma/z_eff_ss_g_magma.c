/*
 * File: z_eff_ss_g_magma.c
 * Overlay: ovl_Effect_Ss_G_Magma
 * Description: Magma Bubbles
 */

#include "z_eff_ss_g_magma.h"

u32 EffectSsGMagma_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsGMagma_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsGMagma_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_G_Magma_InitVars = {
    EFFECT_SS_G_MAGMA,
    EffectSsGMagma_Init,
};

extern Gfx D_04024410[];

u32 EffectSsGMagma_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsGMagmaInitParams* initParams = (EffectSsGMagmaInitParams*)initParamsx;
    Vec3f zeroVecSrc = { 0.0f, 0.0f, 0.0f };
    Vec3f zeroVec;

    zeroVec = zeroVecSrc;
    this->accel = zeroVec;
    this->velocity = zeroVec;
    this->pos = initParams->pos;
    this->draw = EffectSsGMagma_Draw;
    this->update = EffectSsGMagma_Update;
    this->gfx = SEGMENTED_TO_VIRTUAL(D_04024410);
    this->life = 16;
    this->regs[SS_G_SCALE] = (s16)(Math_Rand_ZeroOne() * 100.0f) + 200;
    this->regs[SS_G_TEX_IDX] = 0;
    this->regs[SS_G_TEX_IDX_STEP] = 50;
    this->regs[SS_G_PRIM_R] = 255;
    this->regs[SS_G_PRIM_G] = 255;
    this->regs[SS_G_PRIM_B] = 0;
    this->regs[SS_G_PRIM_A] = 255;
    this->regs[SS_G_ENV_R] = 255;
    this->regs[SS_G_ENV_G] = 0;
    this->regs[SS_G_ENV_B] = 0;
    this->regs[SS_G_ENV_A] = 0;

    return 1;
}

UNK_PTR D_809A6334[] = {
    0x04023810, 0x04023990, 0x04023B10, 0x04023C90, 0x04023E10, 0x04023F90, 0x04024110, 0x04024290
};

void EffectSsGMagma_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    s16 texIdx = this->regs[SS_G_TEX_IDX] / 100;

    if (texIdx > 7) {
        texIdx = 7;
    }

    EffectSs_DrawGEffect(globalCtx, this, D_809A6334[texIdx]);
}

void EffectSsGMagma_Update(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    this->regs[SS_G_TEX_IDX] += this->regs[SS_G_TEX_IDX_STEP];
}
