/*
 * File: z_eff_ss_g_ripple.c
 * Overlay: ovl_Effect_Ss_G_Ripple
 * Description: Water Ripple
 */

#include "z_eff_ss_g_ripple.h"

typedef enum {
    /* 0x00 */ SS_G_RIPPLE_WATERBOX_NUM,
    /* 0x01 */ SS_G_RIPPLE_RADIUS,
    /* 0x02 */ SS_G_RIPPLE_RADIUS_MAX,
    /* 0x03 */ SS_G_RIPPLE_PRIM_R,
    /* 0x04 */ SS_G_RIPPLE_PRIM_G,
    /* 0x05 */ SS_G_RIPPLE_PRIM_B,
    /* 0x06 */ SS_G_RIPPLE_PRIM_A,
    /* 0x07 */ SS_G_RIPPLE_ENV_R,
    /* 0x08 */ SS_G_RIPPLE_ENV_G,
    /* 0x09 */ SS_G_RIPPLE_ENV_B,
    /* 0x0A */ SS_G_RIPPLE_ENV_A,
    /* 0x0B */ SS_G_RIPPLE_LIFE
} EffectSsG_RippleRegs;

u32 EffectSsGRipple_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsGRipple_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsGRipple_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_G_Ripple_InitVars = {
    EFFECT_SS_G_RIPPLE,
    EffectSsGRipple_Init,
};

extern Gfx D_040254B0[];
extern Gfx D_040244B0[];

u32 EffectSsGRipple_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    s32 pad;
    Vec3f zeroVecSrc = { 0.0f, 0.0f, 0.0f };
    WaterBox* waterBox;
    EffectSsGRippleInitParams* initParams = (EffectSsGRippleInitParams*)initParamsx;
    Vec3f zeroVec;

    waterBox = NULL;
    zeroVec = zeroVecSrc;
    this->accel = zeroVec;
    this->velocity = zeroVec;
    this->pos = initParams->pos;
    this->gfx = SEGMENTED_TO_VIRTUAL(D_040254B0);
    this->life = initParams->life + 20;
    this->flags = 0;
    this->draw = EffectSsGRipple_Draw;
    this->update = EffectSsGRipple_Update;
    this->regs[SS_G_RIPPLE_RADIUS] = initParams->radius;
    this->regs[SS_G_RIPPLE_RADIUS_MAX] = initParams->radiusMax;
    this->regs[SS_G_RIPPLE_LIFE] = initParams->life;
    this->regs[SS_G_RIPPLE_PRIM_R] = 255;
    this->regs[SS_G_RIPPLE_PRIM_G] = 255;
    this->regs[SS_G_RIPPLE_PRIM_B] = 255;
    this->regs[SS_G_RIPPLE_PRIM_A] = 255;
    this->regs[SS_G_RIPPLE_ENV_R] = 255;
    this->regs[SS_G_RIPPLE_ENV_G] = 255;
    this->regs[SS_G_RIPPLE_ENV_B] = 255;
    this->regs[SS_G_RIPPLE_ENV_A] = 255;
    this->regs[SS_G_RIPPLE_WATERBOX_NUM] =
        func_8004239C(globalCtx, &globalCtx->colCtx, &initParams->pos, 3.0f, &waterBox);

    return 1;
}

void EffectSsGRipple_DrawRipple(GlobalContext* globalCtx, EffectSs* this, UNK_PTR segment) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    f32 radius;
    s32 pad;
    MtxF spDC;
    MtxF sp9C;
    MtxF sp5C;
    Mtx* mtx;
    f32 yPos;

    OPEN_DISPS(gfxCtx, "../z_eff_ss_g_ripple.c", 199);

    if (globalCtx) {}

    radius = this->regs[SS_G_RIPPLE_RADIUS] * 0.0025f;

    if ((this->regs[SS_G_RIPPLE_WATERBOX_NUM] != -1) &&
        (this->regs[SS_G_RIPPLE_WATERBOX_NUM] < globalCtx->colCtx.stat.colHeader->nbWaterBoxes)) {
        yPos = (this->regs[SS_G_RIPPLE_WATERBOX_NUM] + globalCtx->colCtx.stat.colHeader->waterBoxes)->unk_02;
    } else {
        yPos = this->pos.y;
    }

    SkinMatrix_SetTranslate(&spDC, this->pos.x, yPos, this->pos.z);
    SkinMatrix_SetScale(&sp9C, radius, radius, radius);
    SkinMatrix_MtxFMtxFMult(&spDC, &sp9C, &sp5C);

    mtx = SkinMatrix_MtxFToNewMtx(oGfxCtx, &sp5C);

    if (mtx != NULL) {
        gSPMatrix(oGfxCtx->polyXlu.p++, mtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        func_80094BC4(oGfxCtx);
        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, this->regs[SS_G_RIPPLE_PRIM_R], this->regs[SS_G_RIPPLE_PRIM_G],
                        this->regs[SS_G_RIPPLE_PRIM_B], this->regs[SS_G_RIPPLE_PRIM_A]);
        gDPSetEnvColor(oGfxCtx->polyXlu.p++, this->regs[SS_G_RIPPLE_ENV_R], this->regs[SS_G_RIPPLE_ENV_G],
                       this->regs[SS_G_RIPPLE_ENV_B], this->regs[SS_G_RIPPLE_ENV_A]);
        gDPSetAlphaDither(oGfxCtx->polyXlu.p++, G_AD_NOISE);
        gDPSetColorDither(oGfxCtx->polyXlu.p++, G_CD_NOISE);
        gSPDisplayList(oGfxCtx->polyXlu.p++, this->gfx);
    }

    CLOSE_DISPS(gfxCtx, "../z_eff_ss_g_ripple.c", 247);
}

void EffectSsGRipple_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    if (this->regs[SS_G_RIPPLE_LIFE] == 0) {
        EffectSsGRipple_DrawRipple(globalCtx, this, D_040244B0);
    }
}

void EffectSsGRipple_Update(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    f32 radius;
    f32 primAlpha;
    f32 envAlpha;

    if (DECR(this->regs[SS_G_RIPPLE_LIFE]) == 0) {
        radius = this->regs[SS_G_RIPPLE_RADIUS];
        Math_SmoothScaleMaxMinF(&radius, this->regs[SS_G_RIPPLE_RADIUS_MAX], 0.2f, 30.0f, 1.0f);
        this->regs[SS_G_RIPPLE_RADIUS] = radius;

        primAlpha = this->regs[SS_G_RIPPLE_PRIM_A];
        envAlpha = this->regs[SS_G_RIPPLE_ENV_A];

        Math_SmoothScaleMaxMinF(&primAlpha, 0.0f, 0.2f, 15.0f, 7.0f);
        Math_SmoothScaleMaxMinF(&envAlpha, 0.0f, 0.2f, 15.0f, 7.0f);

        this->regs[SS_G_RIPPLE_PRIM_A] = primAlpha;
        this->regs[SS_G_RIPPLE_ENV_A] = envAlpha;
    }
}
