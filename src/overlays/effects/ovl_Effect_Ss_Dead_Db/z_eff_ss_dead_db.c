/*
 * File: z_eff_ss_dead_db.c
 * Overlay: ovl_Effect_Ss_Dead_Db
 * Description: Flames and sound used when an enemy dies
 */

#include "z_eff_ss_dead_db.h"

#define rScale regs[0]
#define rTextIdx regs[1]
#define rPrimColorR regs[2]
#define rPrimColorG regs[3]
#define rPrimColorB regs[4]
#define rPrimColorA regs[5]
#define rEnvColorR regs[6]
#define rEnvColorG regs[7]
#define rEnvColorB regs[8]
#define rScaleStep regs[9]
#define rPlaySound regs[10]
#define rReg11 regs[11]

u32 EffectSsDeadDb_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsDeadDb_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsDeadDb_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_Dead_Db_InitVars = {
    EFFECT_SS_DEAD_DB,
    EffectSsDeadDb_Init,
};

extern Gfx D_04031FE0[];

u32 EffectSsDeadDb_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsDeadDbInitParams* initParams = (EffectSsDeadDbInitParams*)initParamsx;

    this->pos = initParams->pos;
    this->velocity = initParams->velocity;
    this->accel = initParams->accel;
    this->gfx = SEGMENTED_TO_VIRTUAL(D_04031FE0);
    this->life = initParams->unk_34;
    this->flags = 4;
    this->rScaleStep = initParams->scaleStep;
    this->rReg11 = initParams->unk_34;
    this->draw = EffectSsDeadDb_Draw;
    this->update = EffectSsDeadDb_Update;
    this->rScale = initParams->scale;
    this->rTextIdx = 0;
    this->rPlaySound = initParams->playSound;
    this->rPrimColorR = initParams->primColor.r;
    this->rPrimColorG = initParams->primColor.g;
    this->rPrimColorB = initParams->primColor.b;
    this->rPrimColorA = initParams->primColor.a;
    this->rEnvColorR = initParams->envColor.r;
    this->rEnvColorG = initParams->envColor.g;
    this->rEnvColorB = initParams->envColor.b;

    return 1;
}

static void* sTextures[] = {
    0x0402CFE0, 0x0402D7E0, 0x0402DFE0, 0x0402E7E0, 0x0402EFE0,
    0x0402F7E0, 0x0402FFE0, 0x040307E0, 0x04030FE0, 0x040317E0,
};

void EffectSsDeadDb_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    MtxF mfTrans;
    MtxF mfScale;
    MtxF mfResult;
    Mtx* mtx;
    f32 scale;

    OPEN_DISPS(gfxCtx, "../z_eff_ss_dead_db.c", 201);

    scale = this->rScale * 0.01f;

    SkinMatrix_SetTranslate(&mfTrans, this->pos.x, this->pos.y, this->pos.z);
    SkinMatrix_SetScale(&mfScale, scale, scale, scale);
    SkinMatrix_MtxFMtxFMult(&mfTrans, &mfScale, &mfResult);

    mtx = SkinMatrix_MtxFToNewMtx(gfxCtx, &mfResult);

    if (mtx != NULL) {
        gSPMatrix(oGfxCtx->polyXlu.p++, mtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        func_80094BC4(gfxCtx);
        gDPSetEnvColor(oGfxCtx->polyXlu.p++, this->rEnvColorR, this->rEnvColorG, this->rEnvColorB, 0);
        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, this->rPrimColorR, this->rPrimColorG, this->rPrimColorB,
                        this->rPrimColorA);
        gSPSegment(oGfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(sTextures[this->rTextIdx]));
        gSPDisplayList(oGfxCtx->polyXlu.p++, this->gfx);
    }

    CLOSE_DISPS(gfxCtx, "../z_eff_ss_dead_db.c", 247);
}

void EffectSsDeadDb_Update(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    f32 w;
    f32 pad;

    this->rTextIdx = (f32)((this->rReg11 - this->life) * 9) / this->rReg11;
    this->rScale += this->rScaleStep;

    this->rPrimColorR -= 10;
    if (this->rPrimColorR < 0) {
        this->rPrimColorR = 0;
    }

    this->rPrimColorG -= 10;
    if (this->rPrimColorG < 0) {
        this->rPrimColorG = 0;
    }

    this->rPrimColorB -= 10;
    if (this->rPrimColorB < 0) {
        this->rPrimColorB = 0;
    }

    this->rEnvColorR -= 10;
    if (this->rEnvColorR < 0) {
        this->rEnvColorR = 0;
    }

    this->rEnvColorG -= 10;
    if (this->rEnvColorG < 0) {
        this->rEnvColorG = 0;
    }

    this->rEnvColorB -= 10;
    if (this->rEnvColorB < 0) {
        this->rEnvColorB = 0;
    }

    if (this->rPlaySound && (this->rTextIdx == 1)) {
        SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx->mf_11D60, &this->pos, &this->vec, &w);
        Audio_PlaySoundGeneral(NA_SE_EN_EXTINCT, &this->vec, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }
}
