/*
 * File: z_bg_ingate.c
 * Overlay: ovl_Bg_Ingate
 * Description: Ingo's Gates (Lon Lon Ranch)
 */

#include "z_bg_ingate.h"
#include <ultra64.h>
#include <global.h>

#define FLAGS 0x00000000

#define THIS ((BgIngate*)thisx)

void BgIngate_Init(Actor* thisx, GlobalContext* globalCtx);
void BgIngate_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgIngate_Update(Actor* thisx, GlobalContext* globalCtx);
void BgIngate_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80892890(BgIngate* thisx, GlobalContext* globalCtx);
void func_80892990(BgIngate* this, GlobalContext* globalCtx);

const ActorInit Bg_Ingate_InitVars = {
    ACTOR_BG_INGATE,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_INGATE,
    sizeof(BgIngate),
    (ActorFunc)BgIngate_Init,
    (ActorFunc)BgIngate_Destroy,
    (ActorFunc)BgIngate_Update,
    (ActorFunc)BgIngate_Draw,
};

extern UNK_TYPE D_060011B8;
extern Gfx D_06001040[];

void BgIngate_SetupAction(BgIngate* this, BgIngateActionFunc func) {
    this->actionFunc = func;
}

void BgIngate_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgIngate* this = THIS;
    s32 pad;
    s32 sp32 = 0;

    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    DynaPolyInfo_Alloc(&D_060011B8, &sp32);

    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, sp32);

    if ((globalCtx->sceneNum != 0x63 || gSaveContext.linkAge != 0) ||
        (((gSaveContext.eventChkInf[1] & 0x100) != 0) && (gSaveContext.cutsceneIndex != 0xFFF0))) {
        Actor_Kill(&this->dyna.actor);
        return;
    }

    Actor_SetScale(&this->dyna.actor, 0.1f);
    if (((this->dyna.actor.params & 1) != 0) && ((gSaveContext.eventInf[0] & 0xF) == 6)) {
        globalCtx->csCtx.frames = (u16)0U;
        BgIngate_SetupAction(this, &func_80892890);
        return;
    }
    BgIngate_SetupAction(this, &func_80892990);
}

void BgIngate_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgIngate* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, (s32)this->dyna.dynaPolyId);
}

void func_80892890(BgIngate* this, GlobalContext* globalCtx) {
    s32 phi0;
    s16 phi1;
    s16 ctxFrames;

    if (globalCtx->csCtx.frames >= 0x32) {
        phi0 = 0x4000;
        if ((this->dyna.actor.params & 2) == 0) {
            phi0 = -0x4000;
        }
        this->dyna.actor.shape.rot.y = this->dyna.actor.posRot.rot.y + phi0;
        BgIngate_SetupAction(this, &func_80892990);
    } else if (globalCtx->csCtx.frames >= 0xA) {
        ctxFrames = globalCtx->csCtx.frames - 0xA;
        ctxFrames *= 400;
        phi1 = ctxFrames;
        if (ctxFrames > 0x4000) {
            ctxFrames = 0x4000;
        }
        ctxFrames = (Math_Sins(ctxFrames) * 16384.0f);
        phi1 = ctxFrames;
        if ((this->dyna.actor.params & 2) == 0) {
            phi1 = -phi1;
        }
        this->dyna.actor.shape.rot.y = this->dyna.actor.posRot.rot.y + phi1;
    }
}

void func_80892990(BgIngate* this, GlobalContext* globalCtx) {
    // does nothing
}

void BgIngate_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgIngate* this = THIS;
    this->actionFunc(this, globalCtx);
}

void BgIngate_Draw(Actor* thisx, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_ingate.c", 0xF0);

    func_80093D18(globalCtx->state.gfxCtx);

    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_ingate.c", 0xF5),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPDisplayList(gfxCtx->polyOpa.p++, D_06001040);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_ingate.c", 0xFA);
}
