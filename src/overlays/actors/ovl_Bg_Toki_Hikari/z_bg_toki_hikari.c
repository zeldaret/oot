#include "z_bg_toki_hikari.h"

#define FLAGS 0x00000020

#define THIS ((BgTokiHikari*)thisx)

void BgTokiHikari_Init(Actor* thisx, GlobalContext* globalCtx);
void BgTokiHikari_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgTokiHikari_Update(Actor* thisx, GlobalContext* globalCtx);
void BgTokiHikari_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06000880;
extern UNK_TYPE D_060009C0;
extern UNK_TYPE D_06000A10;
extern UNK_TYPE D_06007E20;
extern UNK_TYPE D_06007EE0;
extern UNK_TYPE D_06008190;

/*
const ActorInit Bg_Toki_Hikari_InitVars = {
    ACTOR_BG_TOKI_HIKARI,
    ACTORTYPE_BG,
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
