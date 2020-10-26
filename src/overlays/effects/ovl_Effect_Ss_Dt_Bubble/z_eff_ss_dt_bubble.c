/*
 * File: z_eff_ss_dt_bubble.c
 * Overlay: ovl_Effect_Ss_Dt_Bubble
 * Description: Bubbles (a random mix of translucent and opaque)
 */

#include "z_eff_ss_dt_bubble.h"

#define rPrimColorR regs[0]
#define rPrimColorG regs[1]
#define rPrimColorB regs[2]
#define rPrimColorA regs[3]
#define rEnvColorR regs[4]
#define rEnvColorG regs[5]
#define rEnvColorB regs[6]
#define rEnvColorA regs[7]
#define rRandXZ regs[8]
#define rScale regs[9]
#define rLifespan regs[10]

u32 EffectSsDtBubble_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsDtBubble_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsDtBubble_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

static Color_RGBA8 sPrimColors[] = { { 255, 255, 100, 255 }, { 150, 255, 255, 255 }, { 100, 255, 255, 255 } };
static Color_RGBA8 sEnvColors[] = { { 170, 0, 0, 255 }, { 0, 100, 0, 255 }, { 0, 0, 255, 255 } };

EffectSsInit Effect_Ss_Dt_Bubble_InitVars = {
    EFFECT_SS_DT_BUBBLE,
    EffectSsDtBubble_Init,
};

extern void* D_04055DB0;
extern void* D_04055EB0;
extern Gfx D_0401A160[];

u32 EffectSsDtBubble_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsDtBubbleInitParams* initParams = (EffectSsDtBubbleInitParams*)initParamsx;

    // @bug Math_Rand_ZeroOne in the macro means a random number is generated for both parts of the macro.
    // In the base game this works out because both addresses are segment 4, but it may break if
    // the addresses were changed to refer to different segments
    this->gfx = SEGMENTED_TO_VIRTUAL(Math_Rand_ZeroOne() < 0.5f ? &D_04055DB0 : &D_04055EB0);
    this->pos = initParams->pos;
    this->velocity = initParams->velocity;
    this->accel = initParams->accel;
    this->life = initParams->life;

    if (!initParams->customColor) {
        this->rPrimColorR = sPrimColors[initParams->colorProfile].r;
        this->rPrimColorG = sPrimColors[initParams->colorProfile].g;
        this->rPrimColorB = sPrimColors[initParams->colorProfile].b;
        this->rPrimColorA = sPrimColors[initParams->colorProfile].a;
        this->rEnvColorR = sEnvColors[initParams->colorProfile].r;
        this->rEnvColorG = sEnvColors[initParams->colorProfile].g;
        this->rEnvColorB = sEnvColors[initParams->colorProfile].b;
        this->rEnvColorA = sEnvColors[initParams->colorProfile].a;
    } else {
        this->rPrimColorR = initParams->primColor.r;
        this->rPrimColorG = initParams->primColor.g;
        this->rPrimColorB = initParams->primColor.b;
        this->rPrimColorA = initParams->primColor.a;
        this->rEnvColorR = initParams->envColor.r;
        this->rEnvColorG = initParams->envColor.g;
        this->rEnvColorB = initParams->envColor.b;
        this->rEnvColorA = initParams->envColor.a;
    }

    this->rRandXZ = initParams->randXZ;
    this->rScale = initParams->scale;
    this->rLifespan = initParams->life;
    this->draw = EffectSsDtBubble_Draw;
    this->update = EffectSsDtBubble_Update;

    return 1;
}

void EffectSsDtBubble_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    f32 scale;

    OPEN_DISPS(gfxCtx, "../z_eff_ss_dt_bubble.c", 201);

    scale = this->rScale * 0.004f;
    Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
    Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_eff_ss_dt_bubble.c", 213),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    func_80093C14(gfxCtx);
    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, this->rPrimColorR, this->rPrimColorG, this->rPrimColorB,
                    (this->rPrimColorA * this->life) / this->rLifespan);
    gDPSetEnvColor(oGfxCtx->polyXlu.p++, this->rEnvColorR, this->rEnvColorG, this->rEnvColorB,
                   (this->rEnvColorA * this->life) / this->rLifespan);
    gSPSegment(oGfxCtx->polyXlu.p++, 0x08, this->gfx);
    gSPDisplayList(oGfxCtx->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_0401A160));

    CLOSE_DISPS(gfxCtx, "../z_eff_ss_dt_bubble.c", 236);
}

void EffectSsDtBubble_Update(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    f32 rand;

    if (this->rRandXZ == 1) {
        rand = Math_Rand_ZeroOne();
        this->pos.x += (rand * 2.0f) - 1.0f;

        rand = Math_Rand_ZeroOne();
        this->pos.z += (rand * 2.0f) - 1.0f;
    }
}
