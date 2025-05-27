/*
 * File: z_eff_ss_dead_ds.c
 * Overlay: ovl_Effect_Ss_Dead_Ds
 * Description: Burn mark on the floor
 */

#include "z_eff_ss_dead_ds.h"

#include "gfx.h"
#include "gfx_setupdl.h"
#include "sys_matrix.h"
#include "z64effect.h"
#include "z64play.h"

#include "assets/objects/gameplay_keep/gameplay_keep.h"

#define rScale regs[0]
#define rTimer regs[1]
#define rRoll regs[2]
#define rPitch regs[3]
#define rYaw regs[4]
#define rAlpha regs[5]
#define rScaleStep regs[9]
#define rAlphaStep regs[10]
#define rHalfOfLife regs[11]

u32 EffectSsDeadDs_Init(PlayState* play, u32 index, EffectSs* this, void* initParamsx);
void EffectSsDeadDs_Draw(PlayState* play, u32 index, EffectSs* this);
void EffectSsDeadDs_Update(PlayState* play, u32 index, EffectSs* this);

EffectSsProfile Effect_Ss_Dead_Ds_Profile = {
    EFFECT_SS_DEAD_DS,
    EffectSsDeadDs_Init,
};

u32 EffectSsDeadDs_Init(PlayState* play, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsDeadDsInitParams* initParams = (EffectSsDeadDsInitParams*)initParamsx;

    this->pos = initParams->pos;
    this->velocity = initParams->velocity;
    this->accel = initParams->accel;
    this->life = initParams->life;
    this->rScaleStep = initParams->scaleStep;
    this->rHalfOfLife = initParams->life / 2;
    this->rAlphaStep = initParams->alpha / this->rHalfOfLife;
    this->draw = EffectSsDeadDs_Draw;
    this->update = EffectSsDeadDs_Update;
    this->rScale = initParams->scale;
    this->rAlpha = initParams->alpha;
    this->rTimer = 0;

    return 1;
}

void EffectSsDeadDs_Draw(PlayState* play, u32 index, EffectSs* this) {
    s32 pad;
    f32 scale;
    s32 pad1;
    s32 pad2;
    MtxF mf;
    f32 yIntersect;
    Vec3f pos;
    CollisionPoly* groundPoly;

    OPEN_DISPS(play->state.gfxCtx, "../z_eff_ss_dead_ds.c", 157);

    scale = this->rScale * 0.01f;
    Gfx_SetupDL_60NoCDXlu(play->state.gfxCtx);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 0, 0, 0, this->rAlpha);
    gDPSetEnvColor(POLY_XLU_DISP++, 0, 0, 0, 0);
    pos = this->pos;

    if (this->rTimer == 0) {
        Vec3s rpy;
        Vec3f prevPos;

        prevPos.x = pos.x - this->velocity.x;
        prevPos.y = pos.y - this->velocity.y;
        prevPos.z = pos.z - this->velocity.z;

        if (BgCheck_EntitySphVsWall1(&play->colCtx, &this->pos, &pos, &prevPos, 1.5f, &groundPoly, 1.0f)) {
            func_80038A28(groundPoly, this->pos.x, this->pos.y, this->pos.z, &mf);
            Matrix_Put(&mf);
        } else {
            pos.y++;
            yIntersect = BgCheck_EntityRaycastDown1(&play->colCtx, &groundPoly, &pos);

            if (groundPoly != NULL) {
                func_80038A28(groundPoly, this->pos.x, yIntersect + 1.5f, this->pos.z, &mf);
                Matrix_Put(&mf);
            } else {
                Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
                Matrix_Get(&mf);
            }
        }

        Matrix_MtxFToZYXRotS(&mf, &rpy, 0);
        this->rRoll = rpy.x;
        this->rPitch = rpy.y;
        this->rYaw = rpy.z;
        this->pos.y = mf.yw;
        this->rTimer++;
    }

    Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
    Matrix_RotateZYX(this->rRoll, this->rPitch, this->rYaw, MTXMODE_APPLY);
    Matrix_RotateX(1.57f, MTXMODE_APPLY);
    Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_eff_ss_dead_ds.c", 246);
    gDPSetCombineLERP(POLY_XLU_DISP++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, TEXEL0, 0,
                      PRIMITIVE, 0);
    gSPDisplayList(POLY_XLU_DISP++, gLensFlareCircleDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_eff_ss_dead_ds.c", 255);
}

void EffectSsDeadDs_Update(PlayState* play, u32 index, EffectSs* this) {
    if (this->life < this->rHalfOfLife) {

        this->rScale += this->rScaleStep;
        if (this->rScale < 0) {
            this->rScale = 0;
        }

        this->rAlpha -= this->rAlphaStep;
        if (this->rAlpha < 0) {
            this->rAlpha = 0;
        }
    }
}
