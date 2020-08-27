/*
 * File: z_bg_spot11_bakudankabe.c
 * Overlay: ovl_Bg_Spot11_Bakudankabe
 * Description: Destructible Wall (Desert Colossus)
 */

#include "z_bg_spot11_bakudankabe.h"

#define FLAGS 0x00000030

#define THIS ((BgSpot11Bakudankabe*)thisx)

void BgSpot11Bakudankabe_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot11Bakudankabe_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot11Bakudankabe_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot11Bakudankabe_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808B2180(BgSpot11Bakudankabe* this, GlobalContext* globalCtx);

const ActorInit Bg_Spot11_Bakudankabe_InitVars = {
    ACTOR_BG_SPOT11_BAKUDANKABE,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_SPOT11_OBJ,
    sizeof(BgSpot11Bakudankabe),
    (ActorFunc)BgSpot11Bakudankabe_Init,
    (ActorFunc)BgSpot11Bakudankabe_Destroy,
    (ActorFunc)BgSpot11Bakudankabe_Update,
    (ActorFunc)BgSpot11Bakudankabe_Draw,
};

s32 D_808B2700[] = {0x0A000900, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000000, 0x00010000, 0x00280050, 0x000008D3, 0x006CF9D4};
s32 D_808B272C[] = {0x450D3000, 0x42D80000, 0xC4C1C000};
s32 D_808B2738[] = {0x450D3000, 0x42D80000, 0xC4C1C000, 0x00000000, 0x00000000, 0x00000000};

extern UNK_TYPE D_06001A58;

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot11_Bakudankabe/func_808B2180.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot11_Bakudankabe/func_808B2218.s")

void BgSpot11Bakudankabe_Init(Actor *thisx, GlobalContext *globalCtx) {
    BgSpot11Bakudankabe *this = THIS;
    s32 pad;
    s32 sp24;

    sp24 = 0;
    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    if (Flags_GetSwitch(globalCtx, (this->dyna.actor.params & 0x3F))) {
        Actor_Kill(&this->dyna.actor);
        return;
    }
    func_808B2180(this, globalCtx);
    DynaPolyInfo_Alloc(&D_06001A58, &sp24);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, (Actor *) this, sp24);
    Actor_SetScale(&this->dyna.actor, 1.0f);
    osSyncPrintf("(spot11 爆弾壁)(arg_data 0x%04x)\n", this->dyna.actor.params);
}


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot11_Bakudankabe/BgSpot11Bakudankabe_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot11_Bakudankabe/BgSpot11Bakudankabe_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot11_Bakudankabe/BgSpot11Bakudankabe_Draw.s")
