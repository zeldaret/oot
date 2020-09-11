/*
 * File: z_eff_ss_g_magma.c
 * Overlay: ovl_Effect_Ss_G_Magma
 * Description: Magma Bubbles
 */

#include "z_eff_ss_g_magma.h"

#define rTexIdx regs[0]
#define rScale regs[1]
#define rTexIdxStep regs[2]
#define rPrimColorR regs[3]
#define rPrimColorG regs[4]
#define rPrimColorB regs[5]
#define rPrimColorA regs[6]
#define rEnvColorR regs[7]
#define rEnvColorG regs[8]
#define rEnvColorB regs[9]
#define rEnvColorA regs[10]

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
    this->rScale = (s16)(Math_Rand_ZeroOne() * 100.0f) + 200;
    this->rTexIdx = 0;
    this->rTexIdxStep = 50;
    this->rPrimColorR = 255;
    this->rPrimColorG = 255;
    this->rPrimColorB = 0;
    this->rPrimColorA = 255;
    this->rEnvColorR = 255;
    this->rEnvColorG = 0;
    this->rEnvColorB = 0;
    this->rEnvColorA = 0;

    return 1;
}

static void* sTextures[] = { 0x04023810, 0x04023990, 0x04023B10, 0x04023C90,
                             0x04023E10, 0x04023F90, 0x04024110, 0x04024290 };

void EffectSsGMagma_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    s16 texIdx = this->rTexIdx / 100;

    if (texIdx > 7) {
        texIdx = 7;
    }

    EffectSs_DrawGEffect(globalCtx, this, sTextures[texIdx]);
}

void EffectSsGMagma_Update(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    this->rTexIdx += this->rTexIdxStep;
}
