#include "z_bg_haka_huta.h"

#define ROOM 0x00
#define FLAGS 0x00000010

void BgHakaHuta_Init(BgHakaHuta* this, GlobalContext* globalCtx);
void BgHakaHuta_Destroy(BgHakaHuta* this, GlobalContext* globalCtx);
void BgHakaHuta_Update(BgHakaHuta* this, GlobalContext* globalCtx);
void BgHakaHuta_Draw(BgHakaHuta* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Haka_Huta_InitVars =
{
    ACTOR_BG_HAKA_HUTA,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_HAKACH_OBJECTS,
    sizeof(BgHakaHuta),
    (ActorFunc)BgHakaHuta_Init,
    (ActorFunc)BgHakaHuta_Destroy,
    (ActorFunc)BgHakaHuta_Update,
    (ActorFunc)BgHakaHuta_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Huta/BgHakaHuta_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Huta/BgHakaHuta_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Huta/func_8087D0AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Huta/func_8087D268.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Huta/func_8087D2F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Huta/func_8087D5B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Huta/func_8087D66C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Huta/func_8087D720.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Huta/func_8087D8C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Huta/BgHakaHuta_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Huta/BgHakaHuta_Draw.s")
