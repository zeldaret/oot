/*
 * File: z_eff_ss_extra.c
 * Overlay: ovl_Effect_Ss_Extra
 * Description: Minigame Score Points
 */

#include "z_eff_ss_extra.h"

typedef enum {
    /* 0x00 */ SS_EXTRA_OBJ_IDX,
    /* 0x01 */ SS_EXTRA_TIMER,
    /* 0x02 */ SS_EXTRA_SCORE_IDX,
    /* 0x03 */ SS_EXTRA_SCALE
} EffectSsExtraRegs;

u32 EffectSsExtra_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsExtra_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsExtra_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

static s16 sScores[] = { 30, 60, 100 };

EffectSsInit Effect_Ss_Extra_InitVars = {
    EFFECT_SS_EXTRA,
    EffectSsExtra_Init,
};

static UNK_PTR D_809A4070[] = { 0x06000000, 0x06000480, 0x06000900 };

extern Gfx D_06000DC0[];

u32 EffectSsExtra_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsExtraInitParams* initParams = (EffectSsExtraInitParams*)initParamsx;
    s32 pad;
    s32 objBankIndex;
    u32 oldSeg6;

    objBankIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_YABUSAME_POINT);

    if ((objBankIndex >= 0) && Object_IsLoaded(&globalCtx->objectCtx, objBankIndex)) {
        oldSeg6 = gSegments[6];
        gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[objBankIndex].segment);
        this->pos = initParams->pos;
        this->velocity = initParams->velocity;
        this->accel = initParams->accel;
        this->draw = EffectSsExtra_Draw;
        this->update = EffectSsExtra_Update;
        this->life = 50;
        this->regs[SS_EXTRA_SCORE_IDX] = initParams->scoreIdx;
        this->regs[SS_EXTRA_SCALE] = initParams->scale;
        this->regs[SS_EXTRA_TIMER] = 5;
        this->regs[SS_EXTRA_OBJ_IDX] = objBankIndex;
        gSegments[6] = oldSeg6;
        return 1;
    }

    return 0;
}

void EffectSsExtra_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    s32 pad;
    f32 scale = this->regs[SS_EXTRA_SCALE] / 100.0f;
    void* object = globalCtx->objectCtx.status[this->regs[SS_EXTRA_OBJ_IDX]].segment;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_eff_ss_extra.c", 168);
    gSegments[6] = VIRTUAL_TO_PHYSICAL(object);
    gSPSegment(oGfxCtx->polyXlu.p++, 0x06, object);
    Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
    Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
    func_80093D84(globalCtx->state.gfxCtx);
    func_800D1FD4(&globalCtx->mf_11DA0);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_eff_ss_extra.c", 186),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPSegment(oGfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_809A4070[this->regs[SS_EXTRA_SCORE_IDX]]));
    gSPDisplayList(oGfxCtx->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_06000DC0));
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_eff_ss_extra.c", 194);
}

void EffectSsExtra_Update(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    if (this->regs[SS_EXTRA_TIMER] != 0) {
        this->regs[SS_EXTRA_TIMER] -= 1;
    } else {
        this->velocity.y = 0.0f;
    }
    if (this->regs[SS_EXTRA_TIMER] == 1) {
        globalCtx->interfaceCtx.unk_23C = sScores[this->regs[SS_EXTRA_SCORE_IDX]];
    }
}
