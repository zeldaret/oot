/*
 * File: z_eff_ss_dead_db.c
 * Overlay: ovl_Effect_Ss_Dead_Db
 * Description: Flames and sound used when an enemy dies
 */

#include "z_eff_ss_dead_db.h"

typedef enum {
    /* 0x00 */ SS_DEAD_DB_SCALE,
    /* 0x01 */ SS_DEAD_DB_1,
    /* 0x02 */ SS_DEAD_DB_PRIM_R,
    /* 0x03 */ SS_DEAD_DB_PRIM_G,
    /* 0x04 */ SS_DEAD_DB_PRIM_B,
    /* 0x05 */ SS_DEAD_DB_PRIM_A,
    /* 0x06 */ SS_DEAD_DB_ENV_R,
    /* 0x07 */ SS_DEAD_DB_ENV_G,
    /* 0x08 */ SS_DEAD_DB_ENV_B,
    /* 0x09 */ SS_DEAD_DB_SCALE_STEP,
    /* 0x0A */ SS_DEAD_DB_A,
    /* 0x0B */ SS_DEAD_DB_B
} EffectSsDead_DbRegs;

u32 EffectSsDeadDb_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsDeadDb_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsDeadDb_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_Dead_Db_InitVars = {
    EFFECT_SS_DEAD_DB,
    EffectSsDeadDb_Init,
};

UNK_PTR D_809A0F28[] = {
    0x0402CFE0, 0x0402D7E0, 0x0402DFE0, 0x0402E7E0, 0x0402EFE0,
    0x0402F7E0, 0x0402FFE0, 0x040307E0, 0x04030FE0, 0x040317E0,
};

extern Gfx D_04031FE0[];

u32 EffectSsDeadDb_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsDeadDbInitParams* initParams = (EffectSsDeadDbInitParams*)initParamsx;

    this->pos = initParams->pos;
    this->velocity = initParams->velocity;
    this->accel = initParams->accel;
    this->displayList = SEGMENTED_TO_VIRTUAL(D_04031FE0);
    this->life = initParams->unk_34;
    this->flags = 4;
    this->regs[SS_DEAD_DB_SCALE_STEP] = initParams->scaleStep;
    this->regs[SS_DEAD_DB_B] = initParams->unk_34;
    this->draw = EffectSsDeadDb_Draw;
    this->update = EffectSsDeadDb_Update;
    this->regs[SS_DEAD_DB_SCALE] = initParams->scale;
    this->regs[SS_DEAD_DB_1] = 0;
    this->regs[SS_DEAD_DB_A] = initParams->unk_38;
    this->regs[SS_DEAD_DB_PRIM_R] = initParams->primColor.r;
    this->regs[SS_DEAD_DB_PRIM_G] = initParams->primColor.g;
    this->regs[SS_DEAD_DB_PRIM_B] = initParams->primColor.b;
    this->regs[SS_DEAD_DB_PRIM_A] = initParams->primColor.a;
    this->regs[SS_DEAD_DB_ENV_R] = initParams->envColor.r;
    this->regs[SS_DEAD_DB_ENV_G] = initParams->envColor.g;
    this->regs[SS_DEAD_DB_ENV_B] = initParams->envColor.b;

    return 1;
}

void EffectSsDeadDb_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    MtxF spD4;
    MtxF sp94;
    MtxF sp54;
    Mtx* mtx;
    f32 scale;

    OPEN_DISPS(gfxCtx, "../z_eff_ss_dead_db.c", 201);

    scale = this->regs[SS_DEAD_DB_SCALE] * 0.01f;

    SkinMatrix_SetTranslate(&spD4, this->pos.x, this->pos.y, this->pos.z);
    SkinMatrix_SetScale(&sp94, scale, scale, scale);
    SkinMatrix_MtxFMtxFMult(&spD4, &sp94, &sp54);

    mtx = SkinMatrix_MtxFToNewMtx(gfxCtx, &sp54);

    if (mtx != NULL) {
        gSPMatrix(oGfxCtx->polyXlu.p++, mtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        func_80094BC4(gfxCtx);
        gDPSetEnvColor(oGfxCtx->polyXlu.p++, this->regs[SS_DEAD_DB_ENV_R], this->regs[SS_DEAD_DB_ENV_G],
                       this->regs[SS_DEAD_DB_ENV_B], 0);
        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, this->regs[SS_DEAD_DB_PRIM_R], this->regs[SS_DEAD_DB_PRIM_G],
                        this->regs[SS_DEAD_DB_PRIM_B], this->regs[SS_DEAD_DB_PRIM_A]);
        gSPSegment(oGfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_809A0F28[this->regs[SS_DEAD_DB_1]]));
        gSPDisplayList(oGfxCtx->polyXlu.p++, this->displayList);
    }

    CLOSE_DISPS(gfxCtx, "../z_eff_ss_dead_db.c", 247);
}

void EffectSsDeadDb_Update(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    f32 w;
    f32 pad;

    this->regs[SS_DEAD_DB_1] = (f32)((this->regs[SS_DEAD_DB_B] - this->life) * 9) / this->regs[SS_DEAD_DB_B];
    this->regs[SS_DEAD_DB_SCALE] += this->regs[SS_DEAD_DB_SCALE_STEP];

    this->regs[SS_DEAD_DB_PRIM_R] -= 10;
    if (this->regs[SS_DEAD_DB_PRIM_R] < 0) {
        this->regs[SS_DEAD_DB_PRIM_R] = 0;
    }

    this->regs[SS_DEAD_DB_PRIM_G] -= 10;
    if (this->regs[SS_DEAD_DB_PRIM_G] < 0) {
        this->regs[SS_DEAD_DB_PRIM_G] = 0;
    }

    this->regs[SS_DEAD_DB_PRIM_B] -= 10;
    if (this->regs[SS_DEAD_DB_PRIM_B] < 0) {
        this->regs[SS_DEAD_DB_PRIM_B] = 0;
    }

    this->regs[SS_DEAD_DB_ENV_R] -= 10;
    if (this->regs[SS_DEAD_DB_ENV_R] < 0) {
        this->regs[SS_DEAD_DB_ENV_R] = 0;
    }

    this->regs[SS_DEAD_DB_ENV_G] -= 10;
    if (this->regs[SS_DEAD_DB_ENV_G] < 0) {
        this->regs[SS_DEAD_DB_ENV_G] = 0;
    }

    this->regs[SS_DEAD_DB_ENV_B] -= 10;
    if (this->regs[SS_DEAD_DB_ENV_B] < 0) {
        this->regs[SS_DEAD_DB_ENV_B] = 0;
    }

    if ((this->regs[SS_DEAD_DB_A] != 0) && (this->regs[SS_DEAD_DB_1] == 1)) {
        SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx->mf_11D60, &this->pos, &this->unk_2C, &w);
        Audio_PlaySoundGeneral(NA_SE_EN_EXTINCT, &this->unk_2C, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }
}
