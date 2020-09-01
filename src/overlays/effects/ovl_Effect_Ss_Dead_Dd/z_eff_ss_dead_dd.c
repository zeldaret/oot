/*
 * File: z_eff_ss_dead_dd.c
 * Overlay: ovl_Effect_Ss_Dead_Dd
 * Description:
 */

#include "z_eff_ss_dead_dd.h"

typedef enum {
    /* 0x00 */ SS_DEAD_DD_SCALE,
    /* 0x02 */ SS_DEAD_DD_PRIM_R = 2,
    /* 0x03 */ SS_DEAD_DD_PRIM_G,
    /* 0x04 */ SS_DEAD_DD_PRIM_B,
    /* 0x05 */ SS_DEAD_DD_ALPHA,
    /* 0x06 */ SS_DEAD_DD_ENV_R,
    /* 0x07 */ SS_DEAD_DD_ENV_G,
    /* 0x08 */ SS_DEAD_DD_ENV_B,
    /* 0x09 */ SS_DEAD_DD_SCALE_STEP,
    /* 0x0A */ SS_DEAD_DD_ALPHA_STEP,
    /* 0x0B */ SS_DEAD_DD_ALPHA_MODE // if mode is 0 alpha decreases over time, otherwise it increases
} EffectSsDeadDdRegs;

u32 EffectSsDeadDd_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void func_809A12B4(GlobalContext* globalCtx, u32 index, EffectSs* this);
void func_809A14B0(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_Dead_Dd_InitVars = {
    EFFECT_SS_DEAD_DD,
    EffectSsDeadDd_Init,
};

extern Mtx D_01000000;

u32 EffectSsDeadDd_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    s32 i;
    EffectSsDeadDdInitParams* initParams = (EffectSsDeadDdInitParams*)initParamsx;

    if (initParams->drawMode == 0) {
        this->pos = initParams->pos;
        this->velocity = initParams->velocity;
        this->accel = initParams->accel;
        this->life = initParams->life;
        this->regs[SS_DEAD_DD_SCALE_STEP] = initParams->scaleStep;
        this->regs[SS_DEAD_DD_ALPHA_MODE] = initParams->alphaStep;

        if (initParams->alphaStep != 0) {
            this->regs[SS_DEAD_DD_ALPHA_STEP] = initParams->alphaStep;
        } else {
            this->regs[SS_DEAD_DD_ALPHA_STEP] = initParams->alpha / initParams->life;
        }

        this->draw = func_809A12B4;
        this->update = func_809A14B0;
        this->regs[SS_DEAD_DD_SCALE] = initParams->scale;
        this->regs[SS_DEAD_DD_PRIM_R] = initParams->primColor.r;
        this->regs[SS_DEAD_DD_PRIM_G] = initParams->primColor.g;
        this->regs[SS_DEAD_DD_PRIM_B] = initParams->primColor.b;
        this->regs[SS_DEAD_DD_ALPHA] = initParams->alpha;
        this->regs[SS_DEAD_DD_ENV_R] = initParams->envColor.r;
        this->regs[SS_DEAD_DD_ENV_G] = initParams->envColor.g;
        this->regs[SS_DEAD_DD_ENV_B] = initParams->envColor.b;

    } else if (initParams->drawMode == 1) {
        this->life = initParams->life;
        this->regs[SS_DEAD_DD_SCALE_STEP] = initParams->scaleStep;
        this->regs[SS_DEAD_DD_ALPHA_MODE] = 0;
        this->regs[SS_DEAD_DD_ALPHA_STEP] = 155 / initParams->life;
        this->regs[SS_DEAD_DD_SCALE] = initParams->scale;
        this->regs[SS_DEAD_DD_PRIM_R] = 255;
        this->regs[SS_DEAD_DD_PRIM_G] = 255;
        this->regs[SS_DEAD_DD_PRIM_B] = 155;
        this->regs[SS_DEAD_DD_ALPHA] = 155;
        this->regs[SS_DEAD_DD_ENV_R] = 250;
        this->regs[SS_DEAD_DD_ENV_G] = 180;
        this->regs[SS_DEAD_DD_ENV_B] = 0;
        this->draw = func_809A12B4;
        this->update = func_809A14B0;

        for (i = initParams->num; i > 0; i--) {
            this->pos.x = ((Math_Rand_ZeroOne() - 0.5f) * initParams->randPosScale) + initParams->pos.x;
            this->pos.y = ((Math_Rand_ZeroOne() - 0.5f) * initParams->randPosScale) + initParams->pos.y;
            this->pos.z = ((Math_Rand_ZeroOne() - 0.5f) * initParams->randPosScale) + initParams->pos.z;
            this->accel.x = this->velocity.x = (Math_Rand_ZeroOne() - 0.5f) * 2.0f;
            this->accel.y = this->velocity.y = (Math_Rand_ZeroOne() - 0.5f) * 2.0f;
            this->accel.z = this->velocity.z = (Math_Rand_ZeroOne() - 0.5f) * 2.0f;
        }

    } else {
        osSyncPrintf("Effect_SS_Dd_disp_mode():mode_swが変です。\n");
        return 0;
    }

    return 1;
}

