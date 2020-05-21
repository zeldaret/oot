#include "z_bg_sst_floor.h"

#define FLAGS 0x00000030

#define THIS ((BgSstFloor*)thisx)

void BgSstFloor_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSstFloor_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSstFloor_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSstFloor_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Bg_Sst_Floor_InitVars = {
    ACTOR_BG_SST_FLOOR,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_SST,
    sizeof(BgSstFloor),
    (ActorFunc)BgSstFloor_Init,
    (ActorFunc)BgSstFloor_Destroy,
    (ActorFunc)BgSstFloor_Update,
    (ActorFunc)BgSstFloor_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Sst_Floor/BgSstFloor_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Sst_Floor/BgSstFloor_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Sst_Floor/BgSstFloor_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Sst_Floor/BgSstFloor_Draw.s")
