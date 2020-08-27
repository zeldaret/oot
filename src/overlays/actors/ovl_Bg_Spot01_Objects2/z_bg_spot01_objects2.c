/*
 * File: z_bg_spot01_objects2.c
 * Overlay: ovl_Bg_Spot01_Objects2
 * Description: Kakariko Village Set Pieces
 */

#include "z_bg_spot01_objects2.h"

#define FLAGS 0x00000010

#define THIS ((BgSpot01Objects2*)thisx)

void BgSpot01Objects2_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot01Objects2_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot01Objects2_Update(Actor* thisx, GlobalContext* globalCtx);

// func_808AC22C
void func_808AC2BC(BgSpot01Objects2* this, GlobalContext* globalCtx);
void func_808AC474(BgSpot01Objects2* this, GlobalContext* globalCtx);
void func_808AC4A4(BgSpot01Objects2* this, GlobalContext* globalCtx);

const ActorInit Bg_Spot01_Objects2_InitVars = {
    ACTOR_BG_SPOT01_OBJECTS2,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(BgSpot01Objects2),
    (ActorFunc)BgSpot01Objects2_Init,
    (ActorFunc)BgSpot01Objects2_Destroy,
    (ActorFunc)BgSpot01Objects2_Update,
    NULL,
};

s32 D_808AC500[] ={0xB0F43200, 0xB0F807D0, 0xB0FC05DC, 0x48500064};
s32 D_808AC510[] ={0x06001EB0, 0x06002780, 0x06003078, 0x06001228, 0x06001528, 0x00000000, 0x00000000, 0x00000000};


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Objects2/BgSpot01Objects2_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Objects2/BgSpot01Objects2_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Objects2/func_808AC22C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Objects2/func_808AC2BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Objects2/func_808AC474.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Objects2/BgSpot01Objects2_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Objects2/func_808AC4A4.s")
