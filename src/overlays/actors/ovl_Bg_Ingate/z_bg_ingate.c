/*
 * File: z_bg_ingate.c
 * Overlay: ovl_Bg_Ingate
 * Description: Ingo's Gates (Lon Lon Ranch)
 */

#include "z_bg_ingate.h"

#define FLAGS 0x00000000

#define THIS ((BgIngate*)thisx)

void BgIngate_Init(Actor* thisx, GlobalContext* globalCtx);
void BgIngate_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgIngate_Update(Actor* thisx, GlobalContext* globalCtx);
void BgIngate_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80892890(BgIngate* this, GlobalContext* globalCtx);
void BgIngate_DoNothing(BgIngate* this, GlobalContext* globalCtx);

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

void BgIngate_SetupAction(BgIngate* this, BgIngateActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void BgIngate_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgIngate* this = THIS;

    s32 pad;
    s32 sp32 = 0;

    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    DynaPolyInfo_Alloc(&D_060011B8, &sp32);

    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, sp32);

    if ((globalCtx->sceneNum != SCENE_SPOT20 || LINK_IS_CHILD) ||
        (((gSaveContext.eventChkInf[1] & 0x100)) && (gSaveContext.cutsceneIndex != 0xFFF0))) {
        Actor_Kill(&this->dyna.actor);
        return;
    }

    Actor_SetScale(&this->dyna.actor, 0.1f);
    if (((this->dyna.actor.params & 1) != 0) && ((gSaveContext.eventInf[0] & 0xF) == 6)) {
        globalCtx->csCtx.frames = 0;
        BgIngate_SetupAction(this, func_80892890);
    } else {
        BgIngate_SetupAction(this, BgIngate_DoNothing);
    }
}

void BgIngate_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgIngate* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void func_80892890(BgIngate* this, GlobalContext* globalCtx) {
    s32 phi0;
    s16 phi1;
    s16 csFrames;

    if (globalCtx->csCtx.frames >= 50) {
        phi0 = 0x4000;
        if ((this->dyna.actor.params & 2) == 0) {
            phi0 = -0x4000;
        }
        this->dyna.actor.shape.rot.y = this->dyna.actor.posRot.rot.y + phi0;
        BgIngate_SetupAction(this, &BgIngate_DoNothing);
    } else if (globalCtx->csCtx.frames >= 10) {
        csFrames = globalCtx->csCtx.frames - 10;
        csFrames *= 400;
        phi1 = csFrames;
        if (csFrames > 0x4000) {
            csFrames = 0x4000;
        }
        csFrames = (Math_SinS(csFrames) * 16384.0f);
        phi1 = csFrames;
        if ((this->dyna.actor.params & 2) == 0) {
            phi1 = -phi1;
        }
        this->dyna.actor.shape.rot.y = this->dyna.actor.posRot.rot.y + phi1;
    }
}

void BgIngate_DoNothing(BgIngate* this, GlobalContext* globalCtx) {
}

void BgIngate_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgIngate* this = THIS;

    this->actionFunc(this, globalCtx);
}

void BgIngate_Draw(Actor* thisx, GlobalContext* globalCtx) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_ingate.c", 240);

    func_80093D18(globalCtx->state.gfxCtx);

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_ingate.c", 245),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPDisplayList(POLY_OPA_DISP++, D_06001040);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_ingate.c", 250);
}
