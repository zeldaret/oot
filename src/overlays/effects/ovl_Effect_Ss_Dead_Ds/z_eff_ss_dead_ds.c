/*
 * File: z_eff_ss_dead_ds.c
 * Overlay: ovl_Effect_Ss_Dead_Ds
 * Description:
 */

#include "z_eff_ss_dead_ds.h"

typedef enum {
    /* 0x00 */ SS_DEAD_DS_SCALE,
    /* 0x01 */ SS_DEAD_CALC_DONE,
    /* 0x02 */ SS_DEAD_DS_ROLL,
    /* 0x03 */ SS_DEAD_DS_PITCH,
    /* 0x04 */ SS_DEAD_DS_YAW,
    /* 0x05 */ SS_DEAD_DS_ALPHA,
    /* 0x09 */ SS_DEAD_DS_SCALE_STEP = 9,
    /* 0x0A */ SS_DEAD_DS_ALPHA_STEP,
    /* 0x0B */ SS_DEAD_DS_LIFE_HALF
} EffectSsDead_DsRegs;

u32 EffectSsDeadDs_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void func_809A16F4(GlobalContext* globalCtx, u32 index, EffectSs* this);
void func_809A1A08(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_Dead_Ds_InitVars = {
    EFFECT_SS_DEAD_DS,
    EffectSsDeadDs_Init,
};

extern Gfx D_04037730[];

u32 EffectSsDeadDs_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsDeadDsInitParams* initParams = (EffectSsDeadDsInitParams*)initParamsx;

    this->pos = initParams->pos;
    this->velocity = initParams->velocity;
    this->accel = initParams->accel;
    this->life = initParams->life;
    this->regs[SS_DEAD_DS_SCALE_STEP] = initParams->scaleStep;
    this->regs[SS_DEAD_DS_LIFE_HALF] = initParams->life / 2;
    this->regs[SS_DEAD_DS_ALPHA_STEP] = initParams->alpha / this->regs[SS_DEAD_DS_LIFE_HALF];
    this->draw = func_809A16F4;
    this->update = func_809A1A08;
    this->regs[SS_DEAD_DS_SCALE] = initParams->scale;
    this->regs[SS_DEAD_DS_ALPHA] = initParams->alpha;
    this->regs[SS_DEAD_CALC_DONE] = false;

    return 1;
}

void func_809A16F4(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    s32 pad;
    f32 scale;
    s32 pad1;
    s32 pad2;
    MtxF sp88;
    f32 temp;
    Vec3f sp78;
    CollisionPoly* floorPoly;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_eff_ss_dead_ds.c", 157);

    scale = this->regs[SS_DEAD_DS_SCALE] * 0.01f;
    func_80094BC4(globalCtx->state.gfxCtx);
    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 0, 0, 0, this->regs[SS_DEAD_DS_ALPHA]);
    gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0, 0, 0, 0);
    sp78 = this->pos;

    if (!this->regs[SS_DEAD_CALC_DONE]) {
        Vec3s rpy;
        Vec3f sp44;

        sp44.x = sp78.x - this->velocity.x;
        sp44.y = sp78.y - this->velocity.y;
        sp44.z = sp78.z - this->velocity.z;

        if (func_8003D464(&globalCtx->colCtx, &this->pos, &sp78, &sp44, 1.5f, &floorPoly, 1.0f)) {
            func_80038A28(floorPoly, this->pos.x, this->pos.y, this->pos.z, &sp88);
            Matrix_Put(&sp88);
        } else {
            sp78.y++;
            temp = func_8003C890(&globalCtx->colCtx, &floorPoly, &sp78);

            if (floorPoly != NULL) {
                func_80038A28(floorPoly, this->pos.x, temp + 1.5f, this->pos.z, &sp88);
                Matrix_Put(&sp88);
            } else {
                Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
                Matrix_Get(&sp88);
            }
        }

        func_800D2264(&sp88, &rpy, 0);
        this->regs[SS_DEAD_DS_ROLL] = rpy.x;
        this->regs[SS_DEAD_DS_PITCH] = rpy.y;
        this->regs[SS_DEAD_DS_YAW] = rpy.z;
        this->pos.y = sp88.wy;
        this->regs[SS_DEAD_CALC_DONE]++;
    }

    Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
    Matrix_RotateRPY(this->regs[SS_DEAD_DS_ROLL], this->regs[SS_DEAD_DS_PITCH], this->regs[SS_DEAD_DS_YAW],
                     MTXMODE_APPLY);
    Matrix_RotateX(1.57f, MTXMODE_APPLY);
    Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_eff_ss_dead_ds.c", 246),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gDPSetCombineLERP(oGfxCtx->polyXlu.p++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, TEXEL0, 0,
                      PRIMITIVE, 0);
    gSPDisplayList(oGfxCtx->polyXlu.p++, D_04037730);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_eff_ss_dead_ds.c", 255);
}

void func_809A1A08(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    if (this->life < this->regs[SS_DEAD_DS_LIFE_HALF]) {

        this->regs[SS_DEAD_DS_SCALE] += this->regs[SS_DEAD_DS_SCALE_STEP];
        if (this->regs[SS_DEAD_DS_SCALE] < 0) {
            this->regs[SS_DEAD_DS_SCALE] = 0;
        }

        this->regs[SS_DEAD_DS_ALPHA] -= this->regs[SS_DEAD_DS_ALPHA_STEP];
        if (this->regs[SS_DEAD_DS_ALPHA] < 0) {
            this->regs[SS_DEAD_DS_ALPHA] = 0;
        }
    }
}
