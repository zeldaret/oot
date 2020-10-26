/*
 * File: z_eff_ss_hahen.c
 * Overlay: ovl_Effect_Ss_Hahen
 * Description: Fragments
 */

#include "z_eff_ss_hahen.h"

#define rPitch regs[0]
#define rYaw regs[1]
#define rUnused regs[2]
#define rScale regs[3]
#define rObjId regs[4]
#define rObjBankIdx regs[5]
#define rMinLife regs[6]

u32 EffectSsHahen_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsHahen_DrawGray(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsHahen_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsHahen_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_Hahen_InitVars = {
    EFFECT_SS_HAHEN,
    EffectSsHahen_Init,
};

extern Gfx D_0400C0D0[];
extern Gfx D_0400CD80[];

void EffectSsHahen_CheckForObject(EffectSs* this, GlobalContext* globalCtx) {
    if (((this->rObjBankIdx = Object_GetIndex(&globalCtx->objectCtx, this->rObjId)) < 0) ||
        !Object_IsLoaded(&globalCtx->objectCtx, this->rObjBankIdx)) {
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
        this->rObjId = initParams->objId;
        EffectSsHahen_CheckForObject(this, globalCtx);
    } else {
        this->gfx = SEGMENTED_TO_VIRTUAL(D_0400C0D0);
        this->rObjId = -1;
    }

    if ((this->rObjId == OBJECT_HAKA_OBJECTS) && (this->gfx == D_0400CD80)) {
        this->draw = EffectSsHahen_DrawGray;
    } else {
        this->draw = EffectSsHahen_Draw;
    }

    this->update = EffectSsHahen_Update;
    this->rUnused = initParams->unused;
    this->rScale = initParams->scale;
    this->rPitch = Math_Rand_ZeroOne() * 314.0f;
    this->rYaw = Math_Rand_ZeroOne() * 314.0f;
    this->rMinLife = 200 - initParams->life;

    return 1;
}

void EffectSsHahen_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    s32 pad;
    f32 scale = this->rScale * 0.001f;

    OPEN_DISPS(gfxCtx, "../z_eff_hahen.c", 208);

    if (this->rObjId != -1) {
        gSPSegment(oGfxCtx->polyOpa.p++, 0x06, globalCtx->objectCtx.status[this->rObjBankIdx].segment);
    }

    Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
    Matrix_RotateY(this->rYaw * 0.01f, MTXMODE_APPLY);
    Matrix_RotateX(this->rPitch * 0.01f, MTXMODE_APPLY);
    Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(gfxCtx, "../z_eff_hahen.c", 228),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    func_80093D18(globalCtx->state.gfxCtx);
    gSPDisplayList(oGfxCtx->polyOpa.p++, this->gfx);

    CLOSE_DISPS(gfxCtx, "../z_eff_hahen.c", 236);
}

// in the original game this function is hardcoded to be used only by the skull pots in Shadow Temple
void EffectSsHahen_DrawGray(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    s32 pad;
    f32 scale = this->rScale * 0.001f;

    OPEN_DISPS(gfxCtx, "../z_eff_hahen.c", 253);

    if (this->rObjId != -1) {
        gSPSegment(oGfxCtx->polyOpa.p++, 0x06, globalCtx->objectCtx.status[this->rObjBankIdx].segment);
    }

    Matrix_Translate(this->pos.x, this->pos.y, this->pos.z, MTXMODE_NEW);
    Matrix_RotateY(this->rYaw * 0.01f, MTXMODE_APPLY);
    Matrix_RotateX(this->rPitch * 0.01f, MTXMODE_APPLY);
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

void EffectSsHahen_Update(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    Player* player = PLAYER;

    this->rPitch += 55;
    this->rYaw += 10;

    if ((this->pos.y <= player->actor.groundY) && (this->life < this->rMinLife)) {
        this->life = 0;
    }

    if (this->rObjId != -1) {
        EffectSsHahen_CheckForObject(this, globalCtx);
    }
}
