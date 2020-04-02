/*
 * File: z_bg_spot05_soko.c
 * Overlay: ovl_Bg_Spot05_Soko
 * Description: Sacred Forest Meadow Entities
 */

#include "z_bg_spot05_soko.h"

#define ROOM 0x00
#define FLAGS 0x00000000

static void BgSpot05Soko_Init(BgSpot05Soko* this, GlobalContext* globalCtx);
static void BgSpot05Soko_Destroy(BgSpot05Soko* this, GlobalContext* globalCtx);
static void BgSpot05Soko_Update(BgSpot05Soko* this, GlobalContext* globalCtx);
static void BgSpot05Soko_Draw(BgSpot05Soko* this, GlobalContext* globalCtx);
static void func_808AE5A8(BgSpot05Soko* this, GlobalContext* globalCtx);
static void func_808AE5B4(BgSpot05Soko* this, GlobalContext* globalCtx);
static void func_808AE630(BgSpot05Soko* this, GlobalContext* globalCtx);

extern Gfx* D_060012C0;
extern Gfx* D_06000918;

const ActorInit Bg_Spot05_Soko_InitVars = {
    ACTOR_BG_SPOT05_SOKO,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_SPOT05_OBJECTS,
    sizeof(BgSpot05Soko),
    (ActorFunc)BgSpot05Soko_Init,
    (ActorFunc)BgSpot05Soko_Destroy,
    (ActorFunc)BgSpot05Soko_Update,
    (ActorFunc)BgSpot05Soko_Draw,
};

static InitChainEntry initChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

static Gfx* dListTbl[] = {
    0x06000840,
    0x06001190,
    NULL,
};

static void BgSpot05Soko_Init(BgSpot05Soko* this, GlobalContext* globalCtx) {

    Actor* thisx = &this->dyna.actor;
    u32 sp24[2];
    sp24[0] = 0;
    Actor_ProcessInitChain(thisx, initChain);
    this->switchFlag = (thisx->params >> 8) & 0xFF;
    thisx->params &= 0xFF;
    DynaPolyInfo_SetActorMove(thisx, DPM_UNK);
    if (thisx->params == 0) {
        DynaPolyInfo_Alloc(&D_06000918, &sp24);
        if (LINK_IS_ADULT) {
            Actor_Kill(thisx);
        } else {
            this->actionFunc = &func_808AE5A8;
        }
    } else {
        DynaPolyInfo_Alloc(&D_060012C0, &sp24);
        if (Flags_GetSwitch(globalCtx, this->switchFlag) != 0) {
            Actor_Kill(thisx);
        } else {
            this->actionFunc = &func_808AE5B4;
            thisx->flags |= 0x10;
        }
    }
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, sp24[0]);
}

static void BgSpot05Soko_Destroy(BgSpot05Soko* this, GlobalContext* globalCtx) {
    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

static void func_808AE5A8(BgSpot05Soko* this, GlobalContext* globalCtx) {
}

static void func_808AE5B4(BgSpot05Soko* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;
    if (Flags_GetSwitch(globalCtx, this->switchFlag)) {
        Audio_PlaySoundAtPosition(globalCtx, &thisx->posRot.pos, 0x1E, NA_SE_EV_METALDOOR_CLOSE);
        Actor_SetHeight(thisx, 50.0f);
        func_80080480(globalCtx, thisx);
        this->actionFunc = &func_808AE630;
        thisx->speedXZ = 0.5f;
    }
}

static void func_808AE630(BgSpot05Soko* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;

    thisx->speedXZ *= 1.5f;
    if (Math_ApproxF(&thisx->posRot.pos.y, thisx->initPosRot.pos.y - 120.0f, thisx->speedXZ) != 0) {
        Actor_Kill(thisx);
    }
}

static void BgSpot05Soko_Update(BgSpot05Soko* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;
    this->actionFunc(thisx, globalCtx);
}

extern Gfx* D_808AE724[];
static void BgSpot05Soko_Draw(BgSpot05Soko* this, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, dListTbl[this->dyna.actor.params]);
}
