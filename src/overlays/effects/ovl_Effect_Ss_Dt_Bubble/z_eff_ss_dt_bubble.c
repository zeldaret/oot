/*
 * File: z_eff_ss_dt_bubble.c
 * Overlay: ovl_Effect_Ss_Dt_Bubble
 * Description: Bubbles (a random mix of translucent and opaque)
 */

#include "z_eff_ss_dt_bubble.h"

typedef enum {
    /* 0x00 */ SS_DT_BUBBLE_PRIM_R,
    /* 0x01 */ SS_DT_BUBBLE_PRIM_G,
    /* 0x02 */ SS_DT_BUBBLE_PRIM_B,
    /* 0x03 */ SS_DT_BUBBLE_PRIM_A,
    /* 0x04 */ SS_DT_BUBBLE_ENV_R,
    /* 0x05 */ SS_DT_BUBBLE_ENV_G,
    /* 0x06 */ SS_DT_BUBBLE_ENV_B,
    /* 0x07 */ SS_DT_BUBBLE_ENV_A,
    /* 0x08 */ SS_DT_BUBBLE_RAND_XZ,
    /* 0x09 */ SS_DT_BUBBLE_SCALE,
    /* 0x0A */ SS_DT_BUBBLE_LIFE_START
} EffectSsDt_BubbleRegs;

u32 EffectSsDtBubble_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsDtBubble_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsDtBubble_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

Color_RGBA8 sPrimColors[] = { { 255, 255, 100, 255 }, { 150, 255, 255, 255 }, { 100, 255, 255, 255 } };
Color_RGBA8 sEnvColors[] = { { 170, 0, 0, 255 }, { 0, 100, 0, 255 }, { 0, 0, 255, 255 } };

EffectSsInit Effect_Ss_Dt_Bubble_InitVars = {
    EFFECT_SS_DT_BUBBLE,
    EffectSsDtBubble_Init,
};

extern UNK_TYPE D_04055DB0;
extern UNK_TYPE D_04055EB0;
extern Gfx D_0401A160[];

u32 EffectSsDtBubble_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsDtBubbleInitParams* initParams = (EffectSsDtBubbleInitParams*)initParamsx;

    // @bug Math_Rand_ZeroOne in the macro means a random number is rolled for both parts of the macro.
    // In the base game this works out because both addresses are segment 4, but it may break if
    // the addresses were changed to refer to different segments
    this->gfx = SEGMENTED_TO_VIRTUAL(Math_Rand_ZeroOne() < 0.5f ? &D_04055DB0 : &D_04055EB0);

    this->pos = initParams->pos;
    this->velocity = initParams->velocity;
    this->accel = initParams->accel;
    this->life = initParams->life;

    if (!initParams->customColor) {
        this->regs[SS_DT_BUBBLE_PRIM_R] = sPrimColors[initParams->colorProfile].r;
        this->regs[SS_DT_BUBBLE_PRIM_G] = sPrimColors[initParams->colorProfile].g;
        this->regs[SS_DT_BUBBLE_PRIM_B] = sPrimColors[initParams->colorProfile].b;
        this->regs[SS_DT_BUBBLE_PRIM_A] = sPrimColors[initParams->colorProfile].a;
        this->regs[SS_DT_BUBBLE_ENV_R] = sEnvColors[initParams->colorProfile].r;
        this->regs[SS_DT_BUBBLE_ENV_G] = sEnvColors[initParams->colorProfile].g;
        this->regs[SS_DT_BUBBLE_ENV_B] = sEnvColors[initParams->colorProfile].b;
        this->regs[SS_DT_BUBBLE_ENV_A] = sEnvColors[initParams->colorProfile].a;
    } else {
        this->regs[SS_DT_BUBBLE_PRIM_R] = initParams->primColor.r;
        this->regs[SS_DT_BUBBLE_PRIM_G] = initParams->primColor.g;
        this->regs[SS_DT_BUBBLE_PRIM_B] = initParams->primColor.b;
        this->regs[SS_DT_BUBBLE_PRIM_A] = initParams->primColor.a;
        this->regs[SS_DT_BUBBLE_ENV_R] = initParams->envColor.r;
        this->regs[SS_DT_BUBBLE_ENV_G] = initParams->envColor.g;
        this->regs[SS_DT_BUBBLE_ENV_B] = initParams->envColor.b;
        this->regs[SS_DT_BUBBLE_ENV_A] = initParams->envColor.a;
    }

    this->regs[SS_DT_BUBBLE_RAND_XZ] = initParams->randXZ;
    this->regs[SS_DT_BUBBLE_SCALE] = initParams->scale;
    this->regs[SS_DT_BUBBLE_LIFE_START] = initParams->life;
    this->draw = EffectSsDtBubble_Draw;
    this->update = EffectSsDtBubble_Update;

    return 1;
}

void EffectSsDtBubble_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    f32 scale;

    OPEN_DISPS(gfxCtx, "../z_eff_ss_dt_bubble.c", 201);

    scale = this->regs[SS_DT_BUBBLE_SCALE] * 0.004f;
    Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
    Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_eff_ss_dt_bubble.c", 213),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    func_80093C14(gfxCtx);
    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, this->regs[SS_DT_BUBBLE_PRIM_R], this->regs[SS_DT_BUBBLE_PRIM_G],
                    this->regs[SS_DT_BUBBLE_PRIM_B],
                    (this->regs[SS_DT_BUBBLE_PRIM_A] * this->life) / this->regs[SS_DT_BUBBLE_LIFE_START]);
    gDPSetEnvColor(oGfxCtx->polyXlu.p++, this->regs[SS_DT_BUBBLE_ENV_R], this->regs[SS_DT_BUBBLE_ENV_G],
                   this->regs[SS_DT_BUBBLE_ENV_B],
                   (this->regs[SS_DT_BUBBLE_ENV_A] * this->life) / this->regs[SS_DT_BUBBLE_LIFE_START]);
    gSPSegment(oGfxCtx->polyXlu.p++, 0x08, this->gfx);
    gSPDisplayList(oGfxCtx->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_0401A160));

    CLOSE_DISPS(gfxCtx, "../z_eff_ss_dt_bubble.c", 236);
}

void EffectSsDtBubble_Update(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    f32 rand;

    if (this->regs[SS_DT_BUBBLE_RAND_XZ] == 1) {
        rand = Math_Rand_ZeroOne();
        this->pos.x += (rand * 2.0f) - 1.0f;

        rand = Math_Rand_ZeroOne();
        this->pos.z += (rand * 2.0f) - 1.0f;
    }
}
