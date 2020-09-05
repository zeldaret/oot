/*
 * File: z_eff_ss_g_magma2.c
 * Overlay: ovl_Effect_Ss_G_Magma2
 * Description:
 */

#include "z_eff_ss_g_magma2.h"

typedef enum {
    /* 0x00 */ SS_G_MAGMA2_PRIM_R,
    /* 0x01 */ SS_G_MAGMA2_PRIM_G,
    /* 0x02 */ SS_G_MAGMA2_PRIM_A,
    /* 0x03 */ SS_G_MAGMA2_ENV_R,
    /* 0x04 */ SS_G_MAGMA2_ENV_G,
    /* 0x05 */ SS_G_MAGMA2_ENV_A,
    /* 0x06 */ SS_G_MAGMA2_TEX_IDX,
    /* 0x07 */ SS_G_MAGMA2_7,
    /* 0x08 */ SS_G_MAGMA2_8,
    /* 0x09 */ SS_G_MAGMA2_9,
    /* 0x0A */ SS_G_MAGMA2_OBJ_BANK_IDX,
    /* 0x0B */ SS_G_MAGMA2_SCALE
} EffectSsG_Magma2Regs;

u32 EffectSsGMagma2_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void func_809A6568(GlobalContext* globalCtx, u32 index, EffectSs* this);
void func_809A67C0(GlobalContext* globalCtx, u32 index, EffectSs* this);

UNK_PTR D_809A6860[] = {
    0x0602E4E0, 0x0602E8E0, 0x0602ECE0, 0x0602F0E0, 0x0602F4E0, 0x0602F8E0, 0x0602FCE0,
    0x060300E0, 0x060304E0, 0x060308E0, 0x060308E0, 0x060308E0, 0x060308E0,
};

EffectSsInit Effect_Ss_G_Magma2_InitVars = {
    EFFECT_SS_G_MAGMA2,
    EffectSsGMagma2_Init,
};

extern Gfx D_06025A90[];

u32 EffectSsGMagma2_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    static Vec3f zeroVecSrc = { 0.0f, 0.0f, 0.0f };
    s32 objBankIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_KINGDODONGO);
    s32 pad;
    Vec3f zeroVec;
    EffectSsGMagma2InitParams* initParams = (EffectSsGMagma2InitParams*)initParamsx;

    if ((objBankIndex >= 0) && (Object_IsLoaded(&globalCtx->objectCtx, objBankIndex))) {
        zeroVec = zeroVecSrc;
        gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[objBankIndex].segment);
        this->regs[SS_G_MAGMA2_OBJ_BANK_IDX] = objBankIndex;
        this->pos = initParams->pos;
        this->velocity = zeroVec;
        this->accel = zeroVec;
        this->life = 100;
        this->draw = func_809A6568;
        this->update = func_809A67C0;

        this->gfx = SEGMENTED_TO_VIRTUAL(D_06025A90);
        this->regs[SS_G_MAGMA2_TEX_IDX] = 0;
        this->regs[SS_G_MAGMA2_9] = initParams->unk_16;
        this->regs[SS_G_MAGMA2_8] = initParams->unk_14;
        this->regs[SS_G_MAGMA2_SCALE] = initParams->scale;
        this->regs[SS_G_MAGMA2_PRIM_R] = initParams->primColor.r;
        this->regs[SS_G_MAGMA2_PRIM_G] = initParams->primColor.g;
        this->regs[SS_G_MAGMA2_PRIM_A] = initParams->primColor.a;
        this->regs[SS_G_MAGMA2_ENV_R] = initParams->envColor.r;
        this->regs[SS_G_MAGMA2_ENV_G] = initParams->envColor.g;
        this->regs[SS_G_MAGMA2_ENV_A] = initParams->envColor.a;

        return 1;
    }

    return 0;
}

void func_809A6568(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    s32 pad;
    f32 scale;
    void* object;

    scale = this->regs[SS_G_MAGMA2_SCALE] / 100.0f;
    object = globalCtx->objectCtx.status[this->regs[SS_G_MAGMA2_OBJ_BANK_IDX]].segment;

    OPEN_DISPS(gfxCtx, "../z_eff_ss_g_magma2.c", 261);

    Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
    Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
    gSegments[6] = VIRTUAL_TO_PHYSICAL(object);
    gSPSegment(oGfxCtx->polyXlu.p++, 0x06, object);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_eff_ss_g_magma2.c", 282),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    if (this->regs[SS_G_MAGMA2_9] == 0) {
        oGfxCtx->polyXlu.p = Gfx_CallSetupDL(gfxCtx->polyXlu.p, 0x3D);
    } else {
        oGfxCtx->polyXlu.p = Gfx_CallSetupDL(gfxCtx->polyXlu.p, 0);
    }

    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, this->regs[SS_G_MAGMA2_PRIM_R], this->regs[SS_G_MAGMA2_PRIM_G], 0,
                    this->regs[SS_G_MAGMA2_PRIM_A]);
    gDPSetEnvColor(oGfxCtx->polyXlu.p++, this->regs[SS_G_MAGMA2_ENV_R], this->regs[SS_G_MAGMA2_ENV_G], 0,
                   this->regs[SS_G_MAGMA2_ENV_A]);
    gSPSegment(oGfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_809A6860[this->regs[SS_G_MAGMA2_TEX_IDX]]));
    gSPDisplayList(oGfxCtx->polyXlu.p++, this->gfx);

    CLOSE_DISPS(gfxCtx, "../z_eff_ss_g_magma2.c", 311);
}

void func_809A67C0(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    this->regs[SS_G_MAGMA2_7] += this->regs[SS_G_MAGMA2_8];

    if (this->regs[SS_G_MAGMA2_7] >= 10) {
        this->regs[SS_G_MAGMA2_7] -= 10;
        this->regs[SS_G_MAGMA2_TEX_IDX]++;

        if (this->regs[SS_G_MAGMA2_TEX_IDX] >= 10) {
            this->life = 0;
        }

        if (this->regs[SS_G_MAGMA2_9] == 0) {
            this->regs[SS_G_MAGMA2_PRIM_G] -= 26;

            if (this->regs[SS_G_MAGMA2_PRIM_G] <= 0) {
                this->regs[SS_G_MAGMA2_PRIM_G] = 0;
            }

            this->regs[SS_G_MAGMA2_ENV_R] -= 26;

            if (this->regs[SS_G_MAGMA2_ENV_R] <= 0) {
                this->regs[SS_G_MAGMA2_ENV_R] = 0;
            }
        }
    }
}
