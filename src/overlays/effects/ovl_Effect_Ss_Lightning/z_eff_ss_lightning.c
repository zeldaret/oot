/*
 * File: z_eff_ss_lightning.c
 * Overlay: ovl_Effect_Ss_Lightning
 * Description: Lightning
 */

#include "z_eff_ss_lightning.h"

typedef enum {
    /* 0x00 */ SS_LIGHTNING_PRIM_R,
    /* 0x01 */ SS_LIGHTNING_PRIM_G,
    /* 0x02 */ SS_LIGHTNING_PRIM_B,
    /* 0x03 */ SS_LIGHTNING_PRIM_A,
    /* 0x04 */ SS_LIGHTNING_ENV_R,
    /* 0x05 */ SS_LIGHTNING_ENV_G,
    /* 0x06 */ SS_LIGHTNING_ENV_B,
    /* 0x07 */ SS_LIGHTNING_ENV_A,
    /* 0x08 */ SS_LIGHTNING_8,
    /* 0x09 */ SS_LIGHTNING_SCALE,
    /* 0x0A */ SS_LIGHTNING_A,
    /* 0x0B */ SS_LIGHTNING_LIFE
} EffectSsLightningRegs;

u32 EffectSsLightning_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void func_809AB078(GlobalContext* globalCtx, u32 index, EffectSs* this);
void func_809AB338(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_Lightning_InitVars = {
    EFFECT_SS_LIGHTNING,
    EffectSsLightning_Init,
};

UNK_PTR D_809AB538[] = {
    0x04029F30, 0x0402A530, 0x0402AB30, 0x0402B130, 0x0402B730, 0x0402BD30, 0x0402C330, 0x0402C930,
};

extern Gfx D_0402CF30[];

u32 EffectSsLightning_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsLightningInitParams* initParams = (EffectSsLightningInitParams*)initParamsx;

    this->pos = initParams->pos;
    this->displayList = SEGMENTED_TO_VIRTUAL(D_0402CF30);
    this->life = initParams->life;
    this->draw = func_809AB078;
    this->update = func_809AB338;
    this->regs[SS_LIGHTNING_PRIM_R] = initParams->primColor.r;
    this->regs[SS_LIGHTNING_PRIM_G] = initParams->primColor.g;
    this->regs[SS_LIGHTNING_PRIM_B] = initParams->primColor.b;
    this->regs[SS_LIGHTNING_PRIM_A] = initParams->primColor.a;
    this->regs[SS_LIGHTNING_ENV_R] = initParams->envColor.r;
    this->regs[SS_LIGHTNING_ENV_G] = initParams->envColor.g;
    this->regs[SS_LIGHTNING_ENV_B] = initParams->envColor.b;
    this->regs[SS_LIGHTNING_ENV_A] = initParams->envColor.a;
    this->regs[SS_LIGHTNING_8] = initParams->unk_1A;
    this->regs[SS_LIGHTNING_SCALE] = initParams->scale;
    this->regs[SS_LIGHTNING_A] = initParams->unk_16;
    this->regs[SS_LIGHTNING_LIFE] = initParams->life;

    return 1;
}

void func_809AAFD4(GlobalContext* globalCtx, Vec3f* pos, s16 newReg10, EffectSs* this) {
    EffectSs newLightning;

    EffectSs_Delete(&newLightning);
    newLightning = *this;
    newLightning.pos = *pos;
    newLightning.regs[SS_LIGHTNING_8]--;
    newLightning.regs[SS_LIGHTNING_A] = newReg10;
    newLightning.life = newLightning.regs[SS_LIGHTNING_LIFE];
    EffectSs_Insert(globalCtx, &newLightning);
}

