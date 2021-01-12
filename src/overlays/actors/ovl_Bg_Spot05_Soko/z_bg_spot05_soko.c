/*
 * File: z_bg_spot05_soko.c
 * Overlay: ovl_Bg_Spot05_Soko
 * Description: Sacred Forest Meadow Entities
 */

#include "z_bg_spot05_soko.h"

#define FLAGS 0x00000000

#define THIS ((BgSpot05Soko*)thisx)

void BgSpot05Soko_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot05Soko_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot05Soko_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot05Soko_Draw(Actor* thisx, GlobalContext* globalCtx);
void func_808AE5A8(BgSpot05Soko* this, GlobalContext* globalCtx);
void func_808AE5B4(BgSpot05Soko* this, GlobalContext* globalCtx);
void func_808AE630(BgSpot05Soko* this, GlobalContext* globalCtx);

extern CollisionHeader D_06000918;
extern CollisionHeader D_060012C0;

const ActorInit Bg_Spot05_Soko_InitVars = {
    ACTOR_BG_SPOT05_SOKO,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_SPOT05_OBJECTS,
    sizeof(BgSpot05Soko),
    (ActorFunc)BgSpot05Soko_Init,
    (ActorFunc)BgSpot05Soko_Destroy,
    (ActorFunc)BgSpot05Soko_Update,
    (ActorFunc)BgSpot05Soko_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

static Gfx* sDLists[] = {
    0x06000840,
    0x06001190,
};

void BgSpot05Soko_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot05Soko* this = THIS;
    u32 pad1;
    CollisionHeader* colHeader;
    u32 pad2;

    colHeader = NULL;
    Actor_ProcessInitChain(thisx, sInitChain);
    this->switchFlag = (thisx->params >> 8) & 0xFF;
    thisx->params &= 0xFF;
    DynaPolyActor_Init(thisx, DPM_UNK);
    if (thisx->params == 0) {
        CollisionHeader_GetVirtual(&D_06000918, &colHeader);
        if (LINK_IS_ADULT) {
            Actor_Kill(thisx);
        } else {
            this->actionFunc = func_808AE5A8;
        }
    } else {
        CollisionHeader_GetVirtual(&D_060012C0, &colHeader);
        if (Flags_GetSwitch(globalCtx, this->switchFlag) != 0) {
            Actor_Kill(thisx);
        } else {
            this->actionFunc = func_808AE5B4;
            thisx->flags |= 0x10;
        }
    }
    this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, thisx, colHeader);
}

void BgSpot05Soko_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot05Soko* this = THIS;

    DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
}

void func_808AE5A8(BgSpot05Soko* this, GlobalContext* globalCtx) {
}

void func_808AE5B4(BgSpot05Soko* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;

    if (Flags_GetSwitch(globalCtx, this->switchFlag)) {
        Audio_PlaySoundAtPosition(globalCtx, &thisx->posRot.pos, 30, NA_SE_EV_METALDOOR_CLOSE);
        Actor_SetHeight(thisx, 50.0f);
        func_80080480(globalCtx, &this->dyna.actor);
        this->actionFunc = func_808AE630;
        thisx->speedXZ = 0.5f;
    }
}

void func_808AE630(BgSpot05Soko* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;

    thisx->speedXZ *= 1.5f;
    if (Math_StepToF(&thisx->posRot.pos.y, thisx->initPosRot.pos.y - 120.0f, thisx->speedXZ) != 0) {
        Actor_Kill(thisx);
    }
}

void BgSpot05Soko_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot05Soko* this = THIS;

    this->actionFunc(this, globalCtx);
}

void BgSpot05Soko_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, sDLists[thisx->params]);
}
