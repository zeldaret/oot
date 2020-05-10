/*
 * File: z_bg_spot03_taki.c
 * Overlay: ovl_Bg_Spot03_Taki
 * Description: Zora's River Waterfall
 */

#include "z_bg_spot03_taki.h"

#define FLAGS 0x00000030

#define THIS ((BgSpot03Taki*)thisx)

void BgSpot03Taki_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot03Taki_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot03Taki_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot03Taki_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Bg_Spot03_Taki_InitVars = {
    ACTOR_BG_SPOT03_TAKI,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_SPOT03_OBJECT,
    sizeof(BgSpot03Taki),
    (ActorFunc)BgSpot03Taki_Init,
    (ActorFunc)BgSpot03Taki_Destroy,
    (ActorFunc)BgSpot03Taki_Update,
    (ActorFunc)BgSpot03Taki_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot03_Taki/func_808ADAE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot03_Taki/BgSpot03Taki_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot03_Taki/BgSpot03Taki_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot03_Taki/func_808ADEF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot03_Taki/BgSpot03Taki_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot03_Taki/BgSpot03Taki_Draw.s")
