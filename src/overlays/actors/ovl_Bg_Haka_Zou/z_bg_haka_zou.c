/*
 * File: z_bg_haka_zou.c
 * Overlay: ovl_Bg_Haka_Zou
 * Description: Statue and Wall (Shadow Temple)
 */

#include "z_bg_haka_zou.h"

#define FLAGS 0x00000010

void BgHakaZou_Init(BgHakaZou* this, GlobalContext* globalCtx);
void BgHakaZou_Destroy(BgHakaZou* this, GlobalContext* globalCtx);
void BgHakaZou_Update(BgHakaZou* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Haka_Zou_InitVars = {
    ACTOR_BG_HAKA_ZOU,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(BgHakaZou),
    (ActorFunc)BgHakaZou_Init,
    (ActorFunc)BgHakaZou_Destroy,
    (ActorFunc)BgHakaZou_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Zou/BgHakaZou_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Zou/BgHakaZou_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Zou/func_808828F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Zou/func_80882A70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Zou/func_80882BDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Zou/func_80882CC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Zou/func_80882E54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Zou/func_80883000.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Zou/func_80883104.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Zou/func_80883144.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Zou/func_80883254.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Zou/func_80883328.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Zou/func_808834D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Zou/func_80883568.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Zou/BgHakaZou_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Zou/func_808835B8.s")
