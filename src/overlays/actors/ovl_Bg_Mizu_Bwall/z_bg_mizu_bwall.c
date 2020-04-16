#include "z_bg_mizu_bwall.h"

#define FLAGS 0x00000010

void BgMizuBwall_Init(BgMizuBwall* this, GlobalContext* globalCtx);
void BgMizuBwall_Destroy(BgMizuBwall* this, GlobalContext* globalCtx);
void BgMizuBwall_Update(BgMizuBwall* this, GlobalContext* globalCtx);
void BgMizuBwall_Draw(BgMizuBwall* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Mizu_Bwall_InitVars = {
    ACTOR_BG_MIZU_BWALL,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_MIZU_OBJECTS,
    sizeof(BgMizuBwall),
    (ActorFunc)BgMizuBwall_Init,
    (ActorFunc)BgMizuBwall_Destroy,
    (ActorFunc)BgMizuBwall_Update,
    (ActorFunc)BgMizuBwall_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Bwall/func_8089C480.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Bwall/BgMizuBwall_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Bwall/BgMizuBwall_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Bwall/func_8089CE04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Bwall/func_8089CF84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Bwall/func_8089D258.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Bwall/func_8089D350.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Bwall/func_8089D37C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Bwall/BgMizuBwall_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Bwall/BgMizuBwall_Draw.s")
