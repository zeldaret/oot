/*
 * File: z_eff_ss_hahen.c
 * Overlay: ovl_Effect_Ss_Hahen
 * Description:
 */

#include "z_eff_ss_hahen.h"

typedef enum {
    /* 0x00 */ SS_HAHEN_PITCH,
    /* 0x01 */ SS_HAHEN_YAW,
    /* 0x02 */ SS_HAHEN_UNUSED,
    /* 0x03 */ SS_HAHEN_SCALE,
    /* 0x04 */ SS_HAHEN_OBJ_ID,
    /* 0x05 */ SS_HAHEN_OBJ_BANK_IDX,
    /* 0x06 */ SS_HAHEN_6
} EffectSsHahenRegs;

u32 EffectSsHahen_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void func_809A7D9C(GlobalContext* globalCtx, u32 index, EffectSs* this);
void func_809A7BFC(GlobalContext* globalCtx, u32 index, EffectSs* this);
void func_809A7F84(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_Hahen_InitVars = {
    EFFECT_SS_HAHEN,
    EffectSsHahen_Init,
};

extern Gfx D_0400C0D0[];
extern Gfx D_0400CD80[];

void func_809A79F0(EffectSs* this, GlobalContext* globalCtx) {

    if (((this->regs[SS_HAHEN_OBJ_BANK_IDX] = Object_GetIndex(&globalCtx->objectCtx, this->regs[SS_HAHEN_OBJ_ID])) <
         0) ||
        !Object_IsLoaded(&globalCtx->objectCtx, this->regs[SS_HAHEN_OBJ_BANK_IDX])) {
        this->life = -1;
        this->draw = NULL;
    }
}

u32 EffectSsHahen_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsHahenInitParams* initParams = (EffectSsHahenInitParams*)initParamsx;

    this->pos = initParams->pos;
    this->velocity = initParams->velocity;
    this->accel = initParams->accel;

    this->life = 200;

    if (initParams->dList != NULL) {
        this->gfx = initParams->dList;
        this->regs[SS_HAHEN_OBJ_ID] = initParams->objId;
        func_809A79F0(this, globalCtx);
    } else {
        this->gfx = SEGMENTED_TO_VIRTUAL(D_0400C0D0);
        this->regs[SS_HAHEN_OBJ_ID] = -1;
    }

    if ((this->regs[SS_HAHEN_OBJ_ID] == 0x69) && (this->gfx == D_0400CD80)) {
        this->draw = func_809A7D9C;
    } else {
        this->draw = func_809A7BFC;
    }

    this->update = func_809A7F84;
    this->regs[SS_HAHEN_UNUSED] = initParams->unused;
    this->regs[SS_HAHEN_SCALE] = initParams->scale;
    this->regs[SS_HAHEN_PITCH] = Math_Rand_ZeroOne() * 314.0f;
    this->regs[SS_HAHEN_YAW] = Math_Rand_ZeroOne() * 314.0f;
    this->regs[SS_HAHEN_6] = 200 - initParams->unk_2E;

    return 1;
}

void func_809A7BFC(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    s32 pad;
    f32 scale = this->regs[SS_HAHEN_SCALE] * 0.001f;

    OPEN_DISPS(gfxCtx, "../z_eff_hahen.c", 208);

    if (this->regs[SS_HAHEN_OBJ_ID] != -1) {
        gSPSegment(oGfxCtx->polyOpa.p++, 0x06, globalCtx->objectCtx.status[this->regs[SS_HAHEN_OBJ_BANK_IDX]].segment);
    }

    Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
    Matrix_RotateY(this->regs[SS_HAHEN_YAW] * 0.01f, MTXMODE_APPLY);
    Matrix_RotateX(this->regs[SS_HAHEN_PITCH] * 0.01f, MTXMODE_APPLY);
    Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(gfxCtx, "../z_eff_hahen.c", 228),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    func_80093D18(globalCtx->state.gfxCtx);
    gSPDisplayList(oGfxCtx->polyOpa.p++, this->gfx);

    CLOSE_DISPS(gfxCtx, "../z_eff_hahen.c", 236);
}

void func_809A7D9C(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    s32 pad;
    f32 scale = this->regs[SS_HAHEN_SCALE] * 0.001f;

    OPEN_DISPS(gfxCtx, "../z_eff_hahen.c", 253);

    if (this->regs[SS_HAHEN_OBJ_ID] != -1) {
        gSPSegment(oGfxCtx->polyOpa.p++, 0x06, globalCtx->objectCtx.status[this->regs[SS_HAHEN_OBJ_BANK_IDX]].segment);
    }

    Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
    Matrix_RotateY(this->regs[SS_HAHEN_YAW] * 0.01f, MTXMODE_APPLY);
    Matrix_RotateX(this->regs[SS_HAHEN_PITCH] * 0.01f, MTXMODE_APPLY);
    Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(gfxCtx, "../z_eff_hahen.c", 271),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    func_80093D18(globalCtx->state.gfxCtx);
    gDPSetCombineLERP(oGfxCtx->polyOpa.p++, SHADE, 0, PRIMITIVE, 0, SHADE, 0, PRIMITIVE, 0, SHADE, 0, PRIMITIVE, 0,
                      SHADE, 0, PRIMITIVE, 0);
    gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0x0, 0x01, 100, 100, 120, 255);
    gSPDisplayList(oGfxCtx->polyOpa.p++, this->gfx);

    CLOSE_DISPS(gfxCtx, "../z_eff_hahen.c", 288);
}

void func_809A7F84(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    Player* player = PLAYER;

    this->regs[SS_HAHEN_PITCH] += 55;
    this->regs[SS_HAHEN_YAW] += 10;

    if ((this->pos.y <= player->actor.groundY) && (this->life < this->regs[SS_HAHEN_6])) {
        this->life = 0;
    }

    if (this->regs[SS_HAHEN_OBJ_ID] != -1) {
        func_809A79F0(this, globalCtx);
    }
}