void func_809A12B4(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    MtxF spDC;
    MtxF sp9C;
    MtxF sp5C;
    Mtx* mtx;
    f32 scale;

    OPEN_DISPS(gfxCtx, "../z_eff_ss_dead_dd.c", 214);

    scale = this->regs[SS_DEAD_DD_SCALE] * 0.01f;
    SkinMatrix_SetTranslate(&spDC, this->pos.x, this->pos.y, this->pos.z);
    SkinMatrix_SetScale(&sp9C, scale, scale, scale);
    SkinMatrix_MtxFMtxFMult(&spDC, &sp9C, &sp5C);

    mtx = SkinMatrix_MtxFToNewMtx(gfxCtx, &sp5C);

    if (mtx != NULL) {
        func_80094BC4(gfxCtx);
        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, this->regs[SS_DEAD_DD_PRIM_R], this->regs[SS_DEAD_DD_PRIM_G],
                        this->regs[SS_DEAD_DD_PRIM_B], this->regs[SS_DEAD_DD_ALPHA]);
        gDPSetEnvColor(oGfxCtx->polyXlu.p++, this->regs[SS_DEAD_DD_ENV_R], this->regs[SS_DEAD_DD_ENV_G],
                       this->regs[SS_DEAD_DD_ENV_B], this->regs[SS_DEAD_DD_ALPHA]);
        gSPMatrix(oGfxCtx->polyXlu.p++, mtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPMatrix(oGfxCtx->polyXlu.p++, &D_01000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
        gDPSetCombineLERP(oGfxCtx->polyXlu.p++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, TEXEL0,
                          0, PRIMITIVE, 0);
        gSPDisplayList(oGfxCtx->polyXlu.p++, D_04037730);
    }

    CLOSE_DISPS(gfxCtx, "../z_eff_ss_dead_dd.c", 259);
}

void func_809A14B0(GlobalContext* globalCtx, u32 index, EffectSs* this) {

    this->regs[SS_DEAD_DD_SCALE] += this->regs[SS_DEAD_DD_SCALE_STEP];

    if (this->regs[SS_DEAD_DD_SCALE] < 0) {
        this->regs[SS_DEAD_DD_SCALE] = 0;
    }

    if (this->regs[SS_DEAD_DD_ALPHA_MODE] != 0) {
        this->regs[SS_DEAD_DD_ALPHA] += this->regs[SS_DEAD_DD_ALPHA_STEP];
        if (this->regs[SS_DEAD_DD_ALPHA] > 255) {
            this->regs[SS_DEAD_DD_ALPHA] = 255;
        }
    } else {
        if (this->regs[SS_DEAD_DD_ALPHA] < this->regs[SS_DEAD_DD_ALPHA_STEP]) {
            this->regs[SS_DEAD_DD_ALPHA] = 0;
        } else {
            this->regs[SS_DEAD_DD_ALPHA] -= this->regs[SS_DEAD_DD_ALPHA_STEP];
        }
    }
}
