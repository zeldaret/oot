/*
 * File: z_eff_ss_fcircle.c
 * Overlay: ovl_Effect_Ss_Fcircle
 * Description: Fire Circle
 */

#include "z_eff_ss_fcircle.h"

#include "gfx.h"
#include "gfx_setupdl.h"
#include "sys_matrix.h"
#include "z_lib.h"
#include "z64effect.h"
#include "z64play.h"

#include "assets/objects/gameplay_keep/gameplay_keep.h"

#define rUnused regs[3] // probably supposed to be an alpha
#define rRadius regs[8]
#define rHeight regs[9]
#define rYaw regs[10]
#define rScale regs[11]

u32 EffectSsFcircle_Init(PlayState* play, u32 index, EffectSs* this, void* initParamsx);
void EffectSsFcircle_Draw(PlayState* play, u32 index, EffectSs* this);
void EffectSsFcircle_Update(PlayState* play, u32 index, EffectSs* this);

EffectSsProfile Effect_Ss_Fcircle_Profile = {
    EFFECT_SS_FCIRCLE,
    EffectSsFcircle_Init,
};

u32 EffectSsFcircle_Init(PlayState* play, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsFcircleInitParams* initParams = (EffectSsFcircleInitParams*)initParamsx;

    this->pos = initParams->pos;
    this->actor = initParams->actor;
    this->vec.x = initParams->pos.x - initParams->actor->world.pos.x;
    this->vec.y = initParams->pos.y - initParams->actor->world.pos.y;
    this->vec.z = initParams->pos.z - initParams->actor->world.pos.z;
    this->gfx = gEffFireCircleDL;
    this->life = 20;
    this->draw = EffectSsFcircle_Draw;
    this->update = EffectSsFcircle_Update;
    this->rUnused = 255;
    this->rRadius = initParams->radius;
    this->rHeight = initParams->height;
    this->rYaw = initParams->actor->shape.rot.y;

    return 1;
}

void EffectSsFcircle_Draw(PlayState* play, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx = play->state.gfxCtx;
    s32 pad;
    f32 yScale;
    f32 xzScale;
    f32 scale;

    OPEN_DISPS(gfxCtx, "../z_eff_fcircle.c", 149);

    scale = (this->rScale * (0.5f + (this->life * 0.025f))) * 0.01f;
    yScale = (this->rHeight * 0.001f) * scale;
    xzScale = (this->rRadius * 0.001f) * scale;

    Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
    Matrix_Scale(xzScale, yScale, xzScale, MTXMODE_APPLY);
    Matrix_RotateY(BINANG_TO_RAD(this->rYaw), MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, gfxCtx, "../z_eff_fcircle.c", 163);
    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, play->gameplayFrames % 128, 0, 32, 64, 1, 0,
                                ((play->gameplayFrames) * -0xF) % 256, 32, 64));
    gDPSetPrimColor(POLY_XLU_DISP++, 0x80, 0x80, 255, 220, 0, (this->life * 12.75f));
    gDPSetEnvColor(POLY_XLU_DISP++, 255, 0, 0, 0);
    gSPDisplayList(POLY_XLU_DISP++, this->gfx);

    CLOSE_DISPS(gfxCtx, "../z_eff_fcircle.c", 186);
}

void EffectSsFcircle_Update(PlayState* play, u32 index, EffectSs* this) {
    Actor* actor = this->actor;

    if (actor != NULL) {
        if (actor->update != NULL) {
            this->pos.x = actor->world.pos.x + this->vec.x;
            this->pos.y = actor->world.pos.y + this->vec.y;
            this->pos.z = actor->world.pos.z + this->vec.z;
            this->rYaw = actor->shape.rot.y;

            if (actor->colorFilterTimer > 20) {
                this->life = 20;
            } else {
                this->life = actor->colorFilterTimer;
            }

            Math_StepToS(&this->rScale, 100, 20);
        } else {
            this->actor = NULL;
        }
    }
}
