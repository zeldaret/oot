/*
 * File: z_eff_ss_g_splash.c
 * Overlay: ovl_Effect_Ss_G_Splash
 * Description:
 */

#include "z_eff_ss_g_splash.h"

typedef enum {
    /* 0x00 */ SS_G_SPLASH_0,
    /* 0x01 */ SS_G_SPLASH_SCALE,
    /* 0x02 */ SS_G_SPLASH_2,
    /* 0x03 */ SS_G_SPLASH_PRIM_R,
    /* 0x04 */ SS_G_SPLASH_PRIM_G,
    /* 0x05 */ SS_G_SPLASH_PRIM_B,
    /* 0x06 */ SS_G_SPLASH_PRIM_A,
    /* 0x07 */ SS_G_SPLASH_ENV_R,
    /* 0x08 */ SS_G_SPLASH_ENV_G,
    /* 0x09 */ SS_G_SPLASH_ENV_B,
    /* 0x0A */ SS_G_SPLASH_ENV_A,
    /* 0x0B */ SS_G_SPLASH_OBJ_BANK_IDX,
    /* 0x0C */ SS_G_SPLASH_C,
} EffectSsG_SplashRegs;

u32 EffectSsGSplash_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParams);
void func_809A7760(GlobalContext* globalCtx, u32 index, EffectSs* this);
void func_809A7864(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_G_Splash_InitVars = {
    EFFECT_SS_G_SPLASH,
    EffectSsGSplash_Init,
};

UNK_PTR D_809A7954[] = {
    0x040255F0, 0x04025AF0, 0x04025FF0, 0x040264F0, 0x040269F0, 0x04026EF0, 0x040273F0, 0x040278F0,
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

    this->draw = func_809A7760;
    this->update = func_809A7864;

    if (initParams->scale == 0) {
        initParams->scale = 600;
    }

    this->displayList = SEGMENTED_TO_VIRTUAL(D_04027DF0);
    this->life = 8;
    this->regs[SS_G_SPLASH_SCALE] = initParams->scale;
    this->regs[SS_G_SPLASH_0] = 0;
    this->regs[SS_G_SPLASH_2] = 0x64;

    if (initParams->customColor) {
        this->regs[SS_G_SPLASH_PRIM_R] = initParams->primColor.r;
        this->regs[SS_G_SPLASH_PRIM_G] = initParams->primColor.g;
        this->regs[SS_G_SPLASH_PRIM_B] = initParams->primColor.b;
        this->regs[SS_G_SPLASH_PRIM_A] = initParams->primColor.a;
        this->regs[SS_G_SPLASH_ENV_R] = initParams->envColor.r;
        this->regs[SS_G_SPLASH_ENV_G] = initParams->envColor.g;
        this->regs[SS_G_SPLASH_ENV_B] = initParams->envColor.b;
        this->regs[SS_G_SPLASH_ENV_A] = initParams->envColor.a;
        this->regs[SS_G_SPLASH_OBJ_BANK_IDX] = initParams->unk_0C;
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
                this->regs[SS_G_SPLASH_OBJ_BANK_IDX] = 0;
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
                this->regs[SS_G_SPLASH_OBJ_BANK_IDX] = 1;
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
                this->regs[SS_G_SPLASH_OBJ_BANK_IDX] = 2;
                break;
        }
    }
    return 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_G_Splash/func_809A7760.s")

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_G_Splash/func_809A7864.s")
void func_809A7864(GlobalContext *globalCtx, u32 index, EffectSs *this) {
    s32 newSplashScale;
    Vec3f newSplashPos;
    

    if ((this->regs[SS_G_SPLASH_OBJ_BANK_IDX] == 1) && (this->life == 5)) {
        newSplashPos = this->pos;
        newSplashPos.y += ((this->regs[SS_G_SPLASH_SCALE] * 20) * 0.002f);
        newSplashScale = this->regs[SS_G_SPLASH_SCALE] >> 1;

        if (this->regs[SS_G_SPLASH_SCALE] < 0) {
            newSplashScale = (this->regs[SS_G_SPLASH_SCALE] + 1) >> 1;
        }

        func_8002949C(globalCtx, &newSplashPos, 0, 0, 2, newSplashScale);
    }
    this->regs[SS_G_SPLASH_0] += this->regs[SS_G_SPLASH_2];
}

