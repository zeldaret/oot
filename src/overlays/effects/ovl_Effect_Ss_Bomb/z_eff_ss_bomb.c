/*
 * File: z_eff_ss_bomb.c
 * Overlay: ovl_Effect_Ss_Bomb
 * Description: Bomb Blast. Unused in the orignal game.
 */

#include "z_eff_ss_bomb.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

#define EFFSSBOMB_LIFESPAN 20

#define rScale regs[0]
#define rTexIndex regs[1]

u32 EffectSsBomb_Init(PlayState* play, u32 index, EffectSs* this, void* initParamsx);
void EffectSsBomb_Draw(PlayState* play, u32 index, EffectSs* this);
void EffectSsBomb_Update(PlayState* play, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_Bomb_InitVars = {
    EFFECT_SS_BOMB,
    EffectSsBomb_Init,
};

u32 EffectSsBomb_Init(PlayState* play, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsBombInitParams* initParams = (EffectSsBombInitParams*)initParamsx;

    Math_Vec3f_Copy(&this->pos, &initParams->pos);
    Math_Vec3f_Copy(&this->velocity, &initParams->velocity);
    Math_Vec3f_Copy(&this->accel, &initParams->accel);
    this->gfx = SEGMENTED_TO_VIRTUAL(gEffBombExplosion1DL);
    this->life = EFFSSBOMB_LIFESPAN;
    this->draw = EffectSsBomb_Draw;
    this->update = EffectSsBomb_Update;
    this->rScale = 100;
    this->rTexIndex = 0;

    return 1;
}

static void* sExplosionTextures[] = {
    gEffBombExplosion1Tex,
    gEffBombExplosion2Tex,
    gEffBombExplosion3Tex,
    gEffBombExplosion4Tex,
};

void EffectSsBomb_Draw(PlayState* play, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx = play->state.gfxCtx;
    MtxF mfTrans;
    MtxF mfScale;
    MtxF mfResult;
    MtxF mfTransBillboard;
    Mtx* mtx;
    s32 pad;
    f32 scale;
    s16 intensity;

    if (1) {}

    OPEN_DISPS(gfxCtx, "../z_eff_ss_bomb.c", 168);

    scale = this->rScale / 100.0f;

    SkinMatrix_SetTranslate(&mfTrans, this->pos.x, this->pos.y, this->pos.z);
    SkinMatrix_SetScale(&mfScale, scale, scale, 1.0f);
    SkinMatrix_MtxFMtxFMult(&mfTrans, &play->billboardMtxF, &mfTransBillboard);
    SkinMatrix_MtxFMtxFMult(&mfTransBillboard, &mfScale, &mfResult);

    gSPMatrix(POLY_XLU_DISP++, &gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    mtx = SkinMatrix_MtxFToNewMtx(gfxCtx, &mfResult);

    if (mtx != NULL) {
        gSPMatrix(POLY_XLU_DISP++, mtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sExplosionTextures[this->rTexIndex]));
        gDPPipeSync(POLY_XLU_DISP++);
        Gfx_SetupDL_61Xlu(gfxCtx);
        intensity = this->life * ((f32)255 / EFFSSBOMB_LIFESPAN);
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, intensity, intensity, intensity, intensity);
        gDPPipeSync(POLY_XLU_DISP++);
        //! @bug env color is not set but used in gEffBombExplosion1DL
        gSPDisplayList(POLY_XLU_DISP++, this->gfx);
        gDPPipeSync(POLY_XLU_DISP++);
    }

    CLOSE_DISPS(gfxCtx, "../z_eff_ss_bomb.c", 214);
}

void EffectSsBomb_Update(PlayState* play, u32 index, EffectSs* this) {
    if ((this->life <= EFFSSBOMB_LIFESPAN) && (this->life > (EFFSSBOMB_LIFESPAN - ARRAY_COUNT(sExplosionTextures)))) {
        this->rTexIndex = (EFFSSBOMB_LIFESPAN - this->life);
    } else {
        this->rScale += 0;
        this->rTexIndex = ARRAY_COUNT(sExplosionTextures) - 1;
    }

    this->accel.x = ((Rand_ZeroOne() * 0.4f) - 0.2f);
    this->accel.z = ((Rand_ZeroOne() * 0.4f) - 0.2f);
}
