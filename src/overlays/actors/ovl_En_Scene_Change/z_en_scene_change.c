/*
 * File: z_en_scene_change.c
 * Overlay: ovl_En_Scene_Change
 * Description: Unknown (Broken Actor)
 */

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ActorFunc updateFunc;
} EnSceneChange; // size = 0x0150

#define ROOM 0x00
#define FLAGS 0x00000000

static void EnSceneChange_Init(EnSceneChange* this, GlobalContext* globalCtx);
static void EnSceneChange_Destroy(EnSceneChange* this, GlobalContext* globalCtx);
static void EnSceneChange_Update(EnSceneChange* this, GlobalContext* globalCtx);
static void EnSceneChange_Draw(EnSceneChange* this, GlobalContext* globalCtx);
static void func_80AF8C70(EnSceneChange* this, ActorFunc updateFunc);
static void func_80AF8CAC(EnSceneChange* this, GlobalContext* globalCtx);

const ActorInit En_Scene_Change_InitVars = {
    ACTOR_EN_SCENE_CHANGE,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_JJ,
    sizeof(EnSceneChange),
    (ActorFunc)EnSceneChange_Init,
    (ActorFunc)EnSceneChange_Destroy,
    (ActorFunc)EnSceneChange_Update,
    (ActorFunc)EnSceneChange_Draw,
};

static void func_80AF8C70(EnSceneChange* this, ActorFunc updateFunc) {
    this->updateFunc = updateFunc;
}

static void EnSceneChange_Init(EnSceneChange* this, GlobalContext* globalCtx) {
    func_80AF8C70(this, func_80AF8CAC);
}

static void EnSceneChange_Destroy(EnSceneChange* this, GlobalContext* globalCtx) {
}

static void func_80AF8CAC(EnSceneChange* this, GlobalContext* globalCtx) {
}

static void EnSceneChange_Update(EnSceneChange* this, GlobalContext* globalCtx) {
    this->updateFunc(&this->actor, globalCtx);
}

static void EnSceneChange_Draw(EnSceneChange* this, GlobalContext* globalCtx) {
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
