/*
 * File: z_eff_ss_ice_piece.c
 * Overlay: ovl_Effect_Ss_Ice_Piece
 * Description: Ice Shards
 */

#include "z_eff_ss_ice_piece.h"

typedef enum {
    /* 0x00 */ SS_ICE_PIECE_LIFESPAN,
    /* 0x01 */ SS_ICE_PIECE_YAW,
    /* 0x02 */ SS_ICE_PIECE_PITCH,
    /* 0x03 */ SS_ICE_PIECE_PITCH_STEP,
    /* 0x04 */ SS_ICE_PIECE_SCALE
} EffectSsIce_PieceRegs;

u32 EffectSsIcePiece_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void func_809A8850(GlobalContext* globalCtx, u32 index, EffectSs* this);
void func_809A8AC0(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_Ice_Piece_InitVars = {
    EFFECT_SS_ICE_PIECE,
    EffectSsIcePiece_Init,
};

extern Gfx D_04033720[];

u32 EffectSsIcePiece_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsIcePieceInitParams* initParams = (EffectSsIcePieceInitParams*)initParamsx;

    this->pos = initParams->pos;
    this->vec = initParams->pos;
    this->velocity = initParams->velocity;
    this->accel = initParams->accel;
    this->life = initParams->life;
    this->draw = func_809A8850;
    this->update = func_809A8AC0;
    this->regs[SS_ICE_PIECE_LIFESPAN] = initParams->life;
    this->regs[SS_ICE_PIECE_SCALE] = initParams->scale * 100.0f;
    this->regs[SS_ICE_PIECE_YAW] = atan2s(initParams->velocity.z, initParams->velocity.x);
    this->regs[SS_ICE_PIECE_PITCH] = 0;

    this->regs[SS_ICE_PIECE_PITCH_STEP] =
        ((fabsf(initParams->velocity.x) + fabsf(initParams->velocity.y)) * 100.0f) * (Math_Rand_ZeroFloat(1.0f) + 0.5f);

    return 1;
}

void func_809A8850(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    s32 pad;
    f32 scale;
    u32 frames;
    f32 alpha;

    scale = this->regs[SS_ICE_PIECE_SCALE] * 0.01f;
    frames = globalCtx->state.frames;

    OPEN_DISPS(gfxCtx, "../z_eff_ice_piece.c", 161);
    
    if ((this->regs[SS_ICE_PIECE_LIFESPAN] > 0) && (this->life < (this->regs[SS_ICE_PIECE_LIFESPAN] >> 1))) {
        alpha = ((this->life * 2.0f) / this->regs[SS_ICE_PIECE_LIFESPAN]);
        alpha *= 255.0f;
    } else {
        alpha = 255.0f;
    }

    Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
    Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
    Matrix_RotateY(this->regs[SS_ICE_PIECE_YAW] * 0.0000958738f, MTXMODE_APPLY);
    Matrix_RotateX(this->regs[SS_ICE_PIECE_PITCH] * 0.0000958738f, MTXMODE_APPLY);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_eff_ice_piece.c", 185),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    func_80093D84(globalCtx->state.gfxCtx);
    gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0, 50, 100, (s32)alpha & 0xFF);
    func_8003435C(this, globalCtx);
    gSPSegment(oGfxCtx->polyXlu.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, (1 * frames) % 256, 0x20, 0x10, 1, 0, (2 * frames) % 256,
                                0x40, 0x20));
    gSPDisplayList(oGfxCtx->polyXlu.p++, D_04033720);

    CLOSE_DISPS(gfxCtx, "../z_eff_ice_piece.c", 209);
}

void func_809A8AC0(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    this->regs[SS_ICE_PIECE_PITCH] += this->regs[SS_ICE_PIECE_PITCH_STEP];
    this->velocity.x = this->velocity.x * 0.85f;
    this->velocity.y = this->velocity.y * 0.85f;
    this->velocity.z = this->velocity.z * 0.85f;
}
