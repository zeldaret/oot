/*
 * File: z_eff_ss_blast.c
 * Overlay: ovl_Effect_Ss_Blast
 * Description: Shockwave Effect
 */

#include "z_eff_ss_blast.h"

typedef enum {
    /* 0x00 */ SS_BLAST_ENV_R,
    /* 0x01 */ SS_BLAST_ENV_G,
    /* 0x02 */ SS_BLAST_ENV_B,
    /* 0x03 */ SS_BLAST_ENV_A,
    /* 0x04 */ SS_BLAST_PRIM_R,
    /* 0x05 */ SS_BLAST_PRIM_G,
    /* 0x06 */ SS_BLAST_PRIM_B,
    /* 0x07 */ SS_BLAST_PRIM_A,
    /* 0x08 */ SS_BLAST_ALPHA_STEP,
    /* 0x09 */ SS_BLAST_RADIUS,
    /* 0x0A */ SS_BLAST_RADIUS_STEP,
    /* 0x0B */ SS_BLAST_RADIUS_STEP_DECR,
} EffectSsBlastRegs;

u32 EffectSsBlast_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsBlast_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsBlast_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_Blast_InitVars = {
    EFFECT_SS_BLAST,
    EffectSsBlast_Init,
};

extern Gfx D_0401A0B0[];

u32 EffectSsBlast_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsBlastParams* initParams = (EffectSsBlastParams*)initParamsx;

    this->pos = initParams->pos;
    this->pos.y += 5.0f;
    this->velocity = initParams->velocity;
    this->accel = initParams->accel;
    this->displayList = SEGMENTED_TO_VIRTUAL(D_0401A0B0);
    this->life = initParams->life;
    this->draw = EffectSsBlast_Draw;
    this->update = EffectSsBlast_Update;
    this->regs[SS_BLAST_ENV_R] = initParams->envColor.r;
    this->regs[SS_BLAST_ENV_G] = initParams->envColor.g;
    this->regs[SS_BLAST_ENV_B] = initParams->envColor.b;
    this->regs[SS_BLAST_ENV_A] = initParams->envColor.a;
    this->regs[SS_BLAST_PRIM_R] = initParams->primColor.r;
    this->regs[SS_BLAST_PRIM_G] = initParams->primColor.g;
    this->regs[SS_BLAST_PRIM_B] = initParams->primColor.b;
    this->regs[SS_BLAST_PRIM_A] = initParams->primColor.a;
    this->regs[SS_BLAST_ALPHA_STEP] = initParams->envColor.a / initParams->life;
    this->regs[SS_BLAST_RADIUS] = initParams->radius;
    this->regs[SS_BLAST_RADIUS_STEP] = initParams->radiusStep;
    this->regs[SS_BLAST_RADIUS_STEP_DECR] = initParams->radiusStepDecr;
    return 1;
}

void EffectSsBlast_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    s32 pad;
    MtxF mtx;
    s32 pad1;
    f32 scale;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(&dispRefs, gfxCtx, "../z_eff_ss_blast.c", 170);

    scale = this->regs[SS_BLAST_RADIUS] * 0.0025f;

    func_80093D84(globalCtx->state.gfxCtx);
    gDPSetEnvColor(gfxCtx->polyXlu.p++, this->regs[SS_BLAST_PRIM_R], this->regs[SS_BLAST_PRIM_G],
                   this->regs[SS_BLAST_PRIM_B], this->regs[SS_BLAST_PRIM_A]);
    func_800BFCB8(globalCtx, &mtx, &this->pos);
    gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, this->regs[SS_BLAST_ENV_R], this->regs[SS_BLAST_ENV_G],
                    this->regs[SS_BLAST_ENV_B], this->regs[SS_BLAST_ENV_A]);
    Matrix_Put(&mtx);
    Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_eff_ss_blast.c", 199),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyXlu.p++, this->displayList);
    Graph_CloseDisps(&dispRefs, gfxCtx, "../z_eff_ss_blast.c", 204);
}

void EffectSsBlast_Update(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    Math_ApproxS(&this->regs[SS_BLAST_ENV_A], 0, this->regs[SS_BLAST_ALPHA_STEP]);
    this->regs[SS_BLAST_RADIUS] += this->regs[SS_BLAST_RADIUS_STEP];

    if (this->regs[SS_BLAST_RADIUS_STEP] != 0) {
        this->regs[SS_BLAST_RADIUS_STEP] -= this->regs[SS_BLAST_RADIUS_STEP_DECR];
    }
}
