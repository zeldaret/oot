/*
 * File: z_eff_ss_dust.c
 * Overlay: ovl_Effect_Ss_Dust
 * Description: Dust Particle Effect
 */

#include "z_eff_ss_dust.h"

typedef enum {
    /* 0x00 */ SS_DUST_PRIM_R,
    /* 0x01 */ SS_DUST_PRIM_G,
    /* 0x02 */ SS_DUST_PRIM_B,
    /* 0x03 */ SS_DUST_PRIM_A,
    /* 0x04 */ SS_DUST_ENV_R,
    /* 0x05 */ SS_DUST_ENV_G,
    /* 0x06 */ SS_DUST_ENV_B,
    /* 0x07 */ SS_DUST_ENV_A,
    /* 0x08 */ SS_DUST_TEX_IDX, // this reg is also used to set specific colors in the fire update function
    /* 0x09 */ SS_DUST_SCALE,
    /* 0x0A */ SS_DUST_SCALE_STEP,
    /* 0x0B */ SS_DUST_DRAW_FLAGS,
    /* 0x0C */ SS_DUST_LIFE_START
} EffectSsDustRegs;

u32 EffectSsDust_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsDust_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsBlast_UpdateFire(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsDust_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_Dust_InitVars = {
    EFFECT_SS_DUST,
    EffectSsDust_Init,
};

static void* sUpdateFuncs[] = { EffectSsDust_Update, EffectSsBlast_UpdateFire };

static UNK_PTR D_809A2A50[] = { 0x04051DB0, 0x040521B0, 0x040525B0, 0x040529B0,
                                0x04052DB0, 0x040531B0, 0x040535B0, 0x040539B0 };

extern Gfx D_04010050[];

u32 EffectSsDust_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    s32 randColorOffset;
    EffectSsDustInitParams* initParams = (EffectSsDustInitParams*)initParamsx;

    Math_Vec3f_Copy(&this->pos, &initParams->pos);
    Math_Vec3f_Copy(&this->velocity, &initParams->velocity);
    Math_Vec3f_Copy(&this->accel, &initParams->accel);
    this->displayList = SEGMENTED_TO_VIRTUAL(&D_04010050);
    this->life = initParams->life;
    this->update = sUpdateFuncs[initParams->updateMode];
    this->draw = EffectSsDust_Draw;

    if (initParams->drawFlags & 4) {
        randColorOffset = Math_Rand_ZeroOne() * 20.0f - 10.0f;
        this->regs[SS_DUST_PRIM_R] = initParams->primColor.r + randColorOffset;
        this->regs[SS_DUST_PRIM_G] = initParams->primColor.g + randColorOffset;
        this->regs[SS_DUST_PRIM_B] = initParams->primColor.b + randColorOffset;
        this->regs[SS_DUST_ENV_R] = initParams->envColor.r + randColorOffset;
        this->regs[SS_DUST_ENV_G] = initParams->envColor.g + randColorOffset;
        this->regs[SS_DUST_ENV_B] = initParams->envColor.b + randColorOffset;
    } else {
        this->regs[SS_DUST_PRIM_R] = initParams->primColor.r;
        this->regs[SS_DUST_PRIM_G] = initParams->primColor.g;
        this->regs[SS_DUST_PRIM_B] = initParams->primColor.b;
        this->regs[SS_DUST_ENV_R] = initParams->envColor.r;
        this->regs[SS_DUST_ENV_G] = initParams->envColor.g;
        this->regs[SS_DUST_ENV_B] = initParams->envColor.b;
    }

    this->regs[SS_DUST_PRIM_A] = initParams->primColor.a;
    this->regs[SS_DUST_ENV_A] = initParams->envColor.a;
    this->regs[SS_DUST_TEX_IDX] = 0;
    this->regs[SS_DUST_SCALE] = initParams->scale;
    this->regs[SS_DUST_SCALE_STEP] = initParams->scaleStep;
    this->regs[SS_DUST_LIFE_START] = initParams->life;
    this->regs[SS_DUST_DRAW_FLAGS] = initParams->drawFlags;

    return 1;
}

