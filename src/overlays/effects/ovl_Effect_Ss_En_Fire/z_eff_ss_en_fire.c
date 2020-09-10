/*
 * File: z_eff_ss_en_fire.c
 * Overlay: ovl_Effect_Ss_En_Fire
 * Description:
 */

#include "z_eff_ss_en_fire.h"

typedef enum {
    /* 0x00 */ SS_EN_FIRE_SCALE_MAX,
    /* 0x01 */ SS_EN_FIRE_SCALE,
    /* 0x02 */ SS_EN_FIRE_LIFESPAN,
    /* 0x03 */ SS_EN_FIRE_UNUSED,
    /* 0x04 */ SS_EN_FIRE_PITCH,
    /* 0x05 */ SS_EN_FIRE_YAW,
    /* 0x06 */ SS_EN_FIRE_6,
    /* 0x07 */ SS_EN_FIRE_BODYPART,
    /* 0x08 */ SS_EN_FIRE_FLAGS,
    /* 0x09 */ SS_EN_FIRE_SCROLL
} EffectSsEnFireRegs;

u32 EffectSsEnFire_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsEnFire_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsEnFire_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_En_Fire_InitVars = {
    EFFECT_SS_EN_FIRE,
    EffectSsEnFire_Init,
};

extern Gfx D_0404D5A0[];
extern Gfx D_0404D4E0[];

u32 EffectSsEnFire_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsEnFireInitParams* initParams = (EffectSsEnFireInitParams*)initParamsx;
    Vec3f zeroVecSrc = { 0.0f, 0.0f, 0.0f };
    Vec3f zeroVec;

    this->pos = initParams->pos;
    zeroVec = zeroVecSrc;
    this->accel = zeroVec;
    this->velocity = zeroVec;
    this->life = 20;
    this->regs[SS_EN_FIRE_LIFESPAN] = this->life;
    this->actor = initParams->actor;

    this->regs[SS_EN_FIRE_SCROLL] = Math_Rand_ZeroOne() * 20.0f;
    this->draw = EffectSsEnFire_Draw;
    this->update = EffectSsEnFire_Update;
    this->regs[SS_EN_FIRE_UNUSED] = -15;

    if (initParams->bodypart < 0) {
        this->regs[SS_EN_FIRE_YAW] =
            Math_Vec3f_Yaw(&initParams->actor->posRot, &initParams->pos) - initParams->actor->shape.rot.y;
        this->regs[SS_EN_FIRE_PITCH] =
            Math_Vec3f_Pitch(&initParams->actor->posRot, &initParams->pos) - initParams->actor->shape.rot.x;
        this->vec.z = Math_Vec3f_DistXYZ(&initParams->pos, &initParams->actor->posRot);
    }

    this->regs[SS_EN_FIRE_SCALE_MAX] = initParams->scale;

    if ((initParams->unk_12 & 0x8000) != 0) {
        this->regs[SS_EN_FIRE_SCALE] = initParams->scale;
    } else {
        this->regs[SS_EN_FIRE_SCALE] = 0;
    }

    this->regs[SS_EN_FIRE_6] = initParams->unk_12 & 0x7FFF;
    this->regs[SS_EN_FIRE_BODYPART] = initParams->bodypart;
    this->regs[SS_EN_FIRE_FLAGS] = initParams->flags;

    return 1;
}

void EffectSsEnFire_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    f32 scale;
    s16 camYaw;
    s32 pad[3];
    s16 redGreen;

    OPEN_DISPS(gfxCtx, "../z_eff_en_fire.c", 169);

    Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
    camYaw = (func_8005A9F4(ACTIVE_CAM) + 0x8000);
    Matrix_RotateY(camYaw * 0.0000958738f, MTXMODE_APPLY);

    scale = Math_Sins(this->life * 0x333) * (this->regs[SS_EN_FIRE_SCALE] * 0.00005f);
    Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_eff_en_fire.c", 180),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    redGreen = this->life - 5;

    if (redGreen < 0) {
        redGreen = 0;
    }

    func_80093D84(globalCtx->state.gfxCtx);
    gDPSetEnvColor(oGfxCtx->polyXlu.p++, redGreen * 12.7f, 0, 0, 0);
    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x0, 0x80, redGreen * 12.7f, redGreen * 12.7f, 0, 255);
    gSPSegment(oGfxCtx->polyXlu.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 0x20, 0x40, 1, 0,
                                (this->regs[SS_EN_FIRE_SCROLL] * -0x14) & 0x1FF, 0x20, 0x80));

    if (((this->regs[SS_EN_FIRE_FLAGS] & 0x7FFF) != 0) || (this->life < 18)) {
        gSPDisplayList(oGfxCtx->polyXlu.p++, D_0404D5A0);
    } else {
        gSPDisplayList(oGfxCtx->polyXlu.p++, D_0404D4E0);
    }

    CLOSE_DISPS(gfxCtx, "../z_eff_en_fire.c", 213);
}

typedef struct {
    /* 0x000 */ Actor actor;
    /* 0x14C */ Vec3f firePos[10];
} FireActorF;

typedef struct {
    /* 0x000 */ Actor actor;
    /* 0x14C */ Vec3s firePos[10];
} FireActorS;

void EffectSsEnFire_Update(GlobalContext* globalCtx, u32 index, EffectSs* this) {

    this->regs[SS_EN_FIRE_SCROLL]++;

    if (this->actor != NULL) {
        if (this->actor->dmgEffectTimer >= 22) {
            this->life++;
        }
        if (this->actor->update != NULL) {
            Math_SmoothScaleMaxMinS(&this->regs[SS_EN_FIRE_SCALE], this->regs[SS_EN_FIRE_SCALE_MAX], 1,
                                    this->regs[SS_EN_FIRE_SCALE_MAX] >> 3, 0);

            if (this->regs[SS_EN_FIRE_BODYPART] < 0) {
                Matrix_Translate(this->actor->posRot.pos.x, this->actor->posRot.pos.y, this->actor->posRot.pos.z,
                                 MTXMODE_NEW);
                Matrix_RotateY((this->regs[SS_EN_FIRE_YAW] + this->actor->shape.rot.y) * 0.0000958738f, MTXMODE_APPLY);
                Matrix_RotateX((this->regs[SS_EN_FIRE_PITCH] + this->actor->shape.rot.x) * 0.0000958738f,
                               MTXMODE_APPLY);
                Matrix_MultVec3f(&this->vec, &this->pos);
            } else {
                if ((this->regs[SS_EN_FIRE_FLAGS] & 0x8000)) {
                    this->pos.x = ((FireActorS*)this->actor)->firePos[this->regs[SS_EN_FIRE_BODYPART]].x;
                    this->pos.y = ((FireActorS*)this->actor)->firePos[this->regs[SS_EN_FIRE_BODYPART]].y;
                    this->pos.z = ((FireActorS*)this->actor)->firePos[this->regs[SS_EN_FIRE_BODYPART]].z;
                } else {
                    this->pos.x = ((FireActorF*)this->actor)->firePos[this->regs[SS_EN_FIRE_BODYPART]].x;
                    this->pos.y = ((FireActorF*)this->actor)->firePos[this->regs[SS_EN_FIRE_BODYPART]].y;
                    this->pos.z = ((FireActorF*)this->actor)->firePos[this->regs[SS_EN_FIRE_BODYPART]].z;
                }
            }
        } else if (this->regs[SS_EN_FIRE_6] != 0) {
            this->life = 0;
        } else {
            this->actor = NULL;
        }
    }
}
