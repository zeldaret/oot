/*
 * File: z_eff_ss_hitmark.c
 * Overlay: ovl_Effect_Ss_HitMark
 * Description: Hit Marks
 */

#include "z_eff_ss_hitmark.h"

#define rTexIdx regs[0]
#define rType regs[1]
#define rPrimColorR regs[2]
#define rPrimColorG regs[3]
#define rPrimColorB regs[4]
#define rEnvColorR regs[5]
#define rEnvColorG regs[6]
#define rEnvColorB regs[7]
#define rScale regs[8]

u32 EffectSsHitMark_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsHitMark_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsHitMark_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

static Color_RGB8 sColors[] = {
    { 255, 255, 255 }, { 255, 255, 0 }, { 255, 255, 255 }, { 255, 0, 0 },   { 255, 200, 100 }, { 200, 150, 0 },
    { 150, 100, 0 },   { 100, 50, 0 },  { 255, 255, 255 }, { 255, 0, 0 },   { 255, 255, 0 },   { 255, 0, 0 },
    { 255, 255, 255 }, { 0, 255, 200 }, { 255, 255, 255 }, { 150, 0, 255 },
};

static void* sTextures[] = {
    0x0401F370, 0x0401F4F0, 0x0401F670, 0x0401F7F0, 0x0401F970, 0x0401FAF0, 0x0401FC70, 0x0401FDF0,
    0x0401FF70, 0x040200F0, 0x04020270, 0x040203F0, 0x04020570, 0x040206F0, 0x04020870, 0x040209F0,
    0x04020B70, 0x04020CF0, 0x04020E70, 0x04020FF0, 0x04021170, 0x040212F0, 0x04021470, 0x040215F0,
    0x0401F370, 0x0401F4F0, 0x0401F670, 0x0401F7F0, 0x0401F970, 0x0401FAF0, 0x0401FC70, 0x0401FDF0,
};

EffectSsInit Effect_Ss_HitMark_InitVars = {
    EFFECT_SS_HITMARK,
    EffectSsHitMark_Init,
};

u32 EffectSsHitMark_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    s32 colorIdx;
    EffectSsHitMarkInitParams* initParams = (EffectSsHitMarkInitParams*)initParamsx;
    this->pos = initParams->pos;
    this->gfx = SEGMENTED_TO_VIRTUAL(D_04021770);

    if (initParams->type == 1) {
        this->life = 16;
    } else {
        this->life = 8;
    }

    this->draw = EffectSsHitMark_Draw;
    this->update = EffectSsHitMark_Update;
    colorIdx = initParams->type * 4;
    this->rTexIdx = 0;
    this->rType = initParams->type;
    this->rPrimColorR = sColors[colorIdx].r;
    this->rPrimColorG = sColors[colorIdx].g;
    this->rPrimColorB = sColors[colorIdx].b;
    this->rEnvColorR = sColors[colorIdx + 1].r;
    this->rEnvColorG = sColors[colorIdx + 1].g;
    this->rEnvColorB = sColors[colorIdx + 1].b;
    this->rScale = initParams->scale;

    return 1;
}

void EffectSsHitMark_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    MtxF mfTrans;
    MtxF mfScale;
    MtxF mfResult;
    MtxF mfTrans11DA0;
    Mtx* mtx;
    f32 scale;
    s32 pad;

    OPEN_DISPS(gfxCtx, "../z_eff_ss_hitmark.c", 297);

    SkinMatrix_SetTranslate(&mfTrans, this->pos.x, this->pos.y, this->pos.z);
    scale = this->rScale / 100.0f;
    SkinMatrix_SetScale(&mfScale, scale, scale, 1.0f);
    SkinMatrix_MtxFMtxFMult(&mfTrans, &globalCtx->mf_11DA0, &mfTrans11DA0);
    SkinMatrix_MtxFMtxFMult(&mfTrans11DA0, &mfScale, &mfResult);
    gSPMatrix(POLY_XLU_DISP++, &gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    mtx = SkinMatrix_MtxFToNewMtx(gfxCtx, &mfResult);

    if (mtx != NULL) {
        gSPMatrix(POLY_XLU_DISP++, mtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sTextures[(this->rType * 8) + (this->rTexIdx)]));
        func_80094C50(gfxCtx);
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, this->rPrimColorR, this->rPrimColorG, this->rPrimColorB, 255);
        gDPSetEnvColor(POLY_XLU_DISP++, this->rEnvColorR, this->rEnvColorG, this->rEnvColorB, 0);
        gSPDisplayList(POLY_XLU_DISP++, this->gfx);
    }
    CLOSE_DISPS(gfxCtx, "../z_eff_ss_hitmark.c", 341);
}

void EffectSsHitMark_Update(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    s32 colorIdx;

    if (this->rType == 1) {
        this->rTexIdx = (15 - this->life) / 2;
    } else {
        this->rTexIdx = 7 - this->life;
    }

    if (this->rTexIdx != 0) {
        colorIdx = this->rType * 4 + 2;
        this->rPrimColorR = func_80027DD4(this->rPrimColorR, sColors[colorIdx].r, this->life + 1);
        this->rPrimColorG = func_80027DD4(this->rPrimColorG, sColors[colorIdx].g, this->life + 1);
        this->rPrimColorB = func_80027DD4(this->rPrimColorB, sColors[colorIdx].b, this->life + 1);
        this->rEnvColorR = func_80027DD4(this->rEnvColorR, sColors[colorIdx + 1].r, this->life + 1);
        this->rEnvColorG = func_80027DD4(this->rEnvColorG, sColors[colorIdx + 1].g, this->life + 1);
        this->rEnvColorB = func_80027DD4(this->rEnvColorB, sColors[colorIdx + 1].b, this->life + 1);
    }
}
