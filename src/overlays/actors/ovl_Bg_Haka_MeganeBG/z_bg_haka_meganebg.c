#include "z_bg_haka_meganebg.h"

#define ROOM  0x00
#define FLAGS 0x00000000

void BgHakaMeganeBG_Init(BgHakaMeganeBG* this, GlobalContext* globalCtx);
void BgHakaMeganeBG_Destroy(BgHakaMeganeBG* this, GlobalContext* globalCtx);
void BgHakaMeganeBG_Update(BgHakaMeganeBG* this, GlobalContext* globalCtx);
void BgHakaMeganeBG_Draw(BgHakaMeganeBG* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Haka_MeganeBG_InitVars =
{
    ACTOR_BG_HAKA_MEGANEBG,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_HAKA_OBJECTS,
    sizeof(BgHakaMeganeBG),
    (ActorFunc)BgHakaMeganeBG_Init,
    (ActorFunc)BgHakaMeganeBG_Destroy,
    (ActorFunc)BgHakaMeganeBG_Update,
    (ActorFunc)BgHakaMeganeBG_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_MeganeBG/BgHakaMeganeBG_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_MeganeBG/BgHakaMeganeBG_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_MeganeBG/func_8087DFF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_MeganeBG/func_8087E040.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_MeganeBG/func_8087E10C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_MeganeBG/func_8087E1E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_MeganeBG/func_8087E258.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_MeganeBG/func_8087E288.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_MeganeBG/func_8087E2D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_MeganeBG/func_8087E34C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_MeganeBG/BgHakaMeganeBG_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_MeganeBG/BgHakaMeganeBG_Draw.s")
