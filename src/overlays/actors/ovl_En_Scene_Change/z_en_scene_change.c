/*
 * File: z_en_scene_change.c
 * Overlay: ovl_En_Scene_Change
 * Description: Unknown (Broken Actor)
 */

#include "z_en_scene_change.h"

#define FLAGS 0x00000000

#define THIS ((EnSceneChange*)thisx)

void EnSceneChange_Init(Actor* thisx, GlobalContext* globalCtx);
void EnSceneChange_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnSceneChange_Update(Actor* thisx, GlobalContext* globalCtx);
void EnSceneChange_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnSceneChange_DoNothing(EnSceneChange* this, GlobalContext* globalCtx);

const ActorInit En_Scene_Change_InitVars = {
    ACTOR_EN_SCENE_CHANGE,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_JJ,
    sizeof(EnSceneChange),
    (ActorFunc)EnSceneChange_Init,
    (ActorFunc)EnSceneChange_Destroy,
    (ActorFunc)EnSceneChange_Update,
    (ActorFunc)EnSceneChange_Draw,
};

void EnSceneChange_SetupAction(EnSceneChange* this, EnSceneChangeActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnSceneChange_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnSceneChange* this = THIS;

    EnSceneChange_SetupAction(this, EnSceneChange_DoNothing);
}

void EnSceneChange_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void EnSceneChange_DoNothing(EnSceneChange* this, GlobalContext* globalCtx) {
}

void EnSceneChange_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnSceneChange* this = THIS;

    this->actionFunc(this, globalCtx);
}

void EnSceneChange_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad[2];
    Gfx* displayList;
    s32 pad2[2];
    Gfx* displayListHead;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    displayList = Graph_Alloc(globalCtx->state.gfxCtx, 0x3C0);

    gfxCtx = globalCtx->state.gfxCtx;

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_scene_change.c", 290);

    displayListHead = displayList;
    gSPSegment(gfxCtx->polyOpa.p++, 0x0C, displayListHead);

    func_80093D18(globalCtx->state.gfxCtx);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_scene_change.c", 386);
}
