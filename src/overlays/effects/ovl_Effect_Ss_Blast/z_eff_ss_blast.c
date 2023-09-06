/*
 * File: z_eff_ss_blast.c
 * Overlay: ovl_Effect_Ss_Blast
 * Description: Shockwave Effect
 */

#include "z_eff_ss_blast.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

#define rInnerColorR regs[0]
#define rInnerColorG regs[1]
#define rInnerColorB regs[2]
#define rInnerColorA regs[3]
#define rOuterColorR regs[4]
#define rOuterColorG regs[5]
#define rOuterColorB regs[6]
#define rOuterColorA regs[7]
#define rAlphaStep regs[8]
#define rScale regs[9]
#define rScaleStep regs[10]
#define rScaleStepDecay regs[11]

u32 EffectSsBlast_Init(PlayState* play, u32 index, EffectSs* this, void* initParamsx);
void EffectSsBlast_Update(PlayState* play, u32 index, EffectSs* this);
void EffectSsBlast_Draw(PlayState* play, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_Blast_InitVars = {
    EFFECT_SS_BLAST,
    EffectSsBlast_Init,
};

u32 EffectSsBlast_Init(PlayState* play, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsBlastParams* initParams = (EffectSsBlastParams*)initParamsx;

    this->pos = initParams->pos;
    this->pos.y += 5.0f;
    this->velocity = initParams->velocity;
    this->accel = initParams->accel;
    this->gfx = SEGMENTED_TO_VIRTUAL(gEffShockwaveDL);
    this->life = initParams->life;
    this->draw = EffectSsBlast_Draw;
    this->update = EffectSsBlast_Update;
    this->rInnerColorR = initParams->innerColor.r;
    this->rInnerColorG = initParams->innerColor.g;
    this->rInnerColorB = initParams->innerColor.b;
    this->rInnerColorA = initParams->innerColor.a;
    this->rOuterColorR = initParams->outerColor.r;
    this->rOuterColorG = initParams->outerColor.g;
    this->rOuterColorB = initParams->outerColor.b;
    this->rOuterColorA = initParams->outerColor.a;
    this->rAlphaStep = initParams->innerColor.a / initParams->life;
    this->rScale = initParams->scale;
    this->rScaleStep = initParams->scaleStep;
    this->rScaleStepDecay = initParams->scaleStepDecay;
    return 1;
}

void EffectSsBlast_Draw(PlayState* play, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx = play->state.gfxCtx;
    MtxF mf;
    s32 pad;
    f32 scale;

    OPEN_DISPS(gfxCtx, "../z_eff_ss_blast.c", 170);

    scale = this->rScale * (1 / 400.0f);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    gDPSetEnvColor(POLY_XLU_DISP++, this->rOuterColorR, this->rOuterColorG, this->rOuterColorB, this->rOuterColorA);
    func_800BFCB8(play, &mf, &this->pos);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, this->rInnerColorR, this->rInnerColorG, this->rInnerColorB,
                    this->rInnerColorA);
    Matrix_Put(&mf);
    Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_eff_ss_blast.c", 199),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_XLU_DISP++, this->gfx);

    CLOSE_DISPS(gfxCtx, "../z_eff_ss_blast.c", 204);
}

void EffectSsBlast_Update(PlayState* play, u32 index, EffectSs* this) {
    Math_StepToS(&this->rInnerColorA, 0, this->rAlphaStep);

    this->rScale += this->rScaleStep;
    if (this->rScaleStep != 0) {
        this->rScaleStep -= this->rScaleStepDecay;
    }
}
