#include "z_bg_toki_hikari.h"

#define ROOM 0x00
#define FLAGS 0x00000020

void BgTokiHikari_Init(BgTokiHikari* this, GlobalContext* globalCtx);
void BgTokiHikari_Destroy(BgTokiHikari* this, GlobalContext* globalCtx);
void BgTokiHikari_Update(BgTokiHikari* this, GlobalContext* globalCtx);
void BgTokiHikari_Draw(BgTokiHikari* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Toki_Hikari_InitVars =
{
    ACTOR_BG_TOKI_HIKARI,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_TOKI_OBJECTS,
    sizeof(BgTokiHikari),
    (ActorFunc)BgTokiHikari_Init,
    (ActorFunc)BgTokiHikari_Destroy,
    (ActorFunc)BgTokiHikari_Update,
    (ActorFunc)BgTokiHikari_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/BgTokiHikari_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/BgTokiHikari_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/func_808B9F98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/BgTokiHikari_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/BgTokiHikari_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/func_808BA018.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/func_808BA204.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/func_808BA22C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/func_808BA274.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Hikari/func_808BA2CC.s")
