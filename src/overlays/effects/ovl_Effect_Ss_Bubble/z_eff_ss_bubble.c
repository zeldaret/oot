/*
 * File: z_eff_ss_bubble.c
 * Overlay: ovl_Effect_Ss_Bubble
 * Description:
 */

#include "z_eff_ss_bubble.h"

#define rScale regs[0]

u32 EffectSsBubble_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsBubble_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsBubble_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_Bubble_InitVars = {
    EFFECT_SS_BUBBLE,
    EffectSsBubble_Init,
};

extern void* D_04055DB0;
extern void* D_04055EB0;
extern Gfx D_0401A160[];

u32 EffectSsBubble_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsBubbleInitParams* initParams = (EffectSsBubbleInitParams*)initParamsx;

    // @bug Math_Rand_ZeroOne in the macro means a random number is generated for both parts of the macro.
    // In the base game this works out because both addresses are segment 4, but it may break if
    // the addresses were changed to refer to different segments
    this->gfx = SEGMENTED_TO_VIRTUAL(Math_Rand_ZeroOne() < 0.5f ? &D_04055DB0 : &D_04055EB0);
    this->pos.x = ((Math_Rand_ZeroOne() - 0.5f) * initParams->xzPosRandScale) + initParams->pos.x;
    this->pos.y =
        (((Math_Rand_ZeroOne() - 0.5f) * initParams->yPosRandScale) + initParams->yPosOffset) + initParams->pos.y;
    this->pos.z = ((Math_Rand_ZeroOne() - 0.5f) * initParams->xzPosRandScale) + initParams->pos.z;
    Math_Vec3f_Copy(&this->vec, &this->pos);
    this->life = 1;
    this->rScale = (((Math_Rand_ZeroOne() * 0.5f) + 1.0f) * initParams->scale) * 100;
    this->draw = EffectSsBubble_Draw;
    this->update = EffectSsBubble_Update;

    return 1;
}

void EffectSsBubble_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    f32 scale = this->rScale / 100.0f;

    OPEN_DISPS(gfxCtx, "../z_eff_ss_bubble.c", 154);

    Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
    Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(gfxCtx, "../z_eff_ss_bubble.c", 167),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    func_80093D18(gfxCtx);
    gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0, 0, 255, 255, 255, 255);
    gDPSetEnvColor(oGfxCtx->polyOpa.p++, 150, 150, 150, 0);
    gSPSegment(oGfxCtx->polyOpa.p++, 0x08, this->gfx);
    gSPDisplayList(oGfxCtx->polyOpa.p++, SEGMENTED_TO_VIRTUAL(D_0401A160));

    CLOSE_DISPS(gfxCtx, "../z_eff_ss_bubble.c", 179);
}

void EffectSsBubble_Update(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    WaterBox* waterBox;
    f32 waterSurfaceY;
    Vec3f ripplePos;

    waterSurfaceY = this->pos.y;

    // kill bubble if its out of range of a water box
    if (!func_8004213C(globalCtx, &globalCtx->colCtx, this->pos.x, this->pos.z, &waterSurfaceY, &waterBox)) {
        this->life = -1;
        return;
    }

    if (waterSurfaceY < this->pos.y) {
        ripplePos.x = this->pos.x;
        ripplePos.y = waterSurfaceY;
        ripplePos.z = this->pos.z;
        EffectSsGRipple_Spawn(globalCtx, &ripplePos, 0, 80, 0);
        this->life = -1;
    } else {
        this->life++;
        this->pos.x = ((Math_Rand_ZeroOne() * 0.5f) - 0.25f) + this->vec.x;
        this->accel.y = (Math_Rand_ZeroOne() - 0.3f) * 0.2f;
        this->pos.z = ((Math_Rand_ZeroOne() * 0.5f) - 0.25f) + this->vec.z;
    }
}
