/*
 * File: z_eff_ss_kirakira.c
 * Overlay: ovl_Effect_Ss_KiraKira
 * Description: Sparkles
 */

#include "z_eff_ss_kirakira.h"

typedef enum {
    /* 0x00 */ SS_KIRAKIRA_YAW_STEP,
    /* 0x01 */ SS_KIRAKIRA_YAW,
    /* 0x02 */ SS_KIRAKIRA_PRIM_R,
    /* 0x03 */ SS_KIRAKIRA_PRIM_G,
    /* 0x04 */ SS_KIRAKIRA_PRIM_B,
    /* 0x05 */ SS_KIRAKIRA_PRIM_A,
    /* 0x06 */ SS_KIRAKIRA_ENV_R,
    /* 0x07 */ SS_KIRAKIRA_ENV_G,
    /* 0x08 */ SS_KIRAKIRA_ENV_B,
    /* 0x09 */ SS_KIRAKIRA_ENV_A,
    /* 0x0A */ SS_KIRAKIRA_ALPHA_STEP,
    /* 0x0B */ SS_KIRAKIRA_SCALE,
    /* 0x0C */ SS_KIRAKIRA_LIFE_START
} EffectSsKiraKiraRegs;

u32 EffectSsKiraKira_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsKiraKira_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void func_809AABF0(GlobalContext* globalCtx, u32 index, EffectSs* this);
void func_809AACAC(GlobalContext* globalCtx, u32 index, EffectSs* this);
void func_809AAD6C(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_KiraKira_InitVars = {
    EFFECT_SS_KIRAKIRA,
    EffectSsKiraKira_Init,
};

extern Gfx D_04037880[];

u32 EffectSsKiraKira_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsKiraKiraInitParams* initParams = (EffectSsKiraKiraInitParams*)initParamsx;

    this->pos = initParams->pos;
    this->velocity = initParams->velocity;
    this->accel = initParams->accel;

    if ((this->life = initParams->life) < 0) {
        this->life = -this->life;
        this->displayList = SEGMENTED_TO_VIRTUAL(D_04037880);
        this->update = func_809AAD6C;
        this->regs[SS_KIRAKIRA_ENV_A] = initParams->scale;
        this->regs[SS_KIRAKIRA_SCALE] = 0;
    } else {
        this->displayList = SEGMENTED_TO_VIRTUAL(D_04037880);

        if (initParams->updateMode == 0) {
            this->update = func_809AABF0;
        } else {
            this->update = func_809AACAC;
        }

        this->regs[SS_KIRAKIRA_ENV_A] = initParams->envColor.a;
        this->regs[SS_KIRAKIRA_SCALE] = initParams->scale;
    }

    this->draw = EffectSsKiraKira_Draw;
    this->regs[SS_KIRAKIRA_YAW_STEP] = initParams->yaw;
    this->regs[SS_KIRAKIRA_YAW] = initParams->yawStep;
    this->regs[SS_KIRAKIRA_PRIM_R] = initParams->primColor.r;
    this->regs[SS_KIRAKIRA_PRIM_G] = initParams->primColor.g;
    this->regs[SS_KIRAKIRA_PRIM_B] = initParams->primColor.b;
    this->regs[SS_KIRAKIRA_PRIM_A] = initParams->primColor.a;
    this->regs[SS_KIRAKIRA_ENV_R] = initParams->envColor.r;
    this->regs[SS_KIRAKIRA_ENV_G] = initParams->envColor.g;
    this->regs[SS_KIRAKIRA_ENV_B] = initParams->envColor.b;
    this->regs[SS_KIRAKIRA_ALPHA_STEP] = initParams->alphaStep;
    this->regs[SS_KIRAKIRA_LIFE_START] = initParams->life;

    return 1;
}

