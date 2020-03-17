#include "z_bg_hidan_kowarerukabe.h"

#define ROOM  0x00
#define FLAGS 0x00000000

void BgHidanKowarerukabe_Init(BgHidanKowarerukabe* this, GlobalContext* globalCtx);
void BgHidanKowarerukabe_Destroy(BgHidanKowarerukabe* this, GlobalContext* globalCtx);
void BgHidanKowarerukabe_Update(BgHidanKowarerukabe* this, GlobalContext* globalCtx);
void BgHidanKowarerukabe_Draw(BgHidanKowarerukabe* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Hidan_Kowarerukabe_InitVars =
{
    ACTOR_BG_HIDAN_KOWARERUKABE,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_HIDAN_OBJECTS,
    sizeof(BgHidanKowarerukabe),
    (ActorFunc)BgHidanKowarerukabe_Init,
    (ActorFunc)BgHidanKowarerukabe_Destroy,
    (ActorFunc)BgHidanKowarerukabe_Update,
    (ActorFunc)BgHidanKowarerukabe_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kowarerukabe/func_8088A020.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kowarerukabe/func_8088A0B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kowarerukabe/func_8088A150.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kowarerukabe/BgHidanKowarerukabe_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kowarerukabe/BgHidanKowarerukabe_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kowarerukabe/func_8088A290.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kowarerukabe/func_8088A3B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kowarerukabe/func_8088A67C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kowarerukabe/func_8088A914.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kowarerukabe/func_8088ABA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kowarerukabe/BgHidanKowarerukabe_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kowarerukabe/BgHidanKowarerukabe_Draw.s")
