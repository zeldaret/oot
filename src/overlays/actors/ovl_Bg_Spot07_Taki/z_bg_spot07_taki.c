/*
 * File: z_bg_spot07_taki.c
 * Overlay: ovl_Bg_Spot07_Taki
 * Description: Zora's Domain Waterfall and Ice
 */

#include "z_bg_spot07_taki.h"

#define FLAGS 0x00000030

void BgSpot07Taki_Init(BgSpot07Taki* this, GlobalContext* globalCtx);
void BgSpot07Taki_Destroy(BgSpot07Taki* this, GlobalContext* globalCtx);
void BgSpot07Taki_Update(BgSpot07Taki* this, GlobalContext* globalCtx);
void BgSpot07Taki_Draw(BgSpot07Taki* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Spot07_Taki_InitVars = {
    ACTOR_BG_SPOT07_TAKI,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_SPOT07_OBJECT,
    sizeof(BgSpot07Taki),
    (ActorFunc)BgSpot07Taki_Init,
    (ActorFunc)BgSpot07Taki_Destroy,
    (ActorFunc)BgSpot07Taki_Update,
    (ActorFunc)BgSpot07Taki_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot07_Taki/BgSpot07Taki_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot07_Taki/BgSpot07Taki_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot07_Taki/func_808AFD08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot07_Taki/BgSpot07Taki_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot07_Taki/BgSpot07Taki_Draw.s")
