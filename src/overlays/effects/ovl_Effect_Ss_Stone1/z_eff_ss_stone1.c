/*
 * File: z_eff_ss_stone1.c
 * Overlay: ovl_Effect_Ss_Stone1
 * Description: Impact effect for deku nuts and seeds
 */

#include "z_eff_ss_stone1.h"

#include "color.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "regs.h"
#include "segmented_address.h"
#include "sys_matrix.h"
#include "effect.h"
#include "play_state.h"
#include "skin_matrix.h"

#include "assets/objects/gameplay_keep/unknown_eff_stone.h"

#define rFreezeFadeFlash regs[0]

u32 EffectSsStone1_Init(PlayState* play, u32 index, EffectSs* this, void* initParamsx);
void EffectSsStone1_Draw(PlayState* play, u32 index, EffectSs* this);
void EffectSsStone1_Update(PlayState* play, u32 index, EffectSs* this);

EffectSsProfile Effect_Ss_Stone1_Profile = {
    EFFECT_SS_STONE1,
    EffectSsStone1_Init,
};

typedef struct EffStoneDrawInfo {
    /* 0x00 */ void* texture;
    /* 0x04 */ Color_RGBA8 primColor;
    /* 0x08 */ Color_RGBA8 envColor;
} EffStoneDrawInfo;

// Indexed by the decreasing life (from 7 to 0), so in reverse order
static EffStoneDrawInfo sDrawInfo[] = {
    { gUnknownEffStone8Tex, { 200, 0, 0, 255 }, { 0, 0, 0, 255 } },
    { gUnknownEffStone7Tex, { 255, 100, 0, 255 }, { 100, 0, 0, 255 } },
    { gUnknownEffStone6Tex, { 255, 200, 0, 255 }, { 200, 0, 0, 255 } },
    { gUnknownEffStone5Tex, { 255, 255, 0, 255 }, { 255, 0, 0, 255 } },
    { gUnknownEffStone4Tex, { 255, 255, 150, 255 }, { 255, 150, 0, 255 } },
    { gUnknownEffStone3Tex, { 255, 255, 255, 255 }, { 255, 255, 0, 255 } },
    { gUnknownEffStone2Tex, { 255, 255, 255, 255 }, { 0, 255, 0, 255 } },
    { gUnknownEffStone1Tex, { 255, 255, 255, 255 }, { 0, 255, 255, 255 } },
};

u32 EffectSsStone1_Init(PlayState* play, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsStone1InitParams* initParams = (EffectSsStone1InitParams*)initParamsx;
    Vec3f pos = initParams->pos;

    this->pos = pos;
    this->vec = pos;
    this->life = 8;
    this->rFreezeFadeFlash = initParams->freezeFadeFlash;
    this->draw = EffectSsStone1_Draw;
    this->update = EffectSsStone1_Update;

    return 1;
}

void EffectSsStone1_Draw(PlayState* play, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx = play->state.gfxCtx;
    EffStoneDrawInfo* drawParams = &sDrawInfo[this->life];
    Vec3f unusedProjectedPos;
    f32 viewDepth;
    f32 scale;

    OPEN_DISPS(gfxCtx, "../z_eff_ss_stone1.c", 154);

    // Grow the effect with distance (when above 1500) so as to keep a roughly constant on-screen size when far
    SkinMatrix_Vec3fMtxFMultXYZW(&play->viewProjectionMtxF, &this->pos, &unusedProjectedPos, &viewDepth);
    scale = (viewDepth < 1500.0f) ? 3.0f : (viewDepth / 1500.0f) * 3.0f;

    Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
    Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, gfxCtx, "../z_eff_ss_stone1.c", 168);

    Gfx_SetupDL_61Xlu(gfxCtx);
    gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(drawParams->texture));
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, drawParams->primColor.r, drawParams->primColor.g, drawParams->primColor.b,
                    255);
    gDPSetEnvColor(POLY_XLU_DISP++, drawParams->envColor.r, drawParams->envColor.g, drawParams->envColor.b, 255);
    gSPDisplayList(POLY_XLU_DISP++, gUnknownEffStoneDL);

    CLOSE_DISPS(gfxCtx, "../z_eff_ss_stone1.c", 183);
}

void EffectSsStone1_Update(PlayState* play, u32 index, EffectSs* this) {
    if ((this->life == 6) && this->rFreezeFadeFlash) {
        //! @bug freezes the screen (see z_eff_ss_stone1.h)
        R_TRANS_FADE_FLASH_ALPHA_STEP = 0;
    }
}
