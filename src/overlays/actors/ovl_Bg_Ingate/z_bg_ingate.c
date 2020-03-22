#include "z_bg_ingate.h"

#define ROOM 0x00
#define FLAGS 0x00000000

void BgIngate_Init(BgIngate* this, GlobalContext* globalCtx);
void BgIngate_Destroy(BgIngate* this, GlobalContext* globalCtx);
void BgIngate_Update(BgIngate* this, GlobalContext* globalCtx);
void BgIngate_Draw(BgIngate* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Ingate_InitVars =
{
    ACTOR_BG_INGATE,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_INGATE,
    sizeof(BgIngate),
    (ActorFunc)BgIngate_Init,
    (ActorFunc)BgIngate_Destroy,
    (ActorFunc)BgIngate_Update,
    (ActorFunc)BgIngate_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ingate/func_80892740.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ingate/BgIngate_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ingate/BgIngate_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ingate/func_80892890.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ingate/func_80892990.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ingate/BgIngate_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ingate/BgIngate_Draw.s")
