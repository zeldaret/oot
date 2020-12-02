/*
 * File: z_bg_spot07_taki.c
 * Overlay: ovl_Bg_Spot07_Taki
 * Description: Zora's Domain Waterfall and Ice
 */

#include "z_bg_spot07_taki.h"

#define FLAGS 0x00000030

#define THIS ((BgSpot07Taki*)thisx)

void BgSpot07Taki_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot07Taki_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot07Taki_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot07Taki_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06000460;
extern UNK_TYPE D_06000BE0;
extern UNK_TYPE D_06001CF0;
extern UNK_TYPE D_06001F68;
extern UNK_TYPE D_06002590;
extern UNK_TYPE D_06003210;
extern UNK_TYPE D_060032D8;
extern UNK_TYPE D_060038FC;

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
