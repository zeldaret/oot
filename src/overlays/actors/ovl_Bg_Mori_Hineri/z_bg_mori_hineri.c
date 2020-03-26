#include "z_bg_mori_hineri.h"

#define ROOM 0x00
#define FLAGS 0x00000030

void BgMoriHineri_Init(BgMoriHineri* this, GlobalContext* globalCtx);
void BgMoriHineri_Destroy(BgMoriHineri* this, GlobalContext* globalCtx);
void BgMoriHineri_Update(BgMoriHineri* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Mori_Hineri_InitVars = {
    ACTOR_BG_MORI_HINERI,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(BgMoriHineri),
    (ActorFunc)BgMoriHineri_Init,
    (ActorFunc)BgMoriHineri_Destroy,
    (ActorFunc)BgMoriHineri_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Hineri/BgMoriHineri_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Hineri/BgMoriHineri_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Hineri/func_808A39FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Hineri/func_808A3BF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Hineri/func_808A3BFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Hineri/func_808A3C8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Hineri/func_808A3D58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Hineri/func_808A3E54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Hineri/BgMoriHineri_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Hineri/func_808A3F58.s")
