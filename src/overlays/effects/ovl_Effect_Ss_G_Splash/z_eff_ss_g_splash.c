/*
 * File: z_eff_ss_g_splash.c
 * Overlay: ovl_Effect_Ss_G_Splash
 * Description: Splash
 */

#include "z_eff_ss_g_splash.h"

typedef enum {
    /* 0x00 */ SS_G_SPLASH_TEX_IDX,
    /* 0x01 */ SS_G_SPLASH_SCALE,
    /* 0x02 */ SS_G_SPLASH_TEX_IDX_STEP,
    /* 0x03 */ SS_G_SPLASH_PRIM_R,
    /* 0x04 */ SS_G_SPLASH_PRIM_G,
    /* 0x05 */ SS_G_SPLASH_PRIM_B,
    /* 0x06 */ SS_G_SPLASH_PRIM_A,
    /* 0x07 */ SS_G_SPLASH_ENV_R,
    /* 0x08 */ SS_G_SPLASH_ENV_G,
    /* 0x09 */ SS_G_SPLASH_ENV_B,
    /* 0x0A */ SS_G_SPLASH_ENV_A,
    /* 0x0B */ SS_G_SPLASH_B
} EffectSsG_SplashRegs;

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

    this->displayList = SEGMENTED_TO_VIRTUAL(D_04027DF0);
    this->life = 8;
    this->regs[SS_G_SPLASH_SCALE] = initParams->scale;
    this->regs[SS_G_SPLASH_TEX_IDX] = 0;
    this->regs[SS_G_SPLASH_TEX_IDX_STEP] = 0x64;

    if (initParams->customColor) {
        this->regs[SS_G_SPLASH_PRIM_R] = initParams->primColor.r;
        this->regs[SS_G_SPLASH_PRIM_G] = initParams->primColor.g;
        this->regs[SS_G_SPLASH_PRIM_B] = initParams->primColor.b;
        this->regs[SS_G_SPLASH_PRIM_A] = initParams->primColor.a;
        this->regs[SS_G_SPLASH_ENV_R] = initParams->envColor.r;
        this->regs[SS_G_SPLASH_ENV_G] = initParams->envColor.g;
        this->regs[SS_G_SPLASH_ENV_B] = initParams->envColor.b;
        this->regs[SS_G_SPLASH_ENV_A] = initParams->envColor.a;
        this->regs[SS_G_SPLASH_B] = initParams->unk_0C;
    } else {
        switch (initParams->unk_0C) {
            case 0:
                this->regs[SS_G_SPLASH_PRIM_R] = 255;
                this->regs[SS_G_SPLASH_PRIM_G] = 255;
                this->regs[SS_G_SPLASH_PRIM_B] = 255;
                this->regs[SS_G_SPLASH_PRIM_A] = 200;
                this->regs[SS_G_SPLASH_ENV_R] = 255;
                this->regs[SS_G_SPLASH_ENV_G] = 255;
                this->regs[SS_G_SPLASH_ENV_B] = 255;
                this->regs[SS_G_SPLASH_ENV_A] = 200;
                this->regs[SS_G_SPLASH_B] = 0;
                break;
            case 1:
                this->regs[SS_G_SPLASH_PRIM_R] = 255;
                this->regs[SS_G_SPLASH_PRIM_G] = 255;
                this->regs[SS_G_SPLASH_PRIM_B] = 255;
                this->regs[SS_G_SPLASH_PRIM_A] = 255;
                this->regs[SS_G_SPLASH_ENV_R] = 255;
                this->regs[SS_G_SPLASH_ENV_G] = 255;
                this->regs[SS_G_SPLASH_ENV_B] = 255;
                this->regs[SS_G_SPLASH_ENV_A] = 255;
                this->regs[SS_G_SPLASH_B] = 1;
                break;
            case 2:
                this->regs[SS_G_SPLASH_PRIM_R] = 255;
                this->regs[SS_G_SPLASH_PRIM_G] = 255;
                this->regs[SS_G_SPLASH_PRIM_B] = 255;
                this->regs[SS_G_SPLASH_PRIM_A] = 200;
                this->regs[SS_G_SPLASH_ENV_R] = 255;
                this->regs[SS_G_SPLASH_ENV_G] = 255;
                this->regs[SS_G_SPLASH_ENV_B] = 255;
                this->regs[SS_G_SPLASH_ENV_A] = 200;
                this->regs[SS_G_SPLASH_B] = 2;
                break;
        }
    }
    return 1;
}

UNK_PTR D_809A7954[] = {
    0x040255F0, 0x04025AF0, 0x04025FF0, 0x040264F0, 0x040269F0, 0x04026EF0, 0x040273F0, 0x040278F0,
};

void EffectSsGSplash_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    s16 texIdx;

    switch (this->regs[SS_G_SPLASH_B]) {
        case 0:
            texIdx = this->regs[SS_G_SPLASH_TEX_IDX] / 0x64;
            if (texIdx >= 8) {
                texIdx = 7;
            }
            EffectSs_DrawGEffect(globalCtx, this, D_809A7954[texIdx]);
            break;

        case 1:
            texIdx = this->regs[SS_G_SPLASH_TEX_IDX] / 0x64;
            if (texIdx >= 8) {
                texIdx = 7;
            }
            EffectSs_DrawGEffect(globalCtx, this, D_809A7954[texIdx]);
            break;

        case 2:
            texIdx = this->regs[SS_G_SPLASH_TEX_IDX] / 0x64;
            if (texIdx >= 8) {
                texIdx = 7;
            }
            EffectSs_DrawGEffect(globalCtx, this, D_809A7954[texIdx]);
            break;

        default:
            break;
    }
}

void EffectSsGSplash_Update(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    Vec3f newSplashPos;

    if ((this->regs[SS_G_SPLASH_B] == 1) && (this->life == 5)) {
        newSplashPos = this->pos;
        newSplashPos.y += ((this->regs[SS_G_SPLASH_SCALE] * 20) * 0.002f);
        EffectSsGSplash_Spawn(globalCtx, &newSplashPos, 0, 0, 2, this->regs[SS_G_SPLASH_SCALE] / 2);
    }

    this->regs[SS_G_SPLASH_TEX_IDX] += this->regs[SS_G_SPLASH_TEX_IDX_STEP];
}
