/*
 * File: z_eff_ss_g_spk.c
 * Overlay: ovl_Effect_Ss_G_Spk
 * Description: Sparks
 */

#include "z_eff_ss_g_spk.h"

#define rPrimColorR regs[0]
#define rPrimColorG regs[1]
#define rPrimColorB regs[2]
#define rPrimColorA regs[3]
#define rEnvColorR regs[4]
#define rEnvColorG regs[5]
#define rEnvColorB regs[6]
#define rEnvColorA regs[7]
#define rTexIdx regs[8]
#define rScale regs[9]
#define rScaleStep regs[10]

u32 EffectSsGSpk_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsGSpk_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsGSpk_UpdateNoAccel(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsGSpk_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_G_Spk_InitVars = {
    EFFECT_SS_G_SPK,
    EffectSsGSpk_Init,
};

extern Gfx D_04025550[];

u32 EffectSsGSpk_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsGSpkInitParams* initParams = (EffectSsGSpkInitParams*)initParamsx;

    Math_Vec3f_Copy(&this->pos, &initParams->pos);
    Math_Vec3f_Copy(&this->velocity, &initParams->velocity);
    Math_Vec3f_Copy(&this->accel, &initParams->accel);
    this->gfx = SEGMENTED_TO_VIRTUAL(D_04025550);

    if (initParams->updateMode == 0) {
        this->life = 10;
        this->vec.x = initParams->pos.x - initParams->actor->posRot.pos.x;
        this->vec.y = initParams->pos.y - initParams->actor->posRot.pos.y;
        this->vec.z = initParams->pos.z - initParams->actor->posRot.pos.z;
        this->update = EffectSsGSpk_Update;
    } else {
        this->life = 5;
        this->update = EffectSsGSpk_UpdateNoAccel;
    }

    this->draw = EffectSsGSpk_Draw;
    this->rPrimColorR = initParams->primColor.r;
    this->rPrimColorG = initParams->primColor.g;
    this->rPrimColorB = initParams->primColor.b;
    this->rPrimColorA = initParams->primColor.a;
    this->rEnvColorR = initParams->envColor.r;
    this->rEnvColorG = initParams->envColor.g;
    this->rEnvColorB = initParams->envColor.b;
    this->rEnvColorA = initParams->envColor.a;
    this->rTexIdx = 0;
    this->rScale = initParams->scale;
    this->rScaleStep = initParams->scaleStep;
    this->actor = initParams->actor;

    return 1;
}

static void* sTextures[] = {
    0x04055FB0,
    0x040561B0,
    0x040563B0,
    0x040565B0,
};

void EffectSsGSpk_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    MtxF mfTrans;
    MtxF mfScale;
    MtxF mfResult;
    MtxF mfTrans11DA0;
    Mtx* mtx;
    f32 scale;
    s32 pad;

    OPEN_DISPS(gfxCtx, "../z_eff_ss_g_spk.c", 208);

    scale = this->rScale * 0.0025f;
    SkinMatrix_SetTranslate(&mfTrans, this->pos.x, this->pos.y, this->pos.z);
    SkinMatrix_SetScale(&mfScale, scale, scale, 1.0f);
    SkinMatrix_MtxFMtxFMult(&mfTrans, &globalCtx->mf_11DA0, &mfTrans11DA0);
    SkinMatrix_MtxFMtxFMult(&mfTrans11DA0, &mfScale, &mfResult);

    mtx = SkinMatrix_MtxFToNewMtx(gfxCtx, &mfResult);

    if (mtx != NULL) {
        gSPMatrix(POLY_XLU_DISP++, mtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sTextures[this->rTexIdx]));
        func_80094BC4(gfxCtx);
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, this->rPrimColorR, this->rPrimColorG, this->rPrimColorB, 255);
        gDPSetEnvColor(POLY_XLU_DISP++, this->rEnvColorR, this->rEnvColorG, this->rEnvColorB, this->rEnvColorA);
        gSPDisplayList(POLY_XLU_DISP++, this->gfx);
    }

    if (1) {}
    if (1) {}

    CLOSE_DISPS(gfxCtx, "../z_eff_ss_g_spk.c", 255);
}

void EffectSsGSpk_Update(GlobalContext* globalCtx, u32 index, EffectSs* this) {

    this->accel.x = (Math_Rand_ZeroOne() - 0.5f) * 3.0f;
    this->accel.z = (Math_Rand_ZeroOne() - 0.5f) * 3.0f;

    if (this->actor != NULL) {
        if ((this->actor->type == ACTORTYPE_EXPLOSIVES) && (this->actor->update != NULL)) {
            this->pos.x = this->actor->posRot.pos.x + this->vec.x;
            this->pos.y = this->actor->posRot.pos.y + this->vec.y;
            this->pos.z = this->actor->posRot.pos.z + this->vec.z;
        }
    }

    this->vec.x += this->accel.x;
    this->vec.z += this->accel.z;

    this->rTexIdx++;
    this->rTexIdx &= 3;
    this->rScale += this->rScaleStep;
}

// this update mode is unused in the original game
// with this update mode, the sparks dont move randomly in the xz plane, appearing to be on top of each other
void EffectSsGSpk_UpdateNoAccel(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    if (this->actor != NULL) {
        if ((this->actor->type == ACTORTYPE_EXPLOSIVES) && (this->actor->update != NULL)) {
            this->pos.x += (Math_Sins(this->actor->posRot.rot.y) * this->actor->speedXZ);
            this->pos.z += (Math_Coss(this->actor->posRot.rot.y) * this->actor->speedXZ);
        }
    }

    this->rTexIdx++;
    this->rTexIdx &= 3;
    this->rScale += this->rScaleStep;
}
