/*
 * File: z_eff_ss_en_ice.c
 * Overlay: ovl_Effect_Ss_En_Ice
 * Description:
 */

#include "z_eff_ss_en_ice.h"

typedef enum {
    /* 0x00 */ SS_EN_ICE_LIFESPAN,
    /* 0x01 */ SS_EN_ICE_YAW,
    /* 0x02 */ SS_EN_ICE_PITCH,
    /* 0x03 */ SS_EN_ICE_ROT_SPEED,
    /* 0x04 */ SS_EN_ICE_PRIM_R,
    /* 0x05 */ SS_EN_ICE_PRIM_G,
    /* 0x06 */ SS_EN_ICE_PRIM_B,
    /* 0x07 */ SS_EN_ICE_PRIM_A,
    /* 0x08 */ SS_EN_ICE_ENV_R,
    /* 0x09 */ SS_EN_ICE_ENV_G,
    /* 0x0A */ SS_EN_ICE_ENV_B,
    /* 0x0B */ SS_EN_ICE_ALPHA_MODE,
    /* 0x0C */ SS_EN_ICE_SCALE,
} EffectSsEn_IceRegs;

u32 EffectSsEnIce_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsEnIce_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void func_809A3B60(GlobalContext* globalCtx, u32 index, EffectSs* this);
void func_809A3988(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_En_Ice_InitVars = {
    EFFECT_SS_EN_ICE,
    EffectSsEnIce_Init,
};

extern Gfx D_04033818[];

u32 EffectSsEnIce_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsEnIceInitParams* initParams = (EffectSsEnIceInitParams*)initParamsx;

    if (initParams->type == 0) {
        Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };

        this->pos = initParams->pos;
        this->vec.x = this->pos.x - initParams->actor->posRot.pos.x;
        this->vec.y = this->pos.y - initParams->actor->posRot.pos.y;
        this->vec.z = this->pos.z - initParams->actor->posRot.pos.z;
        this->velocity = zeroVec;
        this->accel = zeroVec;
        this->life = 10;
        this->actor = initParams->actor;
        this->draw = EffectSsEnIce_Draw;
        this->update = func_809A3988;
        this->regs[SS_EN_ICE_SCALE] = initParams->scale * 100.0f;
        this->regs[SS_EN_ICE_PRIM_R] = initParams->primColor.r;
        this->regs[SS_EN_ICE_PRIM_G] = initParams->primColor.g;
        this->regs[SS_EN_ICE_PRIM_B] = initParams->primColor.b;
        this->regs[SS_EN_ICE_PRIM_A] = initParams->primColor.a;
        this->regs[SS_EN_ICE_ENV_R] = initParams->envColor.r;
        this->regs[SS_EN_ICE_ENV_G] = initParams->envColor.g;
        this->regs[SS_EN_ICE_ENV_B] = initParams->envColor.b;
        this->regs[SS_EN_ICE_ALPHA_MODE] = 1;
        this->regs[SS_EN_ICE_PITCH] = Math_Rand_CenteredFloat(65536.0f);
    } else if (initParams->type == 1) {
        this->pos = initParams->pos;
        this->vec = initParams->pos;
        this->velocity = initParams->velocity;
        this->accel = initParams->accel;
        this->life = initParams->life;
        this->draw = EffectSsEnIce_Draw;
        this->update = func_809A3B60;
        this->regs[SS_EN_ICE_LIFESPAN] = initParams->life;
        this->regs[SS_EN_ICE_SCALE] = initParams->scale * 100.0f;
        this->regs[SS_EN_ICE_YAW] = atan2s(initParams->velocity.z, initParams->velocity.x);
        this->regs[SS_EN_ICE_PITCH] = 0;
        this->regs[SS_EN_ICE_PRIM_R] = initParams->primColor.r;
        this->regs[SS_EN_ICE_PRIM_G] = initParams->primColor.g;
        this->regs[SS_EN_ICE_PRIM_B] = initParams->primColor.b;
        this->regs[SS_EN_ICE_PRIM_A] = initParams->primColor.a;
        this->regs[SS_EN_ICE_ENV_R] = initParams->envColor.r;
        this->regs[SS_EN_ICE_ENV_G] = initParams->envColor.g;
        this->regs[SS_EN_ICE_ENV_B] = initParams->envColor.b;
        this->regs[SS_EN_ICE_ALPHA_MODE] = 0;
    } else {
        osSyncPrintf("Effect_Ss_En_Ice_ct():pid->mode_swがエラーです。\n");
        return 0;
    }

    return 1;
}

