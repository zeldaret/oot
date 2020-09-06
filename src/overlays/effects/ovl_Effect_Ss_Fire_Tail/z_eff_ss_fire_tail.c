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
    /* 0x0B */ SS_FIRE_TAIL_B,
    /* 0x0C */ SS_FIRE_TAIL_C,
} EffectSsFire_TailRegs;

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
    this->regs[SS_FIRE_TAIL_B] = initParams->unk_2C;
    this->regs[SS_FIRE_TAIL_C] = initParams->unk_2A;

    return 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Fire_Tail/func_809A5858.s")
/*
void func_809A5858(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Vec3f spA0;
    f32 sp9C;
    f32 sp98;
    f32 sp94;
    f32 scale;
    f32 temp_f2;
    f32 scale2;
    s16 yaw;
    Player* player;
    Actor* actor;
    s16 limb;

    OPEN_DISPS(gfxCtx, "../z_eff_fire_tail.c", 182);

    spA0.x = spA0.y = spA0.z = 0.0f;
    actor = this->actor;

    if (actor != NULL) { // 16C
        this->vec = actor->velocity;
        limb = this->regs[SS_FIRE_TAIL_B];
        if (limb < 0) { // 194
            Matrix_Translate(this->pos.x + actor->posRot.pos.x, this->pos.y + actor->posRot.pos.y,
                             this->pos.z + actor->posRot.pos.z, MTXMODE_NEW);
        } else {
            player = PLAYER;

            this->pos.x = player->unk_908[limb].x - (Math_Sins(func_8005A9F4(ACTIVE_CAM)) * 5.0f);
            this->pos.y = player->unk_908[limb].y;
            this->pos.z = player->unk_908[limb].z - (Math_Coss(func_8005A9F4(ACTIVE_CAM)) * 5.0f);

            Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
        }
    } else {
        Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
    }

    yaw = Math_Vec3f_Yaw(&spA0, &this->vec) - func_8005A9F4(ACTIVE_CAM);
    sp9C = fabsf(Math_Coss(yaw));
    sp98 = Math_Sins(yaw);
    sp94 = Math_Vec3f_DistXZ(&spA0, &this->vec) / (this->regs[SS_FIRE_TAIL_A] * 0.1f); // div being weird

    Matrix_RotateY(((((s16)(func_8005A9F4(ACTIVE_CAM) + 0x8000)))) * 0.0000958738f, MTXMODE_APPLY);
    Matrix_RotateZ(((this->regs[SS_FIRE_TAIL_2] * sp98) * sp94) * 0.017453292f, MTXMODE_APPLY);

    temp_f2 = 1.0f - ((this->life + 1) / this->regs[SS_FIRE_TAIL_1]);

    scale = (this->regs[SS_FIRE_TAIL_SCALE] * 0.000010000001f) * (1.0f - SQ(temp_f2));
    spA0.x = spA0.y = spA0.z = scale;
    Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);

    scale2 = (((this->regs[SS_FIRE_TAIL_3] * 0.01f) * sp9C) * sp94) + 1.0f;
    scale2 = CLAMP_MIN(scale2, 0.1f);
    Matrix_Scale(1.0f, scale2, 1.0f / scale2, 1);

    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_eff_fire_tail.c", 238),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    func_80093D84(globalCtx->state.gfxCtx);
    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0x80, this->regs[SS_FIRE_TAIL_PRIM_R], this->regs[SS_FIRE_TAIL_PRIM_G],
                    this->regs[SS_FIRE_TAIL_PRIM_B], 255);
    gDPSetEnvColor(oGfxCtx->polyXlu.p++, this->regs[SS_FIRE_TAIL_ENV_R], this->regs[SS_FIRE_TAIL_ENV_G],
                   this->regs[SS_FIRE_TAIL_ENV_B], 0);
    gSPSegment(oGfxCtx->polyXlu.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 32, 64, 1, 0,
                                ((globalCtx->state.frames) * -0x14) & 0x1FF, 32, 128));

    if (this->regs[SS_FIRE_TAIL_C] != 0) {
        gSPDisplayList(oGfxCtx->polyXlu.p++, D_0404D5A0);
    } else {
        gSPDisplayList(oGfxCtx->polyXlu.p++, D_0404D4E0);
    }

    CLOSE_DISPS(gfxCtx, "../z_eff_fire_tail.c", 273);
}
*/

void func_809A5D98(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    this->regs[SS_FIRE_TAIL_SCALE] *= 0.9f;
}
