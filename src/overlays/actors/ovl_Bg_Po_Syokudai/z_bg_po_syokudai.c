#include "z_bg_po_syokudai.h"

#define ROOM 0x00
#define FLAGS 0x00000000

void BgPoSyokudai_Init(BgPoSyokudai* this, GlobalContext* globalCtx);
void BgPoSyokudai_Destroy(BgPoSyokudai* this, GlobalContext* globalCtx);
void BgPoSyokudai_Update(BgPoSyokudai* this, GlobalContext* globalCtx);
void BgPoSyokudai_Draw(BgPoSyokudai* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Po_Syokudai_InitVars =
{
    ACTOR_BG_PO_SYOKUDAI,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_SYOKUDAI,
    sizeof(BgPoSyokudai),
    (ActorFunc)BgPoSyokudai_Init,
    (ActorFunc)BgPoSyokudai_Destroy,
    (ActorFunc)BgPoSyokudai_Update,
    (ActorFunc)BgPoSyokudai_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Syokudai/BgPoSyokudai_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Syokudai/BgPoSyokudai_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Syokudai/BgPoSyokudai_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Syokudai/BgPoSyokudai_Draw.s")
