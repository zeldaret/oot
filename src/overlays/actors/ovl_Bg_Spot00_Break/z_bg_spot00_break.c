/*
 * File: z_bg_spot00_break.c
 * Overlay: ovl_Bg_Spot00_Break
 * Description: Broken drawbridge in Hyrule Field.
 */

#include "z_bg_spot00_break.h"
#include "objects/object_spot00_break/object_spot00_break.h"

#define FLAGS 0x00000000

#define THIS ((BgSpot00Break*)thisx)

void BgSpot00Break_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot00Break_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot00Break_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot00Break_Draw(Actor* thisx, GlobalContext* globalCtx);

const ActorInit Bg_Spot00_Break_InitVars = {
    ACTOR_BG_SPOT00_BREAK,
    ACTORCAT_PROP,
    FLAGS,
    OBJECT_SPOT00_BREAK,
    sizeof(BgSpot00Break),
    (ActorFunc)BgSpot00Break_Init,
    (ActorFunc)BgSpot00Break_Destroy,
    (ActorFunc)BgSpot00Break_Update,
    (ActorFunc)BgSpot00Break_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(uncullZoneScale, 1200, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1200, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 2000, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_STOP),
};

void BgSpot00Break_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot00Break* this = THIS;
    s32 pad;
    CollisionHeader* colHeader = NULL;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    DynaPolyActor_Init(&this->dyna, DPM_UNK);

    if (this->dyna.actor.params == 1) {
        CollisionHeader_GetVirtual(&gBarbedWireFenceCol, &colHeader);
    } else {
        CollisionHeader_GetVirtual(&gBrokenDrawbridgeCol, &colHeader);
    }

    this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, colHeader);

    if (LINK_IS_CHILD) {
        Actor_Kill(&this->dyna.actor);
    }
}

void BgSpot00Break_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot00Break* this = THIS;

    DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
}

void BgSpot00Break_Update(Actor* thisx, GlobalContext* globalCtx) {
}

void BgSpot00Break_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot00Break* this = THIS;

    if (this->dyna.actor.params == 1) {
        Gfx_DrawDListOpa(globalCtx, gBarbedWireFenceDL);
    } else {
        Gfx_DrawDListOpa(globalCtx, gBrokenDrawbridgeDL);
    }
}
