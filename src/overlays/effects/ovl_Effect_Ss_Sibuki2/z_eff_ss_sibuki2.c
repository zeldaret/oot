/*
 * File: z_eff_ss_sibuki2.c
 * Overlay: ovl_Effect_Ss_Sibuki2
 * Description: Unfinished and unused bubble effect
 */

#include "z_eff_ss_sibuki2.h"

typedef enum {
    /* 0x00 */ SS_SIBUKI2_PRIM_R,
    /* 0x01 */ SS_SIBUKI2_PRIM_G,
    /* 0x02 */ SS_SIBUKI2_PRIM_B,
    /* 0x03 */ SS_SIBUKI2_PRIM_A,
    /* 0x04 */ SS_SIBUKI2_ENV_R,
    /* 0x05 */ SS_SIBUKI2_ENV_G,
    /* 0x06 */ SS_SIBUKI2_ENV_B,
    /* 0x07 */ SS_SIBUKI2_ENV_A,
    /* 0x08 */ SS_SIBUKI2_TEX_IDX,
    /* 0x09 */ SS_SIBUKI2_SCALE
} EffectSsSibuki2Regs;

u32 EffectSsSibuki2_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsSibuki2_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsSibuki2_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_Sibuki2_InitVars = {
    EFFECT_SS_SIBUKI2,
    EffectSsSibuki2_Init,
};

UNK_PTR D_809AC068[] = {
    0x0401C2C0, 0x0401C2C0, 0x0401C6C0, 0x0401CAC0, 0x0401CEC0, 0x0401D2C0, 0x0401D6C0, 0x0401DAC0, 0x0401DEC0,
};

extern Gfx D_0401E2C0[];

u32 EffectSsSibuki2_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsSibuki2InitParams* initParams = (EffectSsSibuki2InitParams*)initParamsx;

    this->pos = initParams->pos;
    this->velocity = initParams->velocity;
    this->accel = initParams->accel;
    this->life = 10;
    this->draw = EffectSsSibuki2_Draw;
    this->update = EffectSsSibuki2_Update;
    this->regs[SS_SIBUKI2_SCALE] = initParams->scale;
    this->regs[SS_SIBUKI2_PRIM_R] = 255;
    this->regs[SS_SIBUKI2_PRIM_G] = 255;
    this->regs[SS_SIBUKI2_PRIM_B] = 255;
    this->regs[SS_SIBUKI2_PRIM_A] = 255;
    this->regs[SS_SIBUKI2_ENV_R] = 100;
    this->regs[SS_SIBUKI2_ENV_G] = 100;
    this->regs[SS_SIBUKI2_ENV_B] = 100;
    this->regs[SS_SIBUKI2_ENV_A] = 255;
    this->regs[SS_SIBUKI2_TEX_IDX] = 0;

    return 1;
}

void EffectSsSibuki2_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    f32 scale = this->regs[SS_SIBUKI2_SCALE] / 100.0f;

    OPEN_DISPS(gfxCtx, "../z_eff_ss_sibuki2.c", 158);

    Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
    Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_eff_ss_sibuki2.c", 171),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    func_80093D18(gfxCtx);
    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, this->regs[SS_SIBUKI2_PRIM_R], this->regs[SS_SIBUKI2_PRIM_G],
                    this->regs[SS_SIBUKI2_PRIM_B], this->regs[SS_SIBUKI2_PRIM_A]);
    gDPSetEnvColor(oGfxCtx->polyXlu.p++, this->regs[SS_SIBUKI2_ENV_R], this->regs[SS_SIBUKI2_ENV_G],
                   this->regs[SS_SIBUKI2_ENV_B], this->regs[SS_SIBUKI2_ENV_A]);
    gSPSegment(oGfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_809AC068[this->regs[SS_SIBUKI2_TEX_IDX]]));
    gSPDisplayList(oGfxCtx->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_0401E2C0));

    CLOSE_DISPS(gfxCtx, "../z_eff_ss_sibuki2.c", 198);
}

void EffectSsSibuki2_Update(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    if (this->regs[SS_SIBUKI2_TEX_IDX] < 8) {
        this->regs[SS_SIBUKI2_TEX_IDX]++;
    }
}
