/*
 * File: z_en_scene_change.c
 * Overlay: ovl_En_Scene_Change
 * Description: Unknown (Broken Actor)
 */

#include "z_en_scene_change.h"

#define FLAGS 0x00000000

void EnSceneChange_Init(EnSceneChange* this, GlobalContext* globalCtx);
void EnSceneChange_Destroy(EnSceneChange* this, GlobalContext* globalCtx);
void EnSceneChange_Update(EnSceneChange* this, GlobalContext* globalCtx);
void EnSceneChange_Draw(EnSceneChange* this, GlobalContext* globalCtx);
void EnSceneChange_SetupAction(EnSceneChange* this, ActorFunc actionFunc);
void func_80AF8CAC(EnSceneChange* this, GlobalContext* globalCtx);

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

void EnSceneChange_SetupAction(EnSceneChange* this, ActorFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnSceneChange_Init(EnSceneChange* this, GlobalContext* globalCtx) {
    EnSceneChange_SetupAction(this, func_80AF8CAC);
}

void EnSceneChange_Destroy(EnSceneChange* this, GlobalContext* globalCtx) {
}

void func_80AF8CAC(EnSceneChange* this, GlobalContext* globalCtx) {
}

void EnSceneChange_Update(EnSceneChange* this, GlobalContext* globalCtx) {
    this->actionFunc(this, globalCtx);
}

void EnSceneChange_Draw(EnSceneChange* this, GlobalContext* globalCtx) {
    s32 pad[0x2];
    Gfx* displayList;
    s32 pad1[0x2];
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
