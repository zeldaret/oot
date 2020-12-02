/*
 * File: z_bg_haka_ship.c
 * Overlay: ovl_Bg_Haka_Ship
 * Description: Shadow Temple Ship
 */

#include "z_bg_haka_ship.h"

#define FLAGS 0x00000030

#define THIS ((BgHakaShip*)thisx)

void BgHakaShip_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHakaShip_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHakaShip_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHakaShip_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_8087F27C(BgHakaShip* this, GlobalContext* globalCtx);
void func_8087F2D8(BgHakaShip* this, GlobalContext* globalCtx);
void func_8087F364(BgHakaShip* this, GlobalContext* globalCtx);
void func_8087F400(BgHakaShip* this, GlobalContext* globalCtx);
void func_8087F5C8(BgHakaShip* this, GlobalContext* globalCtx);
void func_8087F624(BgHakaShip* this, GlobalContext* globalCtx);
void func_8087F6B4(BgHakaShip* this, GlobalContext* globalCtx);

extern UNK_TYPE D_06005A70;
extern UNK_TYPE D_0600D330;
extern UNK_TYPE D_0600E408;
extern UNK_TYPE D_0600E910;
extern UNK_TYPE D_0600ED7C;

/*
const ActorInit Bg_Haka_Ship_InitVars = {
    ACTOR_BG_HAKA_SHIP,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_HAKA_OBJECTS,
    sizeof(BgHakaShip),
    (ActorFunc)BgHakaShip_Init,
    (ActorFunc)BgHakaShip_Destroy,
    (ActorFunc)BgHakaShip_Update,
    (ActorFunc)BgHakaShip_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Ship/BgHakaShip_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Ship/BgHakaShip_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Ship/func_8087F27C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Ship/func_8087F2D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Ship/func_8087F364.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Ship/func_8087F400.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Ship/func_8087F5C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Ship/func_8087F624.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Ship/func_8087F6B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Ship/BgHakaShip_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Ship/BgHakaShip_Draw.s")
