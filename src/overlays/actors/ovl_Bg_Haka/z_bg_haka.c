#include "z_bg_haka.h"

#define ROOM 0x00
#define FLAGS 0x00000000

void BgHaka_Init(BgHaka* this, GlobalContext* globalCtx);
void BgHaka_Destroy(BgHaka* this, GlobalContext* globalCtx);
void BgHaka_Update(BgHaka* this, GlobalContext* globalCtx);
void BgHaka_Draw(BgHaka* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Haka_InitVars =
{
    ACTOR_BG_HAKA,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_HAKA,
    sizeof(BgHaka),
    (ActorFunc)BgHaka_Init,
    (ActorFunc)BgHaka_Destroy,
    (ActorFunc)BgHaka_Update,
    (ActorFunc)BgHaka_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka/BgHaka_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka/BgHaka_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka/func_8087B758.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka/func_8087B7E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka/func_8087B938.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka/func_8087BAAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka/func_8087BAE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka/BgHaka_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka/BgHaka_Draw.s")
