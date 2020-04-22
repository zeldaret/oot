#include "z_bg_heavy_block.h"

#define FLAGS 0x00000000

void BgHeavyBlock_Init(BgHeavyBlock* this, GlobalContext* globalCtx);
void BgHeavyBlock_Destroy(BgHeavyBlock* this, GlobalContext* globalCtx);
void BgHeavyBlock_Update(BgHeavyBlock* this, GlobalContext* globalCtx);
void BgHeavyBlock_Draw(BgHeavyBlock* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Heavy_Block_InitVars = {
    ACTOR_BG_HEAVY_BLOCK,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_HEAVY_OBJECT,
    sizeof(BgHeavyBlock),
    (ActorFunc)BgHeavyBlock_Init,
    (ActorFunc)BgHeavyBlock_Destroy,
    (ActorFunc)BgHeavyBlock_Update,
    (ActorFunc)BgHeavyBlock_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Heavy_Block/func_80883790.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Heavy_Block/func_80883820.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Heavy_Block/func_80883998.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Heavy_Block/BgHeavyBlock_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Heavy_Block/BgHeavyBlock_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Heavy_Block/func_80883C90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Heavy_Block/func_80883E54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Heavy_Block/func_808841B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Heavy_Block/func_808843B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Heavy_Block/func_808844D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Heavy_Block/func_80884658.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Heavy_Block/func_8088496C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Heavy_Block/func_80884978.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Heavy_Block/BgHeavyBlock_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Heavy_Block/BgHeavyBlock_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Heavy_Block/func_80884DB4.s")