void EffectSsDust_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    s32 pad;
    MtxF sp144;
    MtxF sp104;
    MtxF spC4;
    MtxF sp84;
    s32 pad1;
    Mtx* mtx;
    f32 scale;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, gfxCtx, "../z_eff_ss_dust.c", 321);

    scale = this->regs[SS_DUST_SCALE] * 0.0025f;

    SkinMatrix_SetTranslate(&sp144, this->pos.x, this->pos.y, this->pos.z);
    SkinMatrix_SetScale(&sp104, scale, scale, 1.0f);
    SkinMatrix_MtxFMtxFMult(&sp144, &globalCtx->mf_11DA0, &sp84);
    SkinMatrix_MtxFMtxFMult(&sp84, &sp104, &spC4);

    gSPMatrix(gfxCtx->polyXlu.p++, &gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    mtx = SkinMatrix_MtxFToNewMtx(gfxCtx, &spC4);

    if (mtx != NULL) {
        gSPMatrix(gfxCtx->polyXlu.p++, mtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gDPPipeSync(gfxCtx->polyXlu.p++);
        gSPSegment(gfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_809A2A50[this->regs[SS_DUST_TEX_IDX]]));
        gfxCtx->polyXlu.p = Gfx_CallSetupDL(gfxCtx->polyXlu.p, 0);
        gDPPipeSync(gfxCtx->polyXlu.p++);

        if (this->regs[SS_DUST_DRAW_FLAGS] & 1) {
            gDPSetCombineLERP(gfxCtx->polyXlu.p++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0,
                              COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED);
            gDPSetRenderMode(gfxCtx->polyXlu.p++, G_RM_FOG_SHADE_A, G_RM_ZB_CLD_SURF2);
            gSPSetGeometryMode(gfxCtx->polyXlu.p++, G_FOG | G_LIGHTING);
        } else if (this->regs[SS_DUST_DRAW_FLAGS] & 2) {
            gDPSetRenderMode(gfxCtx->polyXlu.p++, G_RM_PASS, G_RM_ZB_CLD_SURF2);
            gSPClearGeometryMode(gfxCtx->polyXlu.p++, G_FOG | G_LIGHTING);
        } else {
            gSPClearGeometryMode(gfxCtx->polyXlu.p++, G_LIGHTING);
        }

        gDPPipeSync(gfxCtx->polyXlu.p++);
        gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, this->regs[SS_DUST_PRIM_R], this->regs[SS_DUST_PRIM_G],
                        this->regs[SS_DUST_PRIM_B], 255);
        gDPSetEnvColor(gfxCtx->polyXlu.p++, this->regs[SS_DUST_ENV_R], this->regs[SS_DUST_ENV_G],
                       this->regs[SS_DUST_ENV_B], this->regs[SS_DUST_ENV_A]);
        gSPDisplayList(gfxCtx->polyXlu.p++, this->displayList);
    }

    Graph_CloseDisps(dispRefs, gfxCtx, "../z_eff_ss_dust.c", 389);
}

void EffectSsDust_Update(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    this->accel.x = (Math_Rand_ZeroOne() * 0.4f) - 0.2f;
    this->accel.z = (Math_Rand_ZeroOne() * 0.4f) - 0.2f;

    if ((this->regs[SS_DUST_LIFE_START] >= this->life) && (this->life >= (this->regs[SS_DUST_LIFE_START] - 7))) {
        if (this->regs[SS_DUST_LIFE_START] >= 5) {
            this->regs[SS_DUST_TEX_IDX] = this->regs[SS_DUST_LIFE_START] - this->life;
        } else {
            this->regs[SS_DUST_TEX_IDX] =
                ((this->regs[SS_DUST_LIFE_START] - this->life) * (8 / this->regs[SS_DUST_LIFE_START]));
        }
    } else {
        this->regs[SS_DUST_TEX_IDX] = 7;
    }
    this->regs[SS_DUST_SCALE] += this->regs[SS_DUST_SCALE_STEP];
}

// this update mode is unused in the original game
void EffectSsBlast_UpdateFire(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    this->accel.x = (Math_Rand_ZeroOne() * 0.4f) - 0.2f;
    this->accel.z = (Math_Rand_ZeroOne() * 0.4f) - 0.2f;

    switch (this->regs[SS_DUST_TEX_IDX]) {
        case 0:
            this->regs[SS_DUST_PRIM_R] = 255;
            this->regs[SS_DUST_PRIM_G] = 150;
            this->regs[SS_DUST_PRIM_B] = 0;
            this->regs[SS_DUST_ENV_R] = 150;
            this->regs[SS_DUST_ENV_G] = 50;
            this->regs[SS_DUST_ENV_B] = 0;
            break;
        case 1:
            this->regs[SS_DUST_PRIM_R] = 200;
            this->regs[SS_DUST_PRIM_G] = 50;
            this->regs[SS_DUST_PRIM_B] = 0;
            this->regs[SS_DUST_ENV_R] = 100;
            this->regs[SS_DUST_ENV_G] = 0;
            this->regs[SS_DUST_ENV_B] = 0;
            break;
        case 2:
            this->regs[SS_DUST_PRIM_R] = 50;
            this->regs[SS_DUST_PRIM_G] = 0;
            this->regs[SS_DUST_PRIM_B] = 0;
            this->regs[SS_DUST_ENV_R] = 0;
            this->regs[SS_DUST_ENV_G] = 0;
            this->regs[SS_DUST_ENV_B] = 0;
            break;
        case 3:
            this->regs[SS_DUST_PRIM_R] = 50;
            this->regs[SS_DUST_ENV_R] = this->regs[SS_DUST_PRIM_G] = this->regs[SS_DUST_ENV_G] =
                this->regs[SS_DUST_PRIM_B] = this->regs[SS_DUST_ENV_B] = 0;
            break;
    }

    if (this->regs[SS_DUST_TEX_IDX] < 7) {
        this->regs[SS_DUST_TEX_IDX]++;
    }

    this->regs[SS_DUST_SCALE] += this->regs[SS_DUST_SCALE_STEP];
}
