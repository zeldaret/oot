/*
 * File: z_eff_ss_k_fire.c
 * Overlay: ovl_Effect_Ss_K_Fire
 * Description:
 */

#include "z_eff_ss_k_fire.h"

typedef enum {
    /* 0x00 */ SS_K_FIRE_ALPHA,
    /* 0x02 */ SS_K_FIRE_SCROLL = 2,
    /* 0x03 */ SS_K_FIRE_TYPE,
    /* 0x04 */ SS_K_FIRE_Y_SCALE,
    /* 0x05 */ SS_K_FIRE_XZ_SCALE,
    /* 0x06 */ SS_K_FIRE_SCALE = 6,
    /* 0x0A */ SS_K_FIRE_A = 10
} EffectSsK_FireRegs;

u32 EffectSsKFire_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsKFire_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsKFire_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_K_Fire_InitVars = {
    EFFECT_SS_K_FIRE,
    EffectSsKFire_Init,
};

extern Gfx D_0404D4E0[];

u32 EffectSsKFire_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsKFireInitParams* initParams = (EffectSsKFireInitParams*)initParamsx;

    this->pos = initParams->pos;
    this->velocity = initParams->velocity;
    this->accel = initParams->accel;
    this->life = 100;
    this->regs[SS_K_FIRE_SCALE] = initParams->scale;
    this->regs[SS_K_FIRE_ALPHA] = 255;
    this->regs[SS_K_FIRE_SCROLL] = (s16)Math_Rand_ZeroFloat(5.0f) - 0x19;
    this->regs[SS_K_FIRE_TYPE] = initParams->type;
    this->draw = EffectSsKFire_Draw;
    this->update = EffectSsKFire_Update;

    return 1;
}

void EffectSsKFire_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    s32 pad;
    f32 xzScale;
    f32 yScale;

    xzScale = this->regs[SS_K_FIRE_XZ_SCALE] / 10000.0f;
    yScale = this->regs[SS_K_FIRE_Y_SCALE] / 10000.0f;

    OPEN_DISPS(gfxCtx, "../z_eff_k_fire.c", 152);

    Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
    Matrix_Scale(xzScale, yScale, xzScale, MTXMODE_APPLY);
    func_80093D84(globalCtx->state.gfxCtx);
    gSPSegment(oGfxCtx->polyXlu.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 0x20, 0x40, 1, 0,
                                globalCtx->state.frames * this->regs[SS_K_FIRE_SCROLL], 0x20, 0x80));

    if (this->regs[SS_K_FIRE_TYPE] >= 0x64) {
        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x80, 0x80, 255, 255, 0, this->regs[SS_K_FIRE_ALPHA]);
        gDPSetEnvColor(oGfxCtx->polyXlu.p++, 255, 10, 0, 0);
    } else {
        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x80, 0x80, 255, 255, 255, this->regs[SS_K_FIRE_ALPHA]);
        gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0, 255, 255, 0);
    }

    if (1) {}

    gDPPipeSync(oGfxCtx->polyXlu.p++);
    func_800D1FD4(&globalCtx->mf_11DA0);

    if ((index & 1) != 0) {
        Matrix_RotateY(3.1415927f, MTXMODE_APPLY); // pi?
    }

    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_eff_k_fire.c", 215),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(oGfxCtx->polyXlu.p++, D_0404D4E0);

    CLOSE_DISPS(gfxCtx, "../z_eff_k_fire.c", 220);
}

void EffectSsKFire_Update(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    if (this->regs[SS_K_FIRE_XZ_SCALE] < this->regs[SS_K_FIRE_SCALE]) {
        this->regs[SS_K_FIRE_XZ_SCALE] += 4;
        this->regs[SS_K_FIRE_Y_SCALE] += 4;

        if (this->regs[SS_K_FIRE_SCALE] < this->regs[SS_K_FIRE_XZ_SCALE]) {
            this->regs[SS_K_FIRE_XZ_SCALE] = this->regs[SS_K_FIRE_SCALE];

            if (this->regs[SS_K_FIRE_TYPE] != 3) {
                this->regs[SS_K_FIRE_Y_SCALE] = this->regs[SS_K_FIRE_SCALE];
            }
        }
    } else {
        if (this->regs[SS_K_FIRE_ALPHA] > 0) {
            this->regs[SS_K_FIRE_ALPHA] -= 10;
            if (this->regs[SS_K_FIRE_ALPHA] <= 0) {
                this->regs[SS_K_FIRE_ALPHA] = 0;
                this->life = 0;
            }
        }
    }

    if (this->regs[SS_K_FIRE_TYPE] == 3) {
        this->regs[SS_K_FIRE_Y_SCALE]++;
    }
}
