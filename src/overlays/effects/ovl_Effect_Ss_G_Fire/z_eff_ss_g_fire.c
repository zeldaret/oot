/*
 * File: z_eff_ss_g_fire.c
 * Overlay: ovl_Effect_Ss_G_Fire
 * Description:
 */

#include "z_eff_ss_g_fire.h"

typedef enum {
    /* 0x00 */ SS_G_FIRE_TEX_IDX,
    /* 0x01 */ SS_G_FIRE_SCALE,
    /* 0x02 */ SS_G_FIRE_TEX_IDX_STEP,
    /* 0x03 */ SS_G_FIRE_PRIM_R,
    /* 0x04 */ SS_G_FIRE_PRIM_G,
    /* 0x05 */ SS_G_FIRE_PRIM_B,
    /* 0x06 */ SS_G_FIRE_PRIM_A,
    /* 0x07 */ SS_G_FIRE_ENV_R,
    /* 0x08 */ SS_G_FIRE_ENV_G,
    /* 0x09 */ SS_G_FIRE_ENV_B,
    /* 0x0A */ SS_G_FIRE_ENV_A
} EffectSsG_FireRegs;

u32 EffectSsGFire_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void func_809A6010(GlobalContext* globalCtx, u32 index, EffectSs* this);
void func_809A60B4(GlobalContext* globalCtx, u32 index, EffectSs* this);

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
    this->draw = func_809A6010;
    this->update = func_809A60B4;
    this->displayList = SEGMENTED_TO_VIRTUAL(D_0401C220);
    this->life = 8;
    this->flags = 0;
    this->regs[SS_G_FIRE_SCALE] = 200;
    this->regs[SS_G_FIRE_TEX_IDX] = 0;
    this->regs[SS_G_FIRE_TEX_IDX_STEP] = 50;
    this->regs[SS_G_FIRE_PRIM_R] = 255;
    this->regs[SS_G_FIRE_PRIM_G] = 0xDC;
    this->regs[SS_G_FIRE_PRIM_B] = 0x50;
    this->regs[SS_G_FIRE_PRIM_A] = 255;
    this->regs[SS_G_FIRE_ENV_R] = 130;
    this->regs[SS_G_FIRE_ENV_G] = 30;
    this->regs[SS_G_FIRE_ENV_B] = 0;
    this->regs[SS_G_FIRE_ENV_A] = 0;

    return 1;
}

void func_809A6010(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    UNK_PTR D_809A60E4[] = {
        0x0401A220, 0x0401A620, 0x0401AA20, 0x0401AE20, 0x0401B220, 0x0401B620, 0x0401BA20, 0x0401BE20,
    };
    s16 texIdx = (this->regs[SS_G_FIRE_TEX_IDX] / 100) % 7;

    EffectSs_DrawGEffect(globalCtx, this, D_809A60E4[texIdx]);
}

void func_809A60B4(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    this->regs[SS_G_FIRE_TEX_IDX] += this->regs[SS_G_FIRE_TEX_IDX_STEP];
}
