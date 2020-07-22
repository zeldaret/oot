/*
 * File: z_eff_ss_stick.c
 * Overlay: ovl_Effect_Ss_Stick
 * Description: Broken stick as child, broken sword as adult
 */

#include "z_eff_ss_stick.h"

typedef enum {
    /* 0x00 */ SS_STICK_OBJ_BANK_IDX,
    /* 0x01 */ SS_STICK_YAW,
} EffectSsStickRegs;

u32 EffectSsStick_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsStick_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsStick_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_Stick_InitVars = {
    EFFECT_SS_STICK,
    EffectSsStick_Init,
};

typedef struct {
    /* 0x00 */ s16 objectID;
    /* 0x04 */ Gfx* displayList;
} StickDListInfo;

u32 EffectSsStick_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    StickDListInfo displayListInfo[] = {
        { OBJECT_LINK_BOY, 0x0602BA38 },   // adult, broken sword
        { OBJECT_LINK_CHILD, 0x06006CC0 }, // child, broken stick
    };
    StickDListInfo* ageInfoEntry = gSaveContext.linkAge + displayListInfo;
    EffectSsStickInitParams* initParams = (EffectSsStickInitParams*)initParamsx;
    Vec3f pos;

    this->regs[SS_STICK_OBJ_BANK_IDX] = Object_GetIndex(&globalCtx->objectCtx, ageInfoEntry->objectID);
    this->displayList = ageInfoEntry->displayList;
    pos = initParams->pos;
    this->pos = pos;
    this->unk_2C = pos;
    this->regs[SS_STICK_YAW] = initParams->yaw;
    this->velocity.x = Math_Sins(initParams->yaw) * 6.0f;
    this->velocity.z = Math_Coss(initParams->yaw) * 6.0f;
    this->life = 20;
    this->draw = EffectSsStick_Draw;
    this->update = EffectSsStick_Update;
    this->velocity.y = 26.0f;
    this->accel.y = -4.0f;
    return 1;
}

void EffectSsStick_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    s32 pad[2];
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(&dispRefs, gfxCtx, "../z_eff_ss_stick.c", 153);

    Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);

    if (gSaveContext.linkAge != 0) {
        Matrix_Scale(0.01f, 0.0025f, 0.01f, MTXMODE_APPLY);
        Matrix_RotateRPY(0, this->regs[SS_STICK_YAW], 0, MTXMODE_APPLY);
    } else {
        Matrix_Scale(0.01f, 0.01f, 0.01f, MTXMODE_APPLY);
        Matrix_RotateRPY(0, this->regs[SS_STICK_YAW], globalCtx->state.frames * 10000, MTXMODE_APPLY);
    }

    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(gfxCtx, "../z_eff_ss_stick.c", 176),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    func_80093D18(gfxCtx);
    gSPSegment(gfxCtx->polyOpa.p++, 0x06, globalCtx->objectCtx.status[this->regs[SS_STICK_OBJ_BANK_IDX]].segment);
    gSPSegment(gfxCtx->polyOpa.p++, 0x0C, D_80125F98);
    gSPDisplayList(gfxCtx->polyOpa.p++, this->displayList);
    Graph_CloseDisps(&dispRefs, gfxCtx, "../z_eff_ss_stick.c", 188);
}

void EffectSsStick_Update(GlobalContext* globalCtx, u32 index, EffectSs* this) {
}
