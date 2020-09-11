/*
 * File: z_eff_ss_g_splash.c
 * Overlay: ovl_Effect_Ss_G_Splash
 * Description: Splash
 */

#include "z_eff_ss_g_splash.h"

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
#define rType regs[11] // in EffectSs_DrawGEffect this reg is used as an object bank index

u32 EffectSsGSplash_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParams);
void EffectSsGSplash_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsGSplash_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_G_Splash_InitVars = {
    EFFECT_SS_G_SPLASH,
    EffectSsGSplash_Init,
};

extern Gfx D_04027DF0[];

u32 EffectSsGSplash_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsGSplashInitParams* initParams = (EffectSsGSplashInitParams*)initParamsx;
    Vec3f emptyVecSrc = { 0.0f, 0.0f, 0.0f };
    Vec3f emptyVec;

    emptyVec = emptyVecSrc;
    this->accel = emptyVec;
    this->velocity = emptyVec;
    this->pos = initParams->pos;
    this->draw = EffectSsGSplash_Draw;
    this->update = EffectSsGSplash_Update;

    if (initParams->scale == 0) {
        initParams->scale = 600;
    }

    this->gfx = SEGMENTED_TO_VIRTUAL(D_04027DF0);
    this->life = 8;
    this->rScale = initParams->scale;
    this->rTexIdx = 0;
    this->rTexIdxStep = 100;

    if (initParams->customColor) {
        this->rPrimColorR = initParams->primColor.r;
        this->rPrimColorG = initParams->primColor.g;
        this->rPrimColorB = initParams->primColor.b;
        this->rPrimColorA = initParams->primColor.a;
        this->rEnvColorR = initParams->envColor.r;
        this->rEnvColorG = initParams->envColor.g;
        this->rEnvColorB = initParams->envColor.b;
        this->rEnvColorA = initParams->envColor.a;
        this->rType = initParams->type;
    } else {
        switch (initParams->type) {
            case 0:
                this->rPrimColorR = 255;
                this->rPrimColorG = 255;
                this->rPrimColorB = 255;
                this->rPrimColorA = 200;
                this->rEnvColorR = 255;
                this->rEnvColorG = 255;
                this->rEnvColorB = 255;
                this->rEnvColorA = 200;
                this->rType = 0;
                break;
            case 1:
                this->rPrimColorR = 255;
                this->rPrimColorG = 255;
                this->rPrimColorB = 255;
                this->rPrimColorA = 255;
                this->rEnvColorR = 255;
                this->rEnvColorG = 255;
                this->rEnvColorB = 255;
                this->rEnvColorA = 255;
                this->rType = 1;
                break;
            case 2:
                this->rPrimColorR = 255;
                this->rPrimColorG = 255;
                this->rPrimColorB = 255;
                this->rPrimColorA = 200;
                this->rEnvColorR = 255;
                this->rEnvColorG = 255;
                this->rEnvColorB = 255;
                this->rEnvColorA = 200;
                this->rType = 2;
                break;
        }
    }
    return 1;
}

static void* sTextures[] = {
    0x040255F0, 0x04025AF0, 0x04025FF0, 0x040264F0, 0x040269F0, 0x04026EF0, 0x040273F0, 0x040278F0,
};

void EffectSsGSplash_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    s16 texIdx;

    switch (this->rType) {
        case 0:
            texIdx = this->rTexIdx / 0x64;
            if (texIdx >= 8) {
                texIdx = 7;
            }
            EffectSs_DrawGEffect(globalCtx, this, sTextures[texIdx]);
            break;

        case 1:
            texIdx = this->rTexIdx / 0x64;
            if (texIdx >= 8) {
                texIdx = 7;
            }
            EffectSs_DrawGEffect(globalCtx, this, sTextures[texIdx]);
            break;

        case 2:
            texIdx = this->rTexIdx / 0x64;
            if (texIdx >= 8) {
                texIdx = 7;
            }
            EffectSs_DrawGEffect(globalCtx, this, sTextures[texIdx]);
            break;

        default:
            break;
    }
}

void EffectSsGSplash_Update(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    Vec3f newSplashPos;

    if ((this->rType == 1) && (this->life == 5)) {
        newSplashPos = this->pos;
        newSplashPos.y += ((this->rScale * 20) * 0.002f);
        EffectSsGSplash_Spawn(globalCtx, &newSplashPos, 0, 0, 2, this->rScale / 2);
    }

    this->rTexIdx += this->rTexIdxStep;
}
