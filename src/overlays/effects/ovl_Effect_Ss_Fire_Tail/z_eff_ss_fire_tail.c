/*
 * File: z_eff_ss_fire_tail.c
 * Overlay: ovl_Effect_Ss_Fire_Tail
 * Description:
 */

#include "z_eff_ss_fire_tail.h"

typedef enum {
    /* 0x00 */ SS_FIRE_TAIL_SCALE,
    /* 0x01 */ SS_FIRE_TAIL_1,
    /* 0x02 */ SS_FIRE_TAIL_2,
    /* 0x03 */ SS_FIRE_TAIL_3,
    /* 0x04 */ SS_FIRE_TAIL_PRIM_R,
    /* 0x05 */ SS_FIRE_TAIL_PRIM_G,
    /* 0x06 */ SS_FIRE_TAIL_PRIM_B,
    /* 0x07 */ SS_FIRE_TAIL_ENV_R,
    /* 0x08 */ SS_FIRE_TAIL_ENV_G,
    /* 0x09 */ SS_FIRE_TAIL_ENV_B,
    /* 0x0A */ SS_FIRE_TAIL_A,
    /* 0x0B */ SS_FIRE_TAIL_BODYPART,
    /* 0x0C */ SS_FIRE_TAIL_TYPE
} EffectSsFireTailRegs;

u32 EffectSsFireTail_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void func_809A5858(GlobalContext* globalCtx, u32 index, EffectSs* this);
void func_809A5D98(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_Fire_Tail_InitVars = {
    EFFECT_SS_FIRE_TAIL,
    EffectSsFireTail_Init,
};

extern Gfx D_0404D5A0[];
extern Gfx D_0404D4E0[];

u32 EffectSsFireTail_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsFireTailInitParams* initParams = (EffectSsFireTailInitParams*)initParamsx;

    this->pos = initParams->pos;
    this->vec = initParams->unk_14;
    this->velocity.x = 0.0f;
    this->velocity.y = 0.0f;
    this->velocity.z = 0.0f;
    this->accel.x = 0.0f;
    this->accel.y = 0.0f;
    this->accel.z = 0.0f;
    this->life = initParams->life;
    this->actor = initParams->actor;
    this->draw = func_809A5858;
    this->update = func_809A5D98;
    this->regs[SS_FIRE_TAIL_SCALE] = initParams->scale * 1000.0f;
    this->regs[SS_FIRE_TAIL_1] = initParams->life;
    this->regs[SS_FIRE_TAIL_2] = -0xA;
    this->regs[SS_FIRE_TAIL_3] = -0xF;
    if (initParams->unk_20 == 0) {
        initParams->unk_20 = 1;
    }
    this->regs[SS_FIRE_TAIL_A] = initParams->unk_20;
    this->regs[SS_FIRE_TAIL_PRIM_R] = initParams->primColor.r;
    this->regs[SS_FIRE_TAIL_PRIM_G] = initParams->primColor.g;
    this->regs[SS_FIRE_TAIL_PRIM_B] = initParams->primColor.b;
    this->regs[SS_FIRE_TAIL_ENV_R] = initParams->envColor.r;
    this->regs[SS_FIRE_TAIL_ENV_G] = initParams->envColor.g;
    this->regs[SS_FIRE_TAIL_ENV_B] = initParams->envColor.b;
    this->regs[SS_FIRE_TAIL_BODYPART] = initParams->bodypart;
    this->regs[SS_FIRE_TAIL_TYPE] = initParams->type;

    return 1;
}

void func_809A5858(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    s32 pad;
    s16 yaw;
    Vec3f scale;
    f32 temp1;
    f32 temp2;
    f32 dist;

    OPEN_DISPS(gfxCtx, "../z_eff_fire_tail.c", 182);

    scale.x = scale.y = scale.z = 0.0f;

    if (this->actor != NULL) {

        this->vec = this->actor->velocity;

        if (this->regs[SS_FIRE_TAIL_BODYPART] < 0) {
            Matrix_Translate(this->pos.x + this->actor->posRot.pos.x, this->pos.y + this->actor->posRot.pos.y,
                             this->pos.z + this->actor->posRot.pos.z, MTXMODE_NEW);
        } else {
            Player* player = PLAYER;
            s16 bodypart = this->regs[SS_FIRE_TAIL_BODYPART];

            this->pos.x = player->unk_908[bodypart].x - (Math_Sins(func_8005A9F4(ACTIVE_CAM)) * 5.0f);
            this->pos.y = player->unk_908[bodypart].y;
            this->pos.z = player->unk_908[bodypart].z - (Math_Coss(func_8005A9F4(ACTIVE_CAM)) * 5.0f);

            Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
        }
    } else {
        Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
    }

    yaw = Math_Vec3f_Yaw(&scale, &this->vec) - func_8005A9F4(ACTIVE_CAM);
    temp1 = fabsf(Math_Coss(yaw));
    temp2 = Math_Sins(yaw);
    dist = Math_Vec3f_DistXZ(&scale, &this->vec) / (this->regs[SS_FIRE_TAIL_A] * 0.1f);
    Matrix_RotateY(((((s16)(func_8005A9F4(ACTIVE_CAM) + 0x8000)))) * 0.0000958738f, MTXMODE_APPLY);
    Matrix_RotateZ(temp2 * this->regs[SS_FIRE_TAIL_2] * dist * 0.017453292f, MTXMODE_APPLY);
    temp2 = 1.0f - ((f32)(this->life + 1) / this->regs[SS_FIRE_TAIL_1]);
    temp2 = 1.0f - SQ(temp2);
    scale.x = scale.y = scale.z = temp2 * (this->regs[SS_FIRE_TAIL_SCALE] * 0.000010000001f);
    Matrix_Scale(scale.x, scale.y, scale.z, MTXMODE_APPLY);
    temp1 = ((((this->regs[SS_FIRE_TAIL_3] * 0.01f) * temp1) * dist) + 1.0f);

    if (temp1 < 0.1f) {
        temp1 = 0.1f;
    }

    Matrix_Scale(1.0f, temp1, 1.0f / temp1, MTXMODE_APPLY);

    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_eff_fire_tail.c", 238),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    func_80093D84(globalCtx->state.gfxCtx);
    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0x80, this->regs[SS_FIRE_TAIL_PRIM_R], this->regs[SS_FIRE_TAIL_PRIM_G],
                    this->regs[SS_FIRE_TAIL_PRIM_B], 255);
    gDPSetEnvColor(oGfxCtx->polyXlu.p++, this->regs[SS_FIRE_TAIL_ENV_R], this->regs[SS_FIRE_TAIL_ENV_G],
                   this->regs[SS_FIRE_TAIL_ENV_B], 0);
    gSPSegment(oGfxCtx->polyXlu.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 32, 64, 1, 0,
                                (globalCtx->state.frames * -0x14) & 0x1FF, 32, 128));

    if (this->regs[SS_FIRE_TAIL_TYPE] != 0) {
        gSPDisplayList(oGfxCtx->polyXlu.p++, D_0404D5A0);
    } else {
        gSPDisplayList(oGfxCtx->polyXlu.p++, D_0404D4E0);
    }

    CLOSE_DISPS(gfxCtx, "../z_eff_fire_tail.c", 273);
}

void func_809A5D98(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    this->regs[SS_FIRE_TAIL_SCALE] *= 0.9f;
}
