/*
 * File: z_eff_ss_hitmark.c
 * Overlay: ovl_Effect_Ss_HitMark
 * Description:
 */

#include "z_eff_ss_hitmark.h"

typedef enum {
    /* 0x00 */ SS_HITMARK_0,
    /* 0x01 */ SS_HITMARK_1,
    /* 0x02 */ SS_HITMARK_2,
    /* 0x03 */ SS_HITMARK_3,
    /* 0x04 */ SS_HITMARK_4,
    /* 0x05 */ SS_HITMARK_5,
    /* 0x06 */ SS_HITMARK_6,
    /* 0x07 */ SS_HITMARK_7,
    /* 0x08 */ SS_HITMARK_SCALE,
    /* 0x09 */ SS_HITMARK_9,
    /* 0x0A */ SS_HITMARK_A,
    /* 0x0B */ SS_HITMARK_B,
    /* 0x0C */ SS_HITMARK_C,
} EffectSsHitMarkRegs;

u32 EffectSsHitMark_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsHitMark_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsHitMark_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

Color_RGB8 D_809A85B0[] = {
    { 255, 255, 255 }, { 255, 255, 0 }, { 255, 255, 255 }, { 255, 0, 0 },   { 255, 200, 100 }, { 200, 150, 0 },
    { 150, 100, 0 },   { 100, 50, 0 },  { 255, 255, 255 }, { 255, 0, 0 },   { 255, 255, 0 },   { 255, 0, 0 },
    { 255, 255, 255 }, { 0, 255, 200 }, { 255, 255, 255 }, { 150, 0, 255 },
};

UNK_PTR D_809A85E0[] = {
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
    this->displayList = SEGMENTED_TO_VIRTUAL(D_04021770);

    if (initParams->unk_00 == 1) {
        this->life = 16;
    } else {
        this->life = 8;
    }

    this->draw = EffectSsHitMark_Draw;
    this->update = EffectSsHitMark_Update;
    colorIdx = initParams->unk_00 * 4;
    this->regs[SS_HITMARK_0] = 0;
    this->regs[SS_HITMARK_1] = initParams->unk_00;
    this->regs[SS_HITMARK_2] = D_809A85B0[colorIdx].r;
    this->regs[SS_HITMARK_3] = D_809A85B0[colorIdx].g;
    this->regs[SS_HITMARK_4] = D_809A85B0[colorIdx].b;
    this->regs[SS_HITMARK_5] = D_809A85B0[colorIdx + 1].r;
    this->regs[SS_HITMARK_6] = D_809A85B0[colorIdx + 1].g;
    this->regs[SS_HITMARK_7] = D_809A85B0[colorIdx + 1].b;
    this->regs[SS_HITMARK_SCALE] = initParams->scale;

    return 1;
}

void EffectSsHitMark_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    MtxF sp11C;
    MtxF spDC;
    MtxF sp9C;
    MtxF sp5C;
    Mtx* mtx;
    f32 scale;
    s32 pad;

    OPEN_DISPS(gfxCtx, "../z_eff_ss_hitmark.c", 297);

    SkinMatrix_SetTranslate(&sp11C, this->pos.x, this->pos.y, this->pos.z);
    scale = this->regs[SS_HITMARK_SCALE] / 100.0f;
    SkinMatrix_SetScale(&spDC, scale, scale, 1.0f);
    SkinMatrix_MtxFMtxFMult(&sp11C, &globalCtx->mf_11DA0, &sp5C);
    SkinMatrix_MtxFMtxFMult(&sp5C, &spDC, &sp9C);
    gSPMatrix(oGfxCtx->polyXlu.p++, &gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    mtx = SkinMatrix_MtxFToNewMtx(gfxCtx, &sp9C);

    if (mtx != NULL) {
        gSPMatrix(oGfxCtx->polyXlu.p++, mtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPSegment(oGfxCtx->polyXlu.p++, 0x08,
                   SEGMENTED_TO_VIRTUAL(D_809A85E0[(this->regs[SS_HITMARK_1] * 8) + (this->regs[SS_HITMARK_0])]));
        func_80094C50(gfxCtx);
        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, this->regs[SS_HITMARK_2], this->regs[SS_HITMARK_3],
                        this->regs[SS_HITMARK_4], 255);
        gDPSetEnvColor(oGfxCtx->polyXlu.p++, this->regs[SS_HITMARK_5], this->regs[SS_HITMARK_6],
                       this->regs[SS_HITMARK_7], 0);
        gSPDisplayList(oGfxCtx->polyXlu.p++, this->displayList);
    }
    CLOSE_DISPS(gfxCtx, "../z_eff_ss_hitmark.c", 341);
}

void EffectSsHitMark_Update(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    s32 colorIdx;

    if (this->regs[SS_HITMARK_1] == 1) {
        this->regs[SS_HITMARK_0] = (15 - this->life) / 2;
    } else {
        this->regs[SS_HITMARK_0] = 7 - this->life;
    }

    if (this->regs[SS_HITMARK_0] != 0) {
        colorIdx = this->regs[SS_HITMARK_1] * 4 + 2;
        this->regs[SS_HITMARK_2] = func_80027DD4(this->regs[SS_HITMARK_2], D_809A85B0[colorIdx].r, this->life + 1);
        this->regs[SS_HITMARK_3] = func_80027DD4(this->regs[SS_HITMARK_3], D_809A85B0[colorIdx].g, this->life + 1);
        this->regs[SS_HITMARK_4] = func_80027DD4(this->regs[SS_HITMARK_4], D_809A85B0[colorIdx].b, this->life + 1);
        this->regs[SS_HITMARK_5] = func_80027DD4(this->regs[SS_HITMARK_5], D_809A85B0[colorIdx + 1].r, this->life + 1);
        this->regs[SS_HITMARK_6] = func_80027DD4(this->regs[SS_HITMARK_6], D_809A85B0[colorIdx + 1].g, this->life + 1);
        this->regs[SS_HITMARK_7] = func_80027DD4(this->regs[SS_HITMARK_7], D_809A85B0[colorIdx + 1].b, this->life + 1);
    }
}
