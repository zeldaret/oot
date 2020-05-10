#include "z_bg_spot00_hanebasi.h"

#define FLAGS 0x00000010

#define THIS ((BgSpot00Hanebasi*)thisx)

void BgSpot00Hanebasi_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot00Hanebasi_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot00Hanebasi_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot00Hanebasi_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Bg_Spot00_Hanebasi_InitVars = {
    ACTOR_BG_SPOT00_HANEBASI,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_SPOT00_OBJECTS,
    sizeof(BgSpot00Hanebasi),
    (ActorFunc)BgSpot00Hanebasi_Init,
    (ActorFunc)BgSpot00Hanebasi_Destroy,
    (ActorFunc)BgSpot00Hanebasi_Update,
    (ActorFunc)BgSpot00Hanebasi_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot00_Hanebasi/BgSpot00Hanebasi_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot00_Hanebasi/BgSpot00Hanebasi_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot00_Hanebasi/func_808A9BE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot00_Hanebasi/func_808A9D18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot00_Hanebasi/func_808A9D24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot00_Hanebasi/func_808A9E58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot00_Hanebasi/BgSpot00Hanebasi_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot00_Hanebasi/func_808AA2B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot00_Hanebasi/BgSpot00Hanebasi_Draw.s")
