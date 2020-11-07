/*
 * File: z_eff_ss_sibuki2.c
 * Overlay: ovl_Effect_Ss_Sibuki2
 * Description: Unfinished and unused bubble effect
 */

#include "z_eff_ss_sibuki2.h"

#define rPrimColorR regs[0]
#define rPrimColorG regs[1]
#define rPrimColorB regs[2]
#define rPrimColorA regs[3]
#define rEnvColorR regs[4]
#define rEnvColorG regs[5]
#define rEnvColorB regs[6]
#define rEnvColorA regs[7]
#define rTexIdx regs[8]
#define rScale regs[9]

u32 EffectSsSibuki2_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsSibuki2_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsSibuki2_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_Sibuki2_InitVars = {
    EFFECT_SS_SIBUKI2,
    EffectSsSibuki2_Init,
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
    this->rScale = initParams->scale;
    this->rPrimColorR = 255;
    this->rPrimColorG = 255;
    this->rPrimColorB = 255;
    this->rPrimColorA = 255;
    this->rEnvColorR = 100;
    this->rEnvColorG = 100;
    this->rEnvColorB = 100;
    this->rEnvColorA = 255;
    this->rTexIdx = 0;

    return 1;
}

static void* sTextures[] = {
    0x0401C2C0, 0x0401C2C0, 0x0401C6C0, 0x0401CAC0, 0x0401CEC0, 0x0401D2C0, 0x0401D6C0, 0x0401DAC0, 0x0401DEC0,
};

void EffectSsSibuki2_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    f32 scale = this->rScale / 100.0f;

    OPEN_DISPS(gfxCtx, "../z_eff_ss_sibuki2.c", 158);

    Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
    Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_eff_ss_sibuki2.c", 171),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    func_80093D18(gfxCtx);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, this->rPrimColorR, this->rPrimColorG, this->rPrimColorB,
                    this->rPrimColorA);
    gDPSetEnvColor(POLY_XLU_DISP++, this->rEnvColorR, this->rEnvColorG, this->rEnvColorB, this->rEnvColorA);
    gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sTextures[this->rTexIdx]));
    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0401E2C0));

    CLOSE_DISPS(gfxCtx, "../z_eff_ss_sibuki2.c", 198);
}

void EffectSsSibuki2_Update(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    if (this->rTexIdx < 8) {
        this->rTexIdx++;
    }
}
