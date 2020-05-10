#include "z_bg_ydan_hasi.h"

#define FLAGS 0x00000030

#define THIS ((BgYdanHasi*)thisx)

void BgYdanHasi_Init(Actor* thisx, GlobalContext* globalCtx);
void BgYdanHasi_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgYdanHasi_Update(Actor* thisx, GlobalContext* globalCtx);
void BgYdanHasi_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Bg_Ydan_Hasi_InitVars = {
    ACTOR_BG_YDAN_HASI,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_YDAN_OBJECTS,
    sizeof(BgYdanHasi),
    (ActorFunc)BgYdanHasi_Init,
    (ActorFunc)BgYdanHasi_Destroy,
    (ActorFunc)BgYdanHasi_Update,
    (ActorFunc)BgYdanHasi_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Hasi/BgYdanHasi_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Hasi/BgYdanHasi_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Hasi/func_808BE690.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Hasi/func_808BE7C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Hasi/func_808BE810.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Hasi/func_808BE8DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Hasi/func_808BE930.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Hasi/func_808BE99C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Hasi/BgYdanHasi_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Hasi/BgYdanHasi_Draw.s")
