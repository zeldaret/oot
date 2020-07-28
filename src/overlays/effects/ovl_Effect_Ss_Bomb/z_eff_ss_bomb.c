/*
 * File: z_eff_ss_bomb.c
 * Overlay: ovl_Effect_Ss_Bomb
 * Description: Bomb Blast. Unused in the orignal game.
 */

#include "z_eff_ss_bomb.h"

typedef enum {
    /* 0x00 */ SS_BOMB_SCALE,
    /* 0x01 */ SS_BOMB_TEX_IDX,
} EffectSsBombRegs;

u32 EffectSsBomb_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsBomb_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsBomb_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_Bomb_InitVars = {
    EFFECT_SS_BOMB,
    EffectSsBomb_Init,
};

static UNK_PTR D_8099F588[] = {
    0x04007F80,
    0x04008780,
    0x04008F80,
    0x04009780,
};

extern Gfx D_0400BF80[];

u32 EffectSsBomb_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsBombInitParams* initParams = (EffectSsBombInitParams*)initParamsx;

    Math_Vec3f_Copy(&this->pos, &initParams->pos);
    Math_Vec3f_Copy(&this->velocity, &initParams->velocity);
    Math_Vec3f_Copy(&this->accel, &initParams->accel);
    this->displayList = SEGMENTED_TO_VIRTUAL(D_0400BF80);
    this->life = 20;
    this->draw = EffectSsBomb_Draw;
    this->update = EffectSsBomb_Update;
    this->regs[SS_BOMB_SCALE] = 100;
    this->regs[SS_BOMB_TEX_IDX] = 0;

    return 1;
}

void EffectSsBomb_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    s32 pad;
    MtxF sp12C;
    MtxF spEC;
    MtxF spAC;
    MtxF sp6C;
    Mtx* mtx;
    s32 pad2;
    f32 scale;
    s16 color;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    if (1) {}

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(&dispRefs, gfxCtx, "../z_eff_ss_bomb.c", 168);

    scale = this->regs[SS_BOMB_SCALE] / 100.0f;

    func_800A7A24(&sp12C, this->pos.x, this->pos.y, this->pos.z);
    func_800A76A4(&spEC, scale, scale, 1.0f);
    func_800A6FA0(&sp12C, &globalCtx->mf_11DA0, &sp6C);
    func_800A6FA0(&sp6C, &spEC, &spAC);

    gSPMatrix(gfxCtx->polyXlu.p++, &gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    mtx = func_800A7E70(gfxCtx, &spAC);

    if (mtx != NULL) {
        gSPMatrix(gfxCtx->polyXlu.p++, mtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPSegment(gfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_8099F588[this->regs[SS_BOMB_TEX_IDX]]));
        gDPPipeSync(gfxCtx->polyXlu.p++);
        func_80094C50(gfxCtx);
        color = this->life * 12.75f;
        gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, color, color, color, color);
        gDPPipeSync(gfxCtx->polyXlu.p++);
        gSPDisplayList(gfxCtx->polyXlu.p++, this->displayList);
        gDPPipeSync(gfxCtx->polyXlu.p++);
    }

    Graph_CloseDisps(&dispRefs, gfxCtx, "../z_eff_ss_bomb.c", 214);
}

void EffectSsBomb_Update(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    if ((this->life < 21) && (this->life >= 17)) {
        this->regs[SS_BOMB_TEX_IDX] = (20 - this->life);
    } else {
        this->regs[SS_BOMB_SCALE] += 0;
        this->regs[SS_BOMB_TEX_IDX] = 3;
    }

    this->accel.x = ((Math_Rand_ZeroOne() * 0.4f) - 0.2f);
    this->accel.z = ((Math_Rand_ZeroOne() * 0.4f) - 0.2f);
}
