#include "z_bg_zg.h"

#define ROOM 0x00
#define FLAGS 0x00000010

void BgZg_Init(BgZg* this, GlobalContext* globalCtx);
void BgZg_Destroy(BgZg* this, GlobalContext* globalCtx);
void BgZg_Update(BgZg* this, GlobalContext* globalCtx);
void BgZg_Draw(BgZg* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Zg_InitVars =
{
    ACTOR_BG_ZG,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_ZG,
    sizeof(BgZg),
    (ActorFunc)BgZg_Init,
    (ActorFunc)BgZg_Destroy,
    (ActorFunc)BgZg_Update,
    (ActorFunc)BgZg_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Zg/BgZg_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Zg/func_808C0C50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Zg/func_808C0C98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Zg/func_808C0CC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Zg/func_808C0CD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Zg/func_808C0D08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Zg/BgZg_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Zg/BgZg_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Zg/func_808C0EEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Zg/BgZg_Draw.s")
