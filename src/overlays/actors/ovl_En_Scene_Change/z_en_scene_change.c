/*
 * File: z_en_scene_change.c
 * Overlay: ovl_En_Scene_Change
 * Description: Unknown (Broken Actor)
 */

#include "z_en_scene_change.h"

#include "gfx.h"
#include "gfx_setupdl.h"
#include "z64play.h"

#define FLAGS 0

void EnSceneChange_Init(Actor* thisx, PlayState* play);
void EnSceneChange_Destroy(Actor* thisx, PlayState* play);
void EnSceneChange_Update(Actor* thisx, PlayState* play);
void EnSceneChange_Draw(Actor* thisx, PlayState* play);

void EnSceneChange_DoNothing(EnSceneChange* this, PlayState* play);

ActorProfile En_Scene_Change_Profile = {
    /**/ ACTOR_EN_SCENE_CHANGE,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_JJ,
    /**/ sizeof(EnSceneChange),
    /**/ EnSceneChange_Init,
    /**/ EnSceneChange_Destroy,
    /**/ EnSceneChange_Update,
    /**/ EnSceneChange_Draw,
};

void EnSceneChange_SetupAction(EnSceneChange* this, EnSceneChangeActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnSceneChange_Init(Actor* thisx, PlayState* play) {
    EnSceneChange* this = (EnSceneChange*)thisx;

    EnSceneChange_SetupAction(this, EnSceneChange_DoNothing);
}

void EnSceneChange_Destroy(Actor* thisx, PlayState* play) {
}

void EnSceneChange_DoNothing(EnSceneChange* this, PlayState* play) {
}

void EnSceneChange_Update(Actor* thisx, PlayState* play) {
    EnSceneChange* this = (EnSceneChange*)thisx;

    this->actionFunc(this, play);
}

void EnSceneChange_Draw(Actor* thisx, PlayState* play) {
    s32 pad[2];
    Gfx* displayList;
    s32 pad2[2];
    Gfx* displayListHead;

    displayList = GRAPH_ALLOC(play->state.gfxCtx, 0x3C0);

    OPEN_DISPS(play->state.gfxCtx, "../z_en_scene_change.c", 290);

    displayListHead = displayList;
    gSPSegment(POLY_OPA_DISP++, 0x0C, displayListHead);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_scene_change.c", 386);
}
