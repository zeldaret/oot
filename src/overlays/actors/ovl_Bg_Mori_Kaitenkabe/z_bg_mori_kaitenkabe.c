#include "z_bg_mori_kaitenkabe.h"

#define ROOM 0x00
#define FLAGS 0x00000000

void BgMoriKaitenkabe_Init(BgMoriKaitenkabe* this, GlobalContext* globalCtx);
void BgMoriKaitenkabe_Destroy(BgMoriKaitenkabe* this, GlobalContext* globalCtx);
void BgMoriKaitenkabe_Update(BgMoriKaitenkabe* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Mori_Kaitenkabe_InitVars = {
    ACTOR_BG_MORI_KAITENKABE,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_MORI_OBJECTS,
    sizeof(BgMoriKaitenkabe),
    (ActorFunc)BgMoriKaitenkabe_Init,
    (ActorFunc)BgMoriKaitenkabe_Destroy,
    (ActorFunc)BgMoriKaitenkabe_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Kaitenkabe/func_808A4DC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Kaitenkabe/BgMoriKaitenkabe_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Kaitenkabe/BgMoriKaitenkabe_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Kaitenkabe/func_808A4F3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Kaitenkabe/func_808A4F90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Kaitenkabe/func_808A4FA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Kaitenkabe/func_808A5104.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Kaitenkabe/func_808A5120.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Kaitenkabe/BgMoriKaitenkabe_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Kaitenkabe/func_808A52AC.s")
