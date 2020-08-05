/*
 * File: z_eff_ss_g_spk.c
 * Overlay: ovl_Effect_Ss_G_Spk
 * Description: Fuse Sparks
 */

#include "z_eff_ss_g_spk.h"

typedef enum {
    /* 0x00 */ SS_G_SPK_PRIM_R,
    /* 0x01 */ SS_G_SPK_PRIM_G,
    /* 0x02 */ SS_G_SPK_PRIM_B,
    /* 0x03 */ SS_G_SPK_PRIM_A,
    /* 0x04 */ SS_G_SPK_ENV_R,
    /* 0x05 */ SS_G_SPK_ENV_G,
    /* 0x06 */ SS_G_SPK_ENV_B,
    /* 0x07 */ SS_G_SPK_ENV_A,
    /* 0x08 */ SS_G_SPK_TEX_IDX,
    /* 0x09 */ SS_G_SPK_SCALE,
    /* 0x0A */ SS_G_SPK_SCALE_STEP,
} EffectSsGSpkRegs;

#define SPARK_SOURCE ((Actor*)this->unk_3C)

u32 EffectSsGSpk_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsGSpk_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsGSpk_UpdateNoAccel(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsGSpk_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_G_Spk_InitVars = {
    EFFECT_SS_G_SPK,
    EffectSsGSpk_Init,
};

static UNK_PTR D_809A7498[] = {
    0x04055FB0,
    0x040561B0,
    0x040563B0,
    0x040565B0,
};

extern Gfx D_04025550[];

u32 EffectSsGSpk_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsGSpkInitParams* initParams = (EffectSsGSpkInitParams*)initParamsx;

    Math_Vec3f_Copy(&this->pos, &initParams->pos);
    Math_Vec3f_Copy(&this->velocity, &initParams->velocity);
    Math_Vec3f_Copy(&this->accel, &initParams->accel);
    this->displayList = SEGMENTED_TO_VIRTUAL(&D_04025550);

    if (initParams->updateMode == 0) {
        this->life = 10;
        this->unk_2C.x = initParams->pos.x - initParams->actor->posRot.pos.x;
        this->unk_2C.y = initParams->pos.y - initParams->actor->posRot.pos.y;
        this->unk_2C.z = initParams->pos.z - initParams->actor->posRot.pos.z;
        this->update = EffectSsGSpk_Update;
    } else {
        this->life = 5;
        this->update = EffectSsGSpk_UpdateNoAccel;
    }

    this->draw = EffectSsGSpk_Draw;
    this->regs[SS_G_SPK_PRIM_R] = initParams->primColor.r;
    this->regs[SS_G_SPK_PRIM_G] = initParams->primColor.g;
    this->regs[SS_G_SPK_PRIM_B] = initParams->primColor.b;
    this->regs[SS_G_SPK_PRIM_A] = initParams->primColor.a;
    this->regs[SS_G_SPK_ENV_R] = initParams->envColor.r;
    this->regs[SS_G_SPK_ENV_G] = initParams->envColor.g;
    this->regs[SS_G_SPK_ENV_B] = initParams->envColor.b;
    this->regs[SS_G_SPK_ENV_A] = initParams->envColor.a;
    this->regs[SS_G_SPK_TEX_IDX] = 0;
    this->regs[SS_G_SPK_SCALE] = initParams->scale;
    this->regs[SS_G_SPK_SCALE_STEP] = initParams->scaleStep;
    this->unk_3C = initParams->actor;

    return 1;
}

void EffectSsGSpk_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    s32 pad;
    MtxF sp11C;
    MtxF spDC;
    MtxF sp9C;
    MtxF sp5C;
    Mtx* mtx;
    f32 scale;
    s32 pad1;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(&dispRefs, gfxCtx, "../z_eff_ss_g_spk.c", 208);

    scale = this->regs[SS_G_SPK_SCALE] * 0.0025f;

    SkinMatrix_SetTranslate(&sp11C, this->pos.x, this->pos.y, this->pos.z);
    SkinMatrix_SetScale(&spDC, scale, scale, 1.0f);
    SkinMatrix_MtxFMtxFMult(&sp11C, &globalCtx->mf_11DA0, &sp5C);
    SkinMatrix_MtxFMtxFMult(&sp5C, &spDC, &sp9C);

    mtx = SkinMatrix_MtxFToNewMtx(gfxCtx, &sp9C);

    if (mtx != NULL) {
        gSPMatrix(gfxCtx->polyXlu.p++, mtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPSegment(gfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_809A7498[this->regs[SS_G_SPK_TEX_IDX]]));

        func_80094BC4(gfxCtx);
        gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, this->regs[SS_G_SPK_PRIM_R], this->regs[SS_G_SPK_PRIM_G],
                        this->regs[SS_G_SPK_PRIM_B], 255);

        gDPSetEnvColor(gfxCtx->polyXlu.p++, this->regs[SS_G_SPK_ENV_R], this->regs[SS_G_SPK_ENV_G],
                       this->regs[SS_G_SPK_ENV_B], this->regs[SS_G_SPK_ENV_A]);
        gSPDisplayList(gfxCtx->polyXlu.p++, this->displayList);
    }
    if (1) {}
    if (1) {}
    Graph_CloseDisps(&dispRefs, gfxCtx, "../z_eff_ss_g_spk.c", 255);
}

void EffectSsGSpk_Update(GlobalContext* globalCtx, u32 index, EffectSs* this) {

    this->accel.x = (Math_Rand_ZeroOne() - 0.5f) * 3.0f;
    this->accel.z = (Math_Rand_ZeroOne() - 0.5f) * 3.0f;

    if (SPARK_SOURCE != NULL) {
        if ((SPARK_SOURCE->type == ACTORTYPE_EXPLOSIVES) && (SPARK_SOURCE->update != NULL)) {
            this->pos.x = SPARK_SOURCE->posRot.pos.x + this->unk_2C.x;
            this->pos.y = SPARK_SOURCE->posRot.pos.y + this->unk_2C.y;
            this->pos.z = SPARK_SOURCE->posRot.pos.z + this->unk_2C.z;
        }
    }

    this->unk_2C.x += this->accel.x;
    this->unk_2C.z += this->accel.z;

    this->regs[SS_G_SPK_TEX_IDX]++;
    this->regs[SS_G_SPK_TEX_IDX] &= 3;
    this->regs[SS_G_SPK_SCALE] += this->regs[SS_G_SPK_SCALE_STEP];
}

// this update mode is unused in the original game
// with this update mode, the sparks dont move randomly in the xz plane, appearing to be on top of each other
void EffectSsGSpk_UpdateNoAccel(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    if (SPARK_SOURCE != NULL) {
        if ((SPARK_SOURCE->type == ACTORTYPE_EXPLOSIVES) && (SPARK_SOURCE->update != NULL)) {
            this->pos.x += (Math_Sins(SPARK_SOURCE->posRot.rot.y) * SPARK_SOURCE->speedXZ);
            this->pos.z += (Math_Coss(SPARK_SOURCE->posRot.rot.y) * SPARK_SOURCE->speedXZ);
        }
    }

    this->regs[SS_G_SPK_TEX_IDX]++;
    this->regs[SS_G_SPK_TEX_IDX] &= 3;
    this->regs[SS_G_SPK_SCALE] += this->regs[SS_G_SPK_SCALE_STEP];
}
