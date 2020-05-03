/*
 * File: z_bg_gjyo_bridge.c
 * Overlay: ovl_Bg_Gjyo_Bridge
 * Description: Rainbow Bridge outside Ganon's Castle
 */

#include "z_bg_gjyo_bridge.h"

#define FLAGS 0x00000000

void BgGjyoBridge_Init(BgGjyoBridge* this, GlobalContext* globalCtx);
void BgGjyoBridge_Destroy(BgGjyoBridge* this, GlobalContext* globalCtx);
void BgGjyoBridge_Update(BgGjyoBridge* this, GlobalContext* globalCtx);
void BgGjyoBridge_Draw(BgGjyoBridge* this, GlobalContext* globalCtx);
void func_808787A4(BgGjyoBridge* this, GlobalContext* globalCtx);
void BgGjyoBridge_TriggerCutscene(BgGjyoBridge* this, GlobalContext* globalCtx);
void BgGjyoBridge_SpawnBridge(BgGjyoBridge* this, GlobalContext* globalCtx);

const ActorInit Bg_Gjyo_Bridge_InitVars = {
    ACTOR_BG_GJYO_BRIDGE,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GJYO_OBJECTS,
    sizeof(BgGjyoBridge),
    (ActorFunc)BgGjyoBridge_Init,
    (ActorFunc)BgGjyoBridge_Destroy,
    (ActorFunc)BgGjyoBridge_Update,
    (ActorFunc)BgGjyoBridge_Draw,
};

static InitChainEntry initChain[] = {
    ICHAIN_F32(unk_F8, 800, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

extern UNK_TYPE D_06000600;
extern UNK_TYPE D_06000DB8;
extern UNK_TYPE D_02002640;

void BgGjyoBridge_Init(BgGjyoBridge* this, GlobalContext* globalCtx) {
    s32 pad;
    DynaCollisionContext* dynaCollisionContext;
    s32 local_c;

    local_c = 0;

    Actor_ProcessInitChain(&this->dyna, &initChain);
    DynaPolyInfo_SetActorMove(this, 0);
    DynaPolyInfo_Alloc(&D_06000DB8, &local_c);

    dynaCollisionContext = &globalCtx->colCtx.dyna;

    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, dynaCollisionContext, this, local_c);

    if (gSaveContext.eventChkInf[4] & 0x2000) {
        this->actionFunc = func_808787A4;
    } else {
        this->dyna.actor.draw = NULL;
        func_8003EBF8(globalCtx, dynaCollisionContext, this->dyna.dynaPolyId);
        this->actionFunc = BgGjyoBridge_TriggerCutscene;
    }
}

void BgGjyoBridge_Destroy(BgGjyoBridge* this, GlobalContext* globalCtx) {
    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void func_808787A4(BgGjyoBridge* this, GlobalContext* globalCtx) {
}

void BgGjyoBridge_TriggerCutscene(BgGjyoBridge* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (CHECK_QUEST_ITEM(QUEST_MEDALLION_SPIRIT) && CHECK_QUEST_ITEM(QUEST_MEDALLION_SHADOW) &&
        (INV_CONTENT(ITEM_ARROW_LIGHT) == ITEM_ARROW_LIGHT) && (player->actor.posRot.pos.x > -70.0f) &&
        (player->actor.posRot.pos.x < 300.0f) && (player->actor.posRot.pos.y > 1340.0f) &&
        (player->actor.posRot.pos.z > 1340.0f) && (player->actor.posRot.pos.z < 1662.0f) &&
        !Gameplay_InCsMode(globalCtx)) {
        globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(&D_02002640);
        gSaveContext.cutsceneTrigger = 1;
        this->actionFunc = BgGjyoBridge_SpawnBridge;
    }
}

void BgGjyoBridge_SpawnBridge(BgGjyoBridge* this, GlobalContext* globalCtx) {
    if ((globalCtx->csCtx.state != 0) && (globalCtx->csCtx.actorActions[2] != NULL) &&
        (globalCtx->csCtx.actorActions[2]->action == 2)) {
        this->dyna.actor.draw = &BgGjyoBridge_Draw;
        func_8003EC50(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
        gSaveContext.eventChkInf[4] |= 0x2000;
    }
}

void BgGjyoBridge_Update(BgGjyoBridge* this, GlobalContext* globalCtx) {
    this->actionFunc(this, globalCtx);
}

void BgGjyoBridge_Draw(BgGjyoBridge* this, GlobalContext* globalCtx) {
    s32 pad;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    gfxCtx = globalCtx->state.gfxCtx;

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_gjyo_bridge.c", 260);
    func_80093D84(globalCtx->state.gfxCtx);

    gSPSegment(gfxCtx->polyXlu.p++, 8,
               Gfx_TexScroll(globalCtx->state.gfxCtx, globalCtx->gameplayFrames & 127,
                             globalCtx->gameplayFrames * -3 & 127, 32, 32));

    gSPSegment(gfxCtx->polyXlu.p++, 9,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, -globalCtx->gameplayFrames & 127, 32, 32, 1, 0,
                                globalCtx->gameplayFrames & 127, 32, 32));

    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_gjyo_bridge.c", 281),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPDisplayList(gfxCtx->polyXlu.p++, &D_06000600);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_gjyo_bridge.c", 285);
}
