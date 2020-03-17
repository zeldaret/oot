#include "z_bg_toki_swd.h"

#define ROOM  0x00
#define FLAGS 0x00000010

void BgTokiSwd_Init(BgTokiSwd* this, GlobalContext* globalCtx);
void BgTokiSwd_Destroy(BgTokiSwd* this, GlobalContext* globalCtx);
void BgTokiSwd_Update(BgTokiSwd* this, GlobalContext* globalCtx);
void BgTokiSwd_Draw(BgTokiSwd* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Toki_Swd_InitVars =
{
    ACTOR_BG_TOKI_SWD,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_TOKI_OBJECTS,
    sizeof(BgTokiSwd),
    (ActorFunc)BgTokiSwd_Init,
    (ActorFunc)BgTokiSwd_Destroy,
    (ActorFunc)BgTokiSwd_Update,
    (ActorFunc)BgTokiSwd_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Swd/func_808BAE40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Swd/BgTokiSwd_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Swd/BgTokiSwd_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Swd/func_808BAF40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Swd/func_808BB0AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Swd/func_808BB128.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Swd/BgTokiSwd_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Swd/BgTokiSwd_Draw.s")
