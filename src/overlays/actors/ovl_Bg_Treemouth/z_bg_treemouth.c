#include "z_bg_treemouth.h"

#define FLAGS 0x00000030

void BgTreemouth_Init(BgTreemouth* this, GlobalContext* globalCtx);
void BgTreemouth_Destroy(BgTreemouth* this, GlobalContext* globalCtx);
void BgTreemouth_Update(BgTreemouth* this, GlobalContext* globalCtx);
void BgTreemouth_Draw(BgTreemouth* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Treemouth_InitVars = {
    ACTOR_BG_TREEMOUTH,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_SPOT04_OBJECTS,
    sizeof(BgTreemouth),
    (ActorFunc)BgTreemouth_Init,
    (ActorFunc)BgTreemouth_Destroy,
    (ActorFunc)BgTreemouth_Update,
    (ActorFunc)BgTreemouth_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Treemouth/func_808BC500.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Treemouth/BgTreemouth_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Treemouth/BgTreemouth_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Treemouth/func_808BC65C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Treemouth/func_808BC6F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Treemouth/func_808BC80C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Treemouth/func_808BC864.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Treemouth/func_808BC8B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Treemouth/func_808BC9EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Treemouth/func_808BCAF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Treemouth/func_808BCB8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Treemouth/BgTreemouth_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Treemouth/BgTreemouth_Draw.s")
