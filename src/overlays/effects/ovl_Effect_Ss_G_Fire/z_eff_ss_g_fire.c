/*
 * File: z_eff_ss_g_fire.c
 * Overlay: ovl_Effect_Ss_G_Fire
 * Description: Flame Footprints
 */

#include "z_eff_ss_g_fire.h"

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

u32 EffectSsGFire_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsGFire_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsGFire_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_G_Fire_InitVars = {
    EFFECT_SS_G_FIRE,
    EffectSsGFire_Init,
};

extern Gfx D_0401C220[];

u32 EffectSsGFire_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsGFireInitParams* initParams = (EffectSsGFireInitParams*)initParamsx;
    Vec3f zeroVecSrc = { 0.0f, 0.0f, 0.0f };
    Vec3f zeroVec;

    zeroVec = zeroVecSrc;
    this->accel = zeroVec;
    this->velocity = zeroVec;
    this->pos = initParams->pos;
    this->draw = EffectSsGFire_Draw;
    this->update = EffectSsGFire_Update;
    this->gfx = SEGMENTED_TO_VIRTUAL(D_0401C220);
    this->life = 8;
    this->flags = 0;
    this->rScale = 200;
    this->rTexIdx = 0;
    this->rTexIdxStep = 50;
    this->rPrimColorR = 255;
    this->rPrimColorG = 220;
    this->rPrimColorB = 80;
    this->rPrimColorA = 255;
    this->rEnvColorR = 130;
    this->rEnvColorG = 30;
    this->rEnvColorB = 0;
    this->rEnvColorA = 0;

    return 1;
}

void EffectSsGFire_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    void* textures[] = {
        0x0401A220, 0x0401A620, 0x0401AA20, 0x0401AE20, 0x0401B220, 0x0401B620, 0x0401BA20, 0x0401BE20,
    };
    s16 texIdx = (this->rTexIdx / 100) % 7;

    EffectSs_DrawGEffect(globalCtx, this, textures[texIdx]);
}

void EffectSsGFire_Update(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    this->rTexIdx += this->rTexIdxStep;
}
