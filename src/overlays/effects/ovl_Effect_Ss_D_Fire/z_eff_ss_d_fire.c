/*
 * File: z_eff_ss_d_fire.c
 * Overlay: ovl_Effect_Ss_D_Fire
 * Description: Dodongo Fire
 */

#include "z_eff_ss_d_fire.h"

typedef enum {
    /* 0x00 */ SS_D_FIRE_SCALE,
    /* 0x01 */ SS_D_FIRE_TEX_IDX,
    /* 0x02 */ SS_D_FIRE_PRIM_R,
    /* 0x03 */ SS_D_FIRE_PRIM_G,
    /* 0x04 */ SS_D_FIRE_PRIM_B,
    /* 0x05 */ SS_D_FIRE_PRIM_A,
    /* 0x06 */ SS_D_FIRE_FADE_DELAY, // determines when alpha will start decaying relative to current life
    /* 0x09 */ SS_D_FIRE_SCALE_STEP = 9,
    /* 0x0A */ SS_D_FIRE_OBJ_BANK_IDX,
    /* 0x0B */ SS_D_FIRE_Y_ACCEL_STEP // has no effect due to how its implemented
} EffectSsD_FireRegs;

u32 EffectSsDFire_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsDFire_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsDFire_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_D_Fire_InitVars = {
    EFFECT_SS_D_FIRE,
    EffectSsDFire_Init,
};

UNK_PTR D_809A09F8[] = { 0x060090A0, 0x060092A0, 0x060094A0, 0x060096A0 };

extern Gfx D_060098A0[];

u32 EffectSsDFire_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsDFireInitParams* initParams = (EffectSsDFireInitParams*)initParamsx;
    s32 objBankIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_DODONGO);

    if (objBankIndex >= 0) {
        this->pos = initParams->pos;
        this->velocity = initParams->velocity;
        this->accel = initParams->accel;
        this->displayList = SEGMENTED_TO_VIRTUAL(D_060098A0);
        this->life = initParams->life;
        this->regs[SS_D_FIRE_SCALE] = initParams->scale;
        this->regs[SS_D_FIRE_SCALE_STEP] = initParams->scaleStep;
        this->regs[SS_D_FIRE_Y_ACCEL_STEP] = 0;
        this->regs[SS_D_FIRE_OBJ_BANK_IDX] = objBankIndex;
        this->draw = EffectSsDFire_Draw;
        this->update = EffectSsDFire_Update;
        this->regs[SS_D_FIRE_TEX_IDX] = ((s16)(globalCtx->state.frames % 4) ^ 3);
        this->regs[SS_D_FIRE_PRIM_R] = 255;
        this->regs[SS_D_FIRE_PRIM_G] = 255;
        this->regs[SS_D_FIRE_PRIM_B] = 50;
        this->regs[SS_D_FIRE_PRIM_A] = initParams->alpha;
        this->regs[SS_D_FIRE_FADE_DELAY] = initParams->fadeDelay;

        return 1;
    }

    return 0;
}

void EffectSsDFire_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    GraphicsContext* localGfxCtx;
    MtxF sp124;
    MtxF spE4;
    MtxF spA4;
    MtxF sp64;
    s32 pad;
    void* object;
    Mtx* mtx;
    f32 scale;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    localGfxCtx = globalCtx->state.gfxCtx;
    object = globalCtx->objectCtx.status[this->regs[SS_D_FIRE_OBJ_BANK_IDX]].segment;

    gfxCtx = localGfxCtx;
    Graph_OpenDisps(&dispRefs, localGfxCtx, "../z_eff_ss_d_fire.c", 276);

    if (Object_GetIndex(&globalCtx->objectCtx, OBJECT_DODONGO) >= 0) {
        gSegments[6] = PHYSICAL_TO_VIRTUAL(object);
        gSPSegment(gfxCtx->polyXlu.p++, 0x06, object);
        scale = this->regs[SS_D_FIRE_SCALE] / 100.0f;
        func_800A7A24(&sp124, this->pos.x, this->pos.y, this->pos.z);
        func_800A76A4(&spE4, scale, scale, 1.0f);
        func_800A6FA0(&sp124, &globalCtx->mf_11DA0, &sp64);
        func_800A6FA0(&sp64, &spE4, &spA4);

        mtx = func_800A7E70(gfxCtx, &spA4);

        if (mtx != NULL) {
            gSPMatrix(gfxCtx->polyXlu.p++, mtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            func_80094BC4(gfxCtx);
            gDPSetEnvColor(gfxCtx->polyXlu.p++, 255, 0, 0, 0);
            gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, this->regs[SS_D_FIRE_PRIM_R], this->regs[SS_D_FIRE_PRIM_G],
                            this->regs[SS_D_FIRE_PRIM_B], this->regs[SS_D_FIRE_PRIM_A]);
            gSegments[6] = PHYSICAL_TO_VIRTUAL(object);
            gSPSegment(gfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_809A09F8[this->regs[SS_D_FIRE_TEX_IDX]]));
            gSPDisplayList(gfxCtx->polyXlu.p++, this->displayList);
        }
    }

    Graph_CloseDisps(&dispRefs, localGfxCtx, (const char*)"../z_eff_ss_d_fire.c", 0x14A);
}

void EffectSsDFire_Update(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    this->regs[SS_D_FIRE_TEX_IDX] = ++this->regs[SS_D_FIRE_TEX_IDX] & 3;
    this->regs[SS_D_FIRE_SCALE] += this->regs[SS_D_FIRE_SCALE_STEP];

    if (this->regs[SS_D_FIRE_FADE_DELAY] >= this->life) {
        this->regs[SS_D_FIRE_PRIM_A] -= 5;
        if (this->regs[SS_D_FIRE_PRIM_A] < 0) {
            this->regs[SS_D_FIRE_PRIM_A] = 0;
        }
    } else {
        this->regs[SS_D_FIRE_PRIM_A] += 15;
        if (this->regs[SS_D_FIRE_PRIM_A] > 255) {
            this->regs[SS_D_FIRE_PRIM_A] = 255;
        }
    }

    if (this->accel.y < 0.0f) {
        this->accel.y += this->regs[SS_D_FIRE_Y_ACCEL_STEP] * 0.01f;
    }

    if (this->life <= 0) {
        this->regs[SS_D_FIRE_Y_ACCEL_STEP] += 0;
    }
}