void EffectSsKiraKira_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx;
    f32 scale;
    s32 pad;
    MtxF mtxTrans;
    MtxF mtxRotY;
    MtxF mtxScale;
    MtxF mtxPersTrans;
    MtxF mtxRotYPersTrans;
    MtxF mtxResult;
    Mtx* mtx;

    scale = this->regs[SS_KIRAKIRA_SCALE] / 10000.0f;
    gfxCtx = globalCtx->state.gfxCtx;

    OPEN_DISPS(gfxCtx, "../z_eff_ss_kirakira.c", 257);

    SkinMatrix_SetTranslate(&mtxTrans, this->pos.x, this->pos.y, this->pos.z);
    SkinMatrix_SetRotateRPY(&mtxRotY, 0, 0, this->regs[SS_KIRAKIRA_YAW]);
    SkinMatrix_SetScale(&mtxScale, scale, scale, 1.0f);
    SkinMatrix_MtxFMtxFMult(&mtxTrans, &globalCtx->mf_11DA0, &mtxPersTrans);
    SkinMatrix_MtxFMtxFMult(&mtxPersTrans, &mtxRotY, &mtxRotYPersTrans);
    SkinMatrix_MtxFMtxFMult(&mtxRotYPersTrans, &mtxScale, &mtxResult);
    gSPMatrix(oGfxCtx->polyXlu.p++, &gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    mtx = SkinMatrix_MtxFToNewMtx(oGfxCtx, &mtxResult);

    if (mtx != NULL) {
        gSPMatrix(oGfxCtx->polyXlu.p++, mtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        func_80093C14(oGfxCtx);
        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x80, 0x80, this->regs[SS_KIRAKIRA_PRIM_R],
                        this->regs[SS_KIRAKIRA_PRIM_G], this->regs[SS_KIRAKIRA_PRIM_B],
                        (((s8)((55.0f / this->regs[SS_KIRAKIRA_LIFE_START]) * this->life) + 200)));
        gDPSetEnvColor(oGfxCtx->polyXlu.p++, this->regs[SS_KIRAKIRA_ENV_R], this->regs[SS_KIRAKIRA_ENV_G],
                       this->regs[SS_KIRAKIRA_ENV_B], this->regs[SS_KIRAKIRA_ENV_A]);
        gSPDisplayList(oGfxCtx->polyXlu.p++, this->displayList);
    }

    CLOSE_DISPS(gfxCtx, "../z_eff_ss_kirakira.c", 301);
}

void func_809AABF0(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    this->accel.x = (Math_Rand_ZeroOne() * 0.4f) - 0.2f;
    this->accel.z = (Math_Rand_ZeroOne() * 0.4f) - 0.2f;
    this->regs[SS_KIRAKIRA_ENV_A] += this->regs[SS_KIRAKIRA_ALPHA_STEP];

    if (this->regs[SS_KIRAKIRA_ENV_A] < 0) {
        this->regs[SS_KIRAKIRA_ENV_A] = 0;
        this->regs[SS_KIRAKIRA_ALPHA_STEP] = -this->regs[SS_KIRAKIRA_ALPHA_STEP];
    } else {
        if (this->regs[SS_KIRAKIRA_ENV_A] >= 256) {
            this->regs[SS_KIRAKIRA_ENV_A] = 255;
            this->regs[SS_KIRAKIRA_ALPHA_STEP] = -this->regs[SS_KIRAKIRA_ALPHA_STEP];
        }
    }

    this->regs[SS_KIRAKIRA_YAW] += this->regs[SS_KIRAKIRA_YAW_STEP];
}

void func_809AACAC(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    this->velocity.x *= 0.95f;
    this->velocity.z *= 0.95f;
    this->accel.x = Math_Rand_CenteredFloat(0.2f);
    this->accel.z = Math_Rand_CenteredFloat(0.2f);
    this->regs[SS_KIRAKIRA_ENV_A] += this->regs[SS_KIRAKIRA_ALPHA_STEP];

    if (this->regs[SS_KIRAKIRA_ENV_A] < 0) {
        this->regs[SS_KIRAKIRA_ENV_A] = 0;
        this->regs[SS_KIRAKIRA_ALPHA_STEP] = -this->regs[SS_KIRAKIRA_ALPHA_STEP];
    } else {
        if (this->regs[SS_KIRAKIRA_ENV_A] >= 256) {
            this->regs[SS_KIRAKIRA_ENV_A] = 255;
            this->regs[SS_KIRAKIRA_ALPHA_STEP] = -this->regs[SS_KIRAKIRA_ALPHA_STEP];
        }
    }

    this->regs[SS_KIRAKIRA_YAW] += this->regs[SS_KIRAKIRA_YAW_STEP];
}

void func_809AAD6C(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    this->regs[SS_KIRAKIRA_SCALE] =
        this->regs[SS_KIRAKIRA_ENV_A] * Math_Sins((32768.0f / this->regs[SS_KIRAKIRA_LIFE_START]) * this->life);
}
