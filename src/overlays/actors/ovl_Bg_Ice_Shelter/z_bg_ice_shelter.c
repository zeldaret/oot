#include "z_bg_ice_shelter.h"

#define FLAGS 0x00000000

#define THIS ((BgIceShelter*)thisx)

void BgIceShelter_Init(Actor* thisx, GlobalContext* globalCtx);
void BgIceShelter_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgIceShelter_Update(Actor* thisx, GlobalContext* globalCtx);
void BgIceShelter_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_060006F0;
extern UNK_TYPE D_060012A0;
extern UNK_TYPE D_06001C1C;
extern UNK_TYPE D_06002640;
extern UNK_TYPE D_06002920;

/*
const ActorInit Bg_Ice_Shelter_InitVars = {
    ACTOR_BG_ICE_SHELTER,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_ICE_OBJECTS,
    sizeof(BgIceShelter),
    (ActorFunc)BgIceShelter_Init,
    (ActorFunc)BgIceShelter_Destroy,
    (ActorFunc)BgIceShelter_Update,
    (ActorFunc)BgIceShelter_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Shelter/func_80890740.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Shelter/func_80890874.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Shelter/func_808908FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Shelter/BgIceShelter_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Shelter/BgIceShelter_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Shelter/func_80890B8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Shelter/func_80890E00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Shelter/func_80891064.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Shelter/func_8089107C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Shelter/func_808911BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Shelter/func_808911D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Shelter/BgIceShelter_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Shelter/BgIceShelter_Draw.s")
