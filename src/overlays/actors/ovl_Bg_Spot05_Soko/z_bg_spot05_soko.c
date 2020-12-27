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

extern UNK_TYPE D_060012C0;
extern UNK_TYPE D_06000918;

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
    u32 sp24;
    u32 pad2;

    sp24 = 0;
    Actor_ProcessInitChain(thisx, sInitChain);
    this->switchFlag = (thisx->params >> 8) & 0xFF;
    thisx->params &= 0xFF;
    DynaPolyInfo_SetActorMove(thisx, DPM_UNK);
    if (thisx->params == 0) {
        DynaPolyInfo_Alloc(&D_06000918, &sp24);
        if (LINK_IS_ADULT) {
            Actor_Kill(thisx);
        } else {
            this->actionFunc = func_808AE5A8;
        }
    } else {
        DynaPolyInfo_Alloc(&D_060012C0, &sp24);
        if (Flags_GetSwitch(globalCtx, this->switchFlag) != 0) {
            Actor_Kill(thisx);
        } else {
            this->actionFunc = func_808AE5B4;
            thisx->flags |= 0x10;
        }
    }
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, sp24);
}

void BgSpot05Soko_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot05Soko* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
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