void EffectSsEnIce_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    s32 pad;
    f32 scale;
    Vec3f sp80;
    u32 gameplayFrames;
    f32 alpha;

    scale = this->regs[SS_EN_ICE_SCALE] * 0.01f;
    gameplayFrames = globalCtx->gameplayFrames;

    OPEN_DISPS(gfxCtx, "../z_eff_en_ice.c", 235);

    if (this->regs[SS_EN_ICE_ALPHA_MODE] != 0) {
        alpha = this->life * 12;
    } else {

        if ((this->regs[SS_EN_ICE_LIFESPAN] > 0) && (this->life < (this->regs[SS_EN_ICE_LIFESPAN] >> 1))) {
            alpha = ((this->life * 2.0f) / this->regs[SS_EN_ICE_LIFESPAN]);
            alpha *= 255.0f;
        } else {
            alpha = 255.0f;
        }
    }

    Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
    Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
    Matrix_RotateY(this->regs[SS_EN_ICE_YAW] * 0.0000958738f, MTXMODE_APPLY);
    Matrix_RotateX(this->regs[SS_EN_ICE_PITCH] * 0.0000958738f, MTXMODE_APPLY);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_eff_en_ice.c", 261),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    sp80.x = 89.8f;
    sp80.y = 0.0f;
    sp80.z = 89.8f;

    func_80093D84(globalCtx->state.gfxCtx);
    func_8002EB44(this, &globalCtx->view.eye, &sp80, globalCtx->state.gfxCtx);
    gSPSegment(oGfxCtx->polyXlu.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, gameplayFrames & 0xFF, 0x20, 0x10, 1, 0,
                                (gameplayFrames * 2) & 0xFF, 0x40, 0x20));
    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0x80, this->regs[SS_EN_ICE_PRIM_R], this->regs[SS_EN_ICE_PRIM_G],
                    this->regs[SS_EN_ICE_PRIM_B], this->regs[SS_EN_ICE_PRIM_A]);
    gDPSetEnvColor(oGfxCtx->polyXlu.p++, this->regs[SS_EN_ICE_ENV_R], this->regs[SS_EN_ICE_ENV_G],
                   this->regs[SS_EN_ICE_ENV_B], (u32)alpha);
    gSPDisplayList(oGfxCtx->polyXlu.p++, D_04033818);

    CLOSE_DISPS(gfxCtx, "../z_eff_en_ice.c", 294);
}

void func_809A3988(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    s16 rand;

    if ((this->actor != NULL) && (this->actor->update != NULL)) {

        if ((this->life >= 9) && (this->actor->dmgEffectTimer != 0) && (!(this->actor->dmgEffectParams & 0xC000))) {
            this->pos.x = this->actor->posRot.pos.x + this->vec.x;
            this->pos.y = this->actor->posRot.pos.y + this->vec.y;
            this->pos.z = this->actor->posRot.pos.z + this->vec.z;
            this->life++;
        } else if (this->life == 9) {
            this->accel.x = Math_Sins(Math_Vec3f_Yaw(&this->actor->posRot, &this->pos)) * (Math_Rand_ZeroOne() + 1.0f);
            this->accel.z = Math_Coss(Math_Vec3f_Yaw(&this->actor->posRot, &this->pos)) * (Math_Rand_ZeroOne() + 1.0f);
            this->accel.y = -1.5f;
            this->velocity.y = 5.0f;
        }

    } else {
        if (this->life >= 9) {
            rand = Math_Rand_CenteredFloat(65535.0f);
            this->accel.x = Math_Sins(rand) * (Math_Rand_ZeroOne() + 1.0f);
            this->accel.z = Math_Coss(rand) * (Math_Rand_ZeroOne() + 1.0f);
            this->life = 8;
            this->accel.y = -1.5f;
            this->velocity.y = 5.0f;
        }
    }
}

void func_809A3B60(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    this->regs[SS_EN_ICE_PITCH] += this->regs[SS_EN_ICE_ROT_SPEED];
}
