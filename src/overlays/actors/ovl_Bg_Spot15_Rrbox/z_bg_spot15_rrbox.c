#include "z_bg_spot15_rrbox.h"

#define FLAGS 0x00000000

#define THIS ((BgSpot15Rrbox*)thisx)

void BgSpot15Rrbox_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot15Rrbox_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot15Rrbox_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot15Rrbox_Draw(Actor* thisx, GlobalContext* globalCtx);

s32 D_808B4590[] = { 0x00000000 };

const ActorInit Bg_Spot15_Rrbox_InitVars = {
    ACTOR_BG_SPOT15_RRBOX,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_SPOT15_OBJ,
    sizeof(BgSpot15Rrbox),
    (ActorFunc)BgSpot15Rrbox_Init,
    (ActorFunc)BgSpot15Rrbox_Destroy,
    (ActorFunc)BgSpot15Rrbox_Update,
    (ActorFunc)BgSpot15Rrbox_Draw,
};

s32 D_808B45B4[] = { 0xC8500064,0xB0F403E8,0xB0F801F4,0x30FC03E8 };

s32 D_808B45C4[] = { 0x44408000,0x44BA4000,0xC3958000,0x44408000,0x44C1C000,0xC3958000 };

s32 D_808B45DC[] = { 0x41EFEB85,0x3C23D70A,0xC1EFEB85,0xC1EFEB85,0x3C23D70A,0xC1EFEB85,0xC1EFEB85,0x3C23D70A,0x41EFEB85,0x41EFEB85,0x3C23D70A,0x41EFEB85,0x00000000,0x3C23D70A,0x00000000 };

s32 D_808B4618[] = { 0x00000000,0x00000000 };

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B3960.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B39E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B3A34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B3A40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B3AAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/BgSpot15Rrbox_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/BgSpot15Rrbox_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B3CA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B3DDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B3F58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B4010.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B4084.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B40AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B4178.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B4194.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B4380.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B43D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B44B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B44CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/BgSpot15Rrbox_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/BgSpot15Rrbox_Draw.s")
