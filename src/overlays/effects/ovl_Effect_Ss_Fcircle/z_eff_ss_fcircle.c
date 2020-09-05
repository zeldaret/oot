/*
 * File: z_eff_ss_fcircle.c
 * Overlay: ovl_Effect_Ss_Fcircle
 * Description: Fire Circle
 */

#include "z_eff_ss_fcircle.h"

typedef enum {
    /* 0x03 */ SS_FCIRCLE_3 = 3,
    /* 0x08 */ SS_FCIRCLE_RADIUS = 8,
    /* 0x09 */ SS_FCIRCLE_HEIGHT,
    /* 0x0A */ SS_FCIRCLE_YAW,
    /* 0x0B */ SS_FCIRCLE_SCALE
} EffectSsFcircleRegs;

u32 EffectSsFcircle_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsFcircle_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsFcircle_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_Fcircle_InitVars = {
    EFFECT_SS_FCIRCLE,
    EffectSsFcircle_Init,
};

u32 EffectSsFcircle_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsFcircleInitParams* initParams = (EffectSsFcircleInitParams*)initParamsx;

    this->pos = initParams->pos;
    this->actor = initParams->actor;
    this->vec.x = initParams->pos.x - initParams->actor->posRot.pos.x;
    this->vec.y = initParams->pos.y - initParams->actor->posRot.pos.y;
    this->vec.z = initParams->pos.z - initParams->actor->posRot.pos.z;
    this->gfx = D_040184B0;
    this->life = 20;
    this->draw = EffectSsFcircle_Draw;
    this->update = EffectSsFcircle_Update;
    this->regs[SS_FCIRCLE_3] = 0xFF;
    this->regs[SS_FCIRCLE_RADIUS] = initParams->radius;
    this->regs[SS_FCIRCLE_HEIGHT] = initParams->height;
    this->regs[SS_FCIRCLE_YAW] = initParams->actor->shape.rot.y;

    return 1;
}

void EffectSsFcircle_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    s32 pad;
    f32 yScale;
    f32 xzScale;
    f32 temp_f0;

    OPEN_DISPS(gfxCtx, "../z_eff_fcircle.c", 149);

    temp_f0 = (this->regs[SS_FCIRCLE_SCALE] * (0.5f + (this->life * 0.025f))) * 0.01f;
    yScale = (this->regs[SS_FCIRCLE_HEIGHT] * 0.001f) * temp_f0;
    xzScale = (this->regs[SS_FCIRCLE_RADIUS] * 0.001f) * temp_f0;

    Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
    Matrix_Scale(xzScale, yScale, xzScale, MTXMODE_APPLY);
    Matrix_RotateY(this->regs[SS_FCIRCLE_YAW] * 0.0000958738f, MTXMODE_APPLY);

    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_eff_fcircle.c", 163),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    func_80093D84(globalCtx->state.gfxCtx);
    gSPSegment(oGfxCtx->polyXlu.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, globalCtx->gameplayFrames % 128, 0, 32, 64, 1, 0,
                                ((globalCtx->gameplayFrames) * -0xF) % 256, 32, 64));
    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x80, 0x80, 255, 220, 0, (this->life * 12.75f));
    gDPSetEnvColor(oGfxCtx->polyXlu.p++, 255, 0, 0, 0);
    gSPDisplayList(oGfxCtx->polyXlu.p++, this->gfx);

    CLOSE_DISPS(gfxCtx, "../z_eff_fcircle.c", 186);
}

void EffectSsFcircle_Update(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    Actor* actor = this->actor;

    if (actor != NULL) {
        if (actor->update != NULL) {
            this->pos.x = actor->posRot.pos.x + this->vec.x;
            this->pos.y = actor->posRot.pos.y + this->vec.y;
            this->pos.z = actor->posRot.pos.z + this->vec.z;
            this->regs[SS_FCIRCLE_YAW] = actor->shape.rot.y;

            if (actor->dmgEffectTimer > 20) {
                this->life = 20;
            } else {
                this->life = actor->dmgEffectTimer;
            }

            Math_ApproxS(&this->regs[SS_FCIRCLE_SCALE], 100, 20);
        } else {
            this->actor = NULL;
        }
    }
}
