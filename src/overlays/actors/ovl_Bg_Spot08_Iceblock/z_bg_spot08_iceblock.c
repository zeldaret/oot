#include "z_bg_spot08_iceblock.h"

#define FLAGS 0x00000000

#define THIS ((BgSpot08Iceblock*)thisx)

void BgSpot08Iceblock_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot08Iceblock_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot08Iceblock_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot08Iceblock_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06000DE0;
extern UNK_TYPE D_06002BD0;
extern UNK_TYPE D_06002FD8;
extern UNK_TYPE D_06001904;

/*
const ActorInit Bg_Spot08_Iceblock_InitVars = {
    ACTOR_BG_SPOT08_ICEBLOCK,
    ACTORCAT_BG,
    FLAGS,
    OBJECT_SPOT08_OBJ,
    sizeof(BgSpot08Iceblock),
    (ActorFunc)BgSpot08Iceblock_Init,
    (ActorFunc)BgSpot08Iceblock_Destroy,
    (ActorFunc)BgSpot08Iceblock_Update,
    (ActorFunc)BgSpot08Iceblock_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/func_808B0960.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/func_808B0968.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/func_808B09F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/func_808B0A84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/func_808B0AE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/func_808B0B8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/func_808B0BA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/func_808B0BD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/func_808B0C44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/func_808B0CE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/func_808B1054.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/BgSpot08Iceblock_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/BgSpot08Iceblock_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/func_808B1388.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/func_808B13AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/func_808B13FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/func_808B1420.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/func_808B147C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/func_808B14A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/func_808B1574.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/BgSpot08Iceblock_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/BgSpot08Iceblock_Draw.s")
