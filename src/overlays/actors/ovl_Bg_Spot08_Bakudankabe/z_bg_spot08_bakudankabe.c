/*
 * File: z_bg_spot08_bakudankabe
 * Overlay: ovl_Bg_Spot08_Bakudankabe
 * Description: Destructible Wall (Zora's Fountain)
 */

#include "z_bg_spot08_bakudankabe.h"

#define FLAGS 0x00400000

#define THIS ((BgSpot08Bakudankabe*)thisx)

void BgSpot08Bakudankabe_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot08Bakudankabe_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot08Bakudankabe_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot08Bakudankabe_Draw(Actor* thisx, GlobalContext* globalCtx);
void func_808B02D0(BgSpot08Bakudankabe* this, GlobalContext* globalCtx);

const ActorInit Bg_Spot08_Bakudankabe_InitVars = {
    ACTOR_BG_SPOT08_BAKUDANKABE,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_SPOT08_OBJ,
    sizeof(BgSpot08Bakudankabe),
    (ActorFunc)BgSpot08Bakudankabe_Init,
    (ActorFunc)BgSpot08Bakudankabe_Destroy,
    (ActorFunc)BgSpot08Bakudankabe_Update,
    (ActorFunc)BgSpot08Bakudankabe_Draw,
};

UNK_PTR D_060039D4;
s32 D_808B0830[] = {0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000000, 0x00010000, 0x00000000, 0x00320032, 0x00460064, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000000, 0x00010000, 0x0000FF9C, 0x00320032, 0x00460064, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000000, 0x00010000, 0x00000064, 0x00320032, 0x00460064};
// s32 D_808B089C[] = {0x0A000900, 0x20000000, 0x00000003};
static ColliderJntSphInit D_808B089C =
{
    { COLTYPE_UNK10, 0x00, 0x09, 0x00, 0x20, COLSHAPE_JNTSPH },
    3, D_808B0830,
};

s32 D_808B08AC[] = {0x00000000, 0x42E94CCD, 0x42480000, 0x42E60000, 0x42BE0000, 0x41200000, 0xC2E60000, 0x42BE0000, 0x41200000};
// s32 D_808B08D0[] = {0xC0500001, 0xB0F40C80, 0xB0F80320, 0x30FC03E8};
static InitChainEntry D_808B08D0[] = {
    ICHAIN_VEC3F(prev, 0, ICHAIN_STOP),
};

void func_808B02D0(BgSpot08Bakudankabe *this, GlobalContext *globalCtx) {
    s32 pad;
    
    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->dyna.actor, &D_808B089C, this->colliderItems);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Bakudankabe/func_808B0324.s")

void BgSpot08Bakudankabe_Init(Actor *thisx, GlobalContext *globalCtx) {
    BgSpot08Bakudankabe *this = THIS;
    s32 pad;
    s32 sp24 = 0;

    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    if (Flags_GetSwitch(globalCtx, (this->dyna.actor.params & 0x3F))) {
        Actor_Kill(&this->dyna.actor);
        return;
    }
    func_808B02D0(this, globalCtx);
    DynaPolyInfo_Alloc(D_060039D4, &sp24);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, sp24);
    Actor_ProcessInitChain(&this->dyna.actor, D_808B08D0);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Bakudankabe/BgSpot08Bakudankabe_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Bakudankabe/BgSpot08Bakudankabe_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Bakudankabe/BgSpot08Bakudankabe_Draw.s")
