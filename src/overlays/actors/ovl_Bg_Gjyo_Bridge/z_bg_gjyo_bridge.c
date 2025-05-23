/*
 * File: z_bg_gjyo_bridge.c
 * Overlay: ovl_Bg_Gjyo_Bridge
 * Description: Rainbow Bridge outside Ganon's Castle
 */

#include "z_bg_gjyo_bridge.h"
#include "assets/objects/object_gjyo_objects/object_gjyo_objects.h"
#include "assets/scenes/overworld/ganon_tou/ganon_tou_scene.h"

#define FLAGS 0

void BgGjyoBridge_Init(Actor* thisx, PlayState* play);
void BgGjyoBridge_Destroy(Actor* thisx, PlayState* play);
void BgGjyoBridge_Update(Actor* thisx, PlayState* play);
void BgGjyoBridge_Draw(Actor* thisx, PlayState* play);

void func_808787A4(BgGjyoBridge* this, PlayState* play);
void BgGjyoBridge_TriggerCutscene(BgGjyoBridge* this, PlayState* play);
void BgGjyoBridge_SpawnBridge(BgGjyoBridge* this, PlayState* play);

ActorProfile Bg_Gjyo_Bridge_Profile = {
    /**/ ACTOR_BG_GJYO_BRIDGE,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_GJYO_OBJECTS,
    /**/ sizeof(BgGjyoBridge),
    /**/ BgGjyoBridge_Init,
    /**/ BgGjyoBridge_Destroy,
    /**/ BgGjyoBridge_Update,
    /**/ BgGjyoBridge_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(cullingVolumeScale, 800, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void BgGjyoBridge_Init(Actor* thisx, PlayState* play) {
    BgGjyoBridge* this = (BgGjyoBridge*)thisx;
    s32 pad;
    CollisionHeader* colHeader;

    colHeader = NULL;

    Actor_ProcessInitChain(thisx, sInitChain);
    DynaPolyActor_Init(&this->dyna, 0);
    CollisionHeader_GetVirtual(&gRainbowBridgeCol, &colHeader);

    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, thisx, colHeader);

    if (GET_EVENTCHKINF(EVENTCHKINF_CREATED_RAINBOW_BRIDGE)) {
        this->actionFunc = func_808787A4;
    } else {
        this->dyna.actor.draw = NULL;
        DynaPoly_DisableCollision(play, &play->colCtx.dyna, this->dyna.bgId);
        this->actionFunc = BgGjyoBridge_TriggerCutscene;
    }
}

void BgGjyoBridge_Destroy(Actor* thisx, PlayState* play) {
    BgGjyoBridge* this = (BgGjyoBridge*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void func_808787A4(BgGjyoBridge* this, PlayState* play) {
}

void BgGjyoBridge_TriggerCutscene(BgGjyoBridge* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (CHECK_QUEST_ITEM(QUEST_MEDALLION_SPIRIT) && CHECK_QUEST_ITEM(QUEST_MEDALLION_SHADOW) &&
        (INV_CONTENT(ITEM_ARROW_LIGHT) == ITEM_ARROW_LIGHT) && (player->actor.world.pos.x > -70.0f) &&
        (player->actor.world.pos.x < 300.0f) && (player->actor.world.pos.y > 1340.0f) &&
        (player->actor.world.pos.z > 1340.0f) && (player->actor.world.pos.z < 1662.0f) && !Play_InCsMode(play)) {
        play->csCtx.script = SEGMENTED_TO_VIRTUAL(gRainbowBridgeCs);
        gSaveContext.cutsceneTrigger = 1;
        this->actionFunc = BgGjyoBridge_SpawnBridge;
    }
}

void BgGjyoBridge_SpawnBridge(BgGjyoBridge* this, PlayState* play) {
    if ((play->csCtx.state != CS_STATE_IDLE) && (play->csCtx.actorCues[2] != NULL) &&
        (play->csCtx.actorCues[2]->id == 2)) {
        this->dyna.actor.draw = BgGjyoBridge_Draw;
        DynaPoly_EnableCollision(play, &play->colCtx.dyna, this->dyna.bgId);
        SET_EVENTCHKINF(EVENTCHKINF_CREATED_RAINBOW_BRIDGE);
    }
}

void BgGjyoBridge_Update(Actor* thisx, PlayState* play) {
    BgGjyoBridge* this = (BgGjyoBridge*)thisx;

    this->actionFunc(this, play);
}

void BgGjyoBridge_Draw(Actor* thisx, PlayState* play) {
    PlayState* play2 = (PlayState*)play;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_gjyo_bridge.c", 260);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);

    gSPSegment(
        POLY_XLU_DISP++, 8,
        Gfx_TexScroll(play->state.gfxCtx, play2->gameplayFrames & 127, play2->gameplayFrames * -3 & 127, 32, 32));

    gSPSegment(POLY_XLU_DISP++, 9,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, -play2->gameplayFrames & 127, 32, 32, 1, 0,
                                play2->gameplayFrames & 127, 32, 32));

    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_bg_gjyo_bridge.c", 281);

    gSPDisplayList(POLY_XLU_DISP++, gRainbowBridgeDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_gjyo_bridge.c", 285);
}
