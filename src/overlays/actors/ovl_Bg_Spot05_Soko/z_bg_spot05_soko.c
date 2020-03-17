#include "z_bg_spot05_soko.h"

#define ROOM  0x00
#define FLAGS 0x00000000

void BgSpot05Soko_Init(BgSpot05Soko* this, GlobalContext* globalCtx);
void BgSpot05Soko_Destroy(BgSpot05Soko* this, GlobalContext* globalCtx);
void BgSpot05Soko_Update(BgSpot05Soko* this, GlobalContext* globalCtx);
void BgSpot05Soko_Draw(BgSpot05Soko* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Spot05_Soko_InitVars =
{
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
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot05_Soko/BgSpot05Soko_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot05_Soko/BgSpot05Soko_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot05_Soko/func_808AE5A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot05_Soko/func_808AE5B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot05_Soko/func_808AE630.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot05_Soko/BgSpot05Soko_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot05_Soko/BgSpot05Soko_Draw.s")



