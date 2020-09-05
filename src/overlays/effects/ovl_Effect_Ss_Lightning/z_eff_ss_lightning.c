/*
 * File: z_eff_ss_lightning.c
 * Overlay: ovl_Effect_Ss_Lightning
 * Description: Lightning
 */

#include "z_eff_ss_lightning.h"

typedef enum {
    /* 0x00 */ SS_LIGHTNING_PRIM_R,
    /* 0x01 */ SS_LIGHTNING_PRIM_G,
    /* 0x02 */ SS_LIGHTNING_PRIM_B,
    /* 0x03 */ SS_LIGHTNING_PRIM_A,
    /* 0x04 */ SS_LIGHTNING_ENV_R,
    /* 0x05 */ SS_LIGHTNING_ENV_G,
    /* 0x06 */ SS_LIGHTNING_ENV_B,
    /* 0x07 */ SS_LIGHTNING_ENV_A,
    /* 0x08 */ SS_LIGHTNING_NUM_BOLTS,
    /* 0x09 */ SS_LIGHTNING_SCALE,
    /* 0x0A */ SS_LIGHTNING_YAW,
    /* 0x0B */ SS_LIGHTNING_LIFE_START
} EffectSsLightningRegs;

u32 EffectSsLightning_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsLightning_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsLightning_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_Lightning_InitVars = {
    EFFECT_SS_LIGHTNING,
    EffectSsLightning_Init,
};

UNK_PTR D_809AB538[] = {
    0x04029F30, 0x0402A530, 0x0402AB30, 0x0402B130, 0x0402B730, 0x0402BD30, 0x0402C330, 0x0402C930,
};

extern Gfx D_0402CF30[];

u32 EffectSsLightning_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsLightningInitParams* initParams = (EffectSsLightningInitParams*)initParamsx;

    this->pos = initParams->pos;
    this->displayList = SEGMENTED_TO_VIRTUAL(D_0402CF30);
    this->life = initParams->life;
    this->draw = EffectSsLightning_Draw;
    this->update = EffectSsLightning_Update;
    this->regs[SS_LIGHTNING_PRIM_R] = initParams->primColor.r;
    this->regs[SS_LIGHTNING_PRIM_G] = initParams->primColor.g;
    this->regs[SS_LIGHTNING_PRIM_B] = initParams->primColor.b;
    this->regs[SS_LIGHTNING_PRIM_A] = initParams->primColor.a;
    this->regs[SS_LIGHTNING_ENV_R] = initParams->envColor.r;
    this->regs[SS_LIGHTNING_ENV_G] = initParams->envColor.g;
    this->regs[SS_LIGHTNING_ENV_B] = initParams->envColor.b;
    this->regs[SS_LIGHTNING_ENV_A] = initParams->envColor.a;
    this->regs[SS_LIGHTNING_NUM_BOLTS] = initParams->numBolts;
    this->regs[SS_LIGHTNING_SCALE] = initParams->scale;
    this->regs[SS_LIGHTNING_YAW] = initParams->yaw;
    this->regs[SS_LIGHTNING_LIFE_START] = initParams->life;

    return 1;
}

void EffectSsLightning_NewLightning(GlobalContext* globalCtx, Vec3f* pos, s16 yaw, EffectSs* this) {
    EffectSs newLightning;

    EffectSs_Delete(&newLightning);
    newLightning = *this;
    newLightning.pos = *pos;
    newLightning.regs[SS_LIGHTNING_NUM_BOLTS]--;
    newLightning.regs[SS_LIGHTNING_YAW] = yaw;
    newLightning.life = newLightning.regs[SS_LIGHTNING_LIFE_START];
    
    EffectSs_Insert(globalCtx, &newLightning);
}

void EffectSsLightning_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    MtxF sp1A4;
    MtxF sp164;
    MtxF sp124;
    MtxF spE4;
    MtxF spA4;
    MtxF sp64;
    Mtx* mtx;
    f32 yScale;
    s16 texIdx;
    f32 xzScale;

    OPEN_DISPS(gfxCtx, "../z_eff_ss_lightning.c", 233);

    yScale = this->regs[SS_LIGHTNING_SCALE] * 0.01f;
    texIdx = this->regs[SS_LIGHTNING_LIFE_START] - this->life;

    if (texIdx >= 8) {
        texIdx = 7;
    }

    SkinMatrix_SetTranslate(&sp164, this->pos.x, this->pos.y, this->pos.z);
    xzScale = yScale * 0.6f;
    SkinMatrix_SetScale(&sp124, xzScale, yScale, xzScale);
    SkinMatrix_SetRotateRPY(&spE4, this->unk_2C.x, this->unk_2C.y, this->regs[SS_LIGHTNING_YAW]);
    SkinMatrix_MtxFMtxFMult(&sp164, &globalCtx->mf_11DA0, &spA4);
    SkinMatrix_MtxFMtxFMult(&spA4, &spE4, &sp64);
    SkinMatrix_MtxFMtxFMult(&sp64, &sp124, &sp1A4);

    gSPMatrix(oGfxCtx->polyXlu.p++, &gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    mtx = SkinMatrix_MtxFToNewMtx(oGfxCtx, &sp1A4);

    if (mtx != NULL) {
        gSPMatrix(oGfxCtx->polyXlu.p++, mtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        func_80094C50(oGfxCtx);
        gSPSegment(oGfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_809AB538[texIdx]));
        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, this->regs[SS_LIGHTNING_PRIM_R], this->regs[SS_LIGHTNING_PRIM_G],
                        this->regs[SS_LIGHTNING_PRIM_B], this->regs[SS_LIGHTNING_PRIM_A]);
        gDPSetEnvColor(oGfxCtx->polyXlu.p++, this->regs[SS_LIGHTNING_ENV_R], this->regs[SS_LIGHTNING_ENV_G],
                       this->regs[SS_LIGHTNING_ENV_B], this->regs[SS_LIGHTNING_ENV_A]);
        gSPDisplayList(oGfxCtx->polyXlu.p++, this->displayList);
    }

    CLOSE_DISPS(gfxCtx, "../z_eff_ss_lightning.c", 281);
}

void EffectSsLightning_Update(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    s32 pad;
    Vec3f pos;
    s16 yaw;
    f32 scale;

    if ((this->regs[SS_LIGHTNING_NUM_BOLTS] != 0) && ((this->life + 1) == this->regs[SS_LIGHTNING_LIFE_START])) {

        yaw = this->regs[SS_LIGHTNING_YAW] +
              (((Math_Rand_ZeroOne() < 0.5f) ? -1 : 1) * ((s16)((Math_Rand_ZeroOne() * 3640.0f)) + 0xE38));

        scale = (this->regs[SS_LIGHTNING_SCALE] * 0.01f) * 80.0f;
        pos.y = this->pos.y + (Math_Sins(this->regs[SS_LIGHTNING_YAW] - 0x4000) * scale);

        scale = Math_Coss(((this->regs[SS_LIGHTNING_YAW] - 0x4000))) * scale;
        pos.x = this->pos.x - (Math_Coss(func_8005A948(ACTIVE_CAM)) * scale);
        pos.z = this->pos.z + (Math_Sins(func_8005A948(ACTIVE_CAM)) * scale);

        EffectSsLightning_NewLightning(globalCtx, &pos, yaw, this);

        if (Math_Rand_ZeroOne() < 0.1f) {
            EffectSsLightning_NewLightning(globalCtx, &pos, (this->regs[SS_LIGHTNING_YAW] * 2) - yaw, this);
        }
    }
}
