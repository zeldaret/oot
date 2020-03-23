#include "z_bg_sst_floor.h"

#define ROOM 0x00
#define FLAGS 0x00000030

void BgSstFloor_Init(BgSstFloor* this, GlobalContext* globalCtx);
void BgSstFloor_Destroy(BgSstFloor* this, GlobalContext* globalCtx);
void BgSstFloor_Update(BgSstFloor* this, GlobalContext* globalCtx);
void BgSstFloor_Draw(BgSstFloor* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Sst_Floor_InitVars =
{
    ACTOR_BG_SST_FLOOR,
    ACTORTYPE_BG,
    ROOM,
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
