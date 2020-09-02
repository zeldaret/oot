/*
 * File: z_eff_ss_stone1.c
 * Overlay: ovl_Effect_Ss_Stone1
 * Description:
 */

#include "z_eff_ss_stone1.h"

typedef enum {
    /* 0x00 */ SS_STONE1_0
} EffectSsStone1Regs;

u32 EffectSsStone1_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsStone1_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsStone1_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_Stone1_InitVars = {
    EFFECT_SS_STONE1,
    EffectSsStone1_Init,
};

typedef struct {
    /* 0x00 */ void* texture;
    /* 0x04 */ Color_RGBA8 primColor;
    /* 0x08 */ Color_RGBA8 envColor;
} EffStoneDrawParams;

EffStoneDrawParams D_809ACA08[] = {
    { 0x04029A90, { 200, 0, 0, 255 }, { 0, 0, 0, 255 } },
    { 0x04029690, { 255, 100, 0, 255 }, { 100, 0, 0, 255 } },
    { 0x04029290, { 255, 200, 0, 255 }, { 200, 0, 0, 255 } },
    { 0x04028E90, { 255, 255, 0, 255 }, { 255, 0, 0, 255 } },
    { 0x04028A90, { 255, 255, 150, 255 }, { 255, 150, 0, 255 } },
    { 0x04028690, { 255, 255, 255, 255 }, { 255, 255, 0, 255 } },
    { 0x04028290, { 255, 255, 255, 255 }, { 0, 255, 0, 255 } },
    { 0x04027E90, { 255, 255, 255, 255 }, { 0, 255, 255, 255 } },
};

extern Gfx D_04029E90[];

u32 EffectSsStone1_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsStone1InitParams* initParams = (EffectSsStone1InitParams*)initParamsx;
    Vec3f pos = initParams->pos;

    this->pos = pos;
    this->unk_2C = pos;
    this->life = 8;
    this->regs[SS_STONE1_0] = initParams->unk_C;
    this->draw = EffectSsStone1_Draw;
    this->update = EffectSsStone1_Update;

    return 1;
}

void EffectSsStone1_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    EffStoneDrawParams* drawParams = &D_809ACA08[this->life];
    Vec3f mtxMult;
    f32 mtxW;
    f32 scale;

    OPEN_DISPS(gfxCtx, "../z_eff_ss_stone1.c", 154);

    SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx->mf_11D60, this, &mtxMult, &mtxW);

    if (mtxW < 1500.0f) {
        scale = 3.0f;
    } else {
        scale = (mtxW / 1500.0f) * 3.0f;
    }

    Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
    Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_eff_ss_stone1.c", 168),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    func_80094C50(gfxCtx);
    gSPSegment(oGfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(drawParams->texture));
    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, drawParams->primColor.r, drawParams->primColor.g,
                    drawParams->primColor.b, 255);
    gDPSetEnvColor(oGfxCtx->polyXlu.p++, drawParams->envColor.r, drawParams->envColor.g, drawParams->envColor.b, 255);
    gSPDisplayList(oGfxCtx->polyXlu.p++, D_04029E90);

    CLOSE_DISPS(gfxCtx, "../z_eff_ss_stone1.c", 183);
}

void EffectSsStone1_Update(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    if ((this->life == 6) && (this->regs[SS_STONE1_0] != 0)) {
        iREG(50) = 0;
    }
}
