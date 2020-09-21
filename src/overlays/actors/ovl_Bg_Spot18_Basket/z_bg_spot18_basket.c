#include "z_bg_spot18_basket.h"

#define FLAGS 0x00000010

#define THIS ((BgSpot18Basket*)thisx)

void BgSpot18Basket_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot18Basket_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot18Basket_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot18Basket_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06002154;

const ActorInit Bg_Spot18_Basket_InitVars = {
    ACTOR_BG_SPOT18_BASKET,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_SPOT18_OBJ,
    sizeof(BgSpot18Basket),
    (ActorFunc)BgSpot18Basket_Init,
    (ActorFunc)BgSpot18Basket_Destroy,
    (ActorFunc)BgSpot18Basket_Update,
    (ActorFunc)BgSpot18Basket_Draw,
};

// D_808B8570
static ColliderJntSphItemInit sJntSphItemsInit[2] = {
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
        { 0, { { 0, 2040, 0 }, 54 }, 100 },
    },
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000008, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
        { 1, { { 0, 1400, 0 }, 13 }, 100 },
    },
};

// D_808B85B8
static ColliderJntSphInit sJntSphInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x09, 0x20, COLSHAPE_JNTSPH },
    2,
    sJntSphItemsInit,
};

s16 D_808B85C8[] = { 0x8000, 0x2AAA, 0xD555, 0x0000 };
s32 D_808B85D0 = 0;

// s32 D_808B85D4[] = { 0xC8500064, 0xB0F403E8, 0xB0F801F4, 0x30FC03E8 };
static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

s32 D_808B85E4[] = { 0xF0600320, 0x0FA00000, 0x00000000 };

void func_808B7710(BgSpot18Basket* this, GlobalContext* globalCtx) {
    Actor* actor;
    // ColliderJntSph *temp_a1 = &this->colliderJntSph;

    Collider_InitJntSph(globalCtx, &this->colliderJntSph);
    actor = &this->dyna.actor;
    Collider_SetJntSph(globalCtx, &this->colliderJntSph, actor, &sJntSphInit, &this->colliderJntSphItem);
    actor->colChkInfo.mass = 0xFF;

    // TODO: Needs to go
    if (actor) {}
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B7710.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B7770.s")

void BgSpot18Basket_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot18Basket* this = THIS;
    Actor *actor = &this->dyna.actor;
    s32 moveFlag = 0;

    DynaPolyInfo_SetActorMove(&this->dyna, 3);
    func_808B7710(this, globalCtx);
    DynaPolyInfo_Alloc(&D_06002154, &moveFlag);

    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, actor, moveFlag);

    Actor_ProcessInitChain(actor, sInitChain);
    ActorShape_Init(&actor->shape, 0.0f, ActorShadow_DrawFunc_Circle, 15.0f);
    actor->initPosRot.pos.y = actor->initPosRot.pos.y + 0.01f;
    actor->posRot.pos.y = actor->initPosRot.pos.y;

    if (Flags_GetSwitch(globalCtx, (actor->params >> 8) & 0x3F) != 0) {
        func_808B7BB0(thisx);
        return;
    }

    func_808B7AEC(thisx);
    Actor_SpawnAsChild(&globalCtx->actorCtx, actor, globalCtx, 0x1C3, actor->posRot.pos.x,
                       actor->posRot.pos.y, actor->posRot.pos.z, actor->shape.rot.x,
                       actor->shape.rot.y + 0x1555, actor->shape.rot.z, -1);

    if (actor->child == 0) {
        osSyncPrintf("\x1b[31m");
        osSyncPrintf("Ｅｒｒｏｒ : 変化壷蓋発生失敗(%s %d)\n", "../z_bg_spot18_basket.c", 0x15F);
        osSyncPrintf("\x1b[m");
        Actor_Kill(actor);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/BgSpot18Basket_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/BgSpot18Basket_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B7AEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B7AFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B7B58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B7B6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B7BB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B7BCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B7D38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B7D50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B7F74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B7FC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B818C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B81A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/BgSpot18Basket_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/BgSpot18Basket_Draw.s")
