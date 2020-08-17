/*
 * File: z_bg_jya_block.c
 * Overlay: ovl_Bg_Jya_Block
 * Description: Silver Block (Child Link)
 */

#include "z_bg_jya_block.h"

#define FLAGS 0x00000000

#define THIS ((BgJyaBlock*)thisx)

void BgJyaBlock_Init(Actor* thisx, GlobalContext* globalCtx);
void BgJyaBlock_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgJyaBlock_Update(Actor* thisx, GlobalContext* globalCtx);
void BgJyaBlock_Draw(Actor* thisx, GlobalContext* globalCtx);

const ActorInit Bg_Jya_Block_InitVars = {
    ACTOR_BG_JYA_BLOCK,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_DANGEON_KEEP,
    sizeof(BgJyaBlock),
    (ActorFunc)BgJyaBlock_Init,
    (ActorFunc)BgJyaBlock_Destroy,
    (ActorFunc)BgJyaBlock_Update,
    (ActorFunc)BgJyaBlock_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 333, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1800, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1500, ICHAIN_STOP),
};

extern UNK_TYPE D_05004350;
extern Gfx D_05004CD0[];
extern UNK_TYPE D_05004E98;

void BgJyaBlock_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BgJyaBlock* this = THIS;
    s32 localC = 0;

    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    DynaPolyInfo_Alloc(&D_05004E98, &localC);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, localC);
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);

    if ((LINK_AGE_IN_YEARS != YEARS_CHILD) || !Flags_GetSwitch(globalCtx, thisx->params & 0x3F)) {
        Actor_Kill(&this->dyna.actor);
    }
}

void BgJyaBlock_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaBlock* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void BgJyaBlock_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaBlock* this = THIS;
    Player* player = PLAYER;

    player->stateFlags2 &= ~0x10;
    this->dyna.unk_150 = 0.0f;
}

void BgJyaBlock_Draw(Actor* thisx, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_jya_block.c", 145);
    func_80093D18(globalCtx->state.gfxCtx);

    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(&D_05004350));
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_jya_block.c", 153),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gDPSetEnvColor(gfxCtx->polyOpa.p++, 232, 210, 176, 255);
    gSPDisplayList(gfxCtx->polyOpa.p++, D_05004CD0);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_jya_block.c", 158);
}