void func_809AB078(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    GraphicsContext* localGfxCtx;
    MtxF sp1A4;
    MtxF sp164;
    MtxF sp124;
    MtxF spE4;
    MtxF spA4;
    MtxF sp64;
    Mtx* mtx;
    f32 yScale;
    s16 texIdx;
    f32 xzScale;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    localGfxCtx = globalCtx->state.gfxCtx;
    
    gfxCtx = localGfxCtx;
    Graph_OpenDisps(dispRefs, localGfxCtx, "../z_eff_ss_lightning.c", 233);

    yScale = this->regs[SS_LIGHTNING_SCALE] * 0.01f;
    texIdx = this->regs[SS_LIGHTNING_LIFE] - this->life;

    if (texIdx >= 8) {
        texIdx = 7;
    }

    func_800A7A24(&sp164, this->pos.x, this->pos.y, this->pos.z);
    xzScale = yScale * 0.6f;
    func_800A76A4(&sp124, xzScale, yScale, xzScale);
    func_800A7704(&spE4, this->unk_2C.x, this->unk_2C.y, this->regs[SS_LIGHTNING_A]);
    func_800A6FA0(&sp164, &globalCtx->mf_11DA0, &spA4);
    func_800A6FA0(&spA4, &spE4, &sp64);
    func_800A6FA0(&sp64, &sp124, &sp1A4);

    gSPMatrix(gfxCtx->polyXlu.p++, &gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    mtx = func_800A7E70(gfxCtx, &sp1A4);

    if (mtx != NULL) {
        gSPMatrix(gfxCtx->polyXlu.p++, mtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        func_80094C50(gfxCtx);
        gSPSegment(gfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_809AB538[texIdx]));
        gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, this->regs[SS_LIGHTNING_PRIM_R], this->regs[SS_LIGHTNING_PRIM_G],
                        this->regs[SS_LIGHTNING_PRIM_B], this->regs[SS_LIGHTNING_PRIM_A]);
        gDPSetEnvColor(gfxCtx->polyXlu.p++, this->regs[SS_LIGHTNING_ENV_R], this->regs[SS_LIGHTNING_ENV_G],
                       this->regs[SS_LIGHTNING_ENV_B], this->regs[SS_LIGHTNING_ENV_A]);
        gSPDisplayList(gfxCtx->polyXlu.p++, this->displayList);
    }

    Graph_CloseDisps(dispRefs, localGfxCtx, "../z_eff_ss_lightning.c", 281);
}

#ifdef NON_MATCHING
// regalloc and add swap issues. specific comments of the issues are in the function
void func_809AB338(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    s32 temp2;
    Vec3f newEffPos;
    s16 sp3E;
    f32 scale;
    s32 phi_v1;
    s16 temp;

    if ((this->regs[SS_LIGHTNING_8] != 0) && ((this->life + 1) == this->regs[SS_LIGHTNING_LIFE])) {

        phi_v1 = (Math_Rand_ZeroOne() < 0.5f) ? -1 : 1;

        sp3E = (Math_Rand_ZeroOne() * 3640.0f);
        // this add is flipped
        sp3E = this->regs[SS_LIGHTNING_A] + ((sp3E + 3640) * phi_v1);

        scale = (this->regs[SS_LIGHTNING_SCALE] * 0.01f) * 80.0f;
        newEffPos.y = (Math_Sins(this->regs[SS_LIGHTNING_A] - 0x4000) * scale) + this->pos.y;

        scale = Math_Coss(this->regs[SS_LIGHTNING_A] - 0x4000) * scale;
        newEffPos.x = this->pos.x - Math_Coss(func_8005A948(ACTIVE_CAM)) * scale;
        newEffPos.z = (Math_Sins(func_8005A948(ACTIVE_CAM)) * scale) + this->pos.z;

        func_809AAFD4(globalCtx, &newEffPos, sp3E, this);

        if (Math_Rand_ZeroOne() < 0.1f) {
            // regalloc issues here. i dont think two temps is the answer but it seems to help
            temp2 = this->regs[SS_LIGHTNING_A] * 2;
            temp = (temp2 - sp3E);
            func_809AAFD4(globalCtx, &newEffPos, temp, this);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/effects/ovl_Effect_Ss_Lightning/func_809AB338.s")
#endif
