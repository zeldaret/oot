#include "z_bg_mori_hashigo.h"

#define ROOM  0x00
#define FLAGS 0x00000000

void BgMoriHashigo_Init(BgMoriHashigo* this, GlobalContext* globalCtx);
void BgMoriHashigo_Destroy(BgMoriHashigo* this, GlobalContext* globalCtx);
void BgMoriHashigo_Update(BgMoriHashigo* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Mori_Hashigo_InitVars =
{
    ACTOR_BG_MORI_HASHIGO,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_MORI_OBJECTS,
    sizeof(BgMoriHashigo),
    (ActorFunc)BgMoriHashigo_Init,
    (ActorFunc)BgMoriHashigo_Destroy,
    (ActorFunc)BgMoriHashigo_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Hashigo/func_808A2560.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Hashigo/func_808A25E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Hashigo/func_808A2698.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Hashigo/func_808A2770.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Hashigo/func_808A27F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Hashigo/BgMoriHashigo_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Hashigo/BgMoriHashigo_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Hashigo/func_808A2978.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Hashigo/func_808A2988.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Hashigo/func_808A2A04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Hashigo/func_808A2A14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Hashigo/func_808A2A78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Hashigo/func_808A2A88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Hashigo/func_808A2ABC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Hashigo/func_808A2AF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Hashigo/func_808A2BD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Hashigo/BgMoriHashigo_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Hashigo/func_808A2C28.s")
