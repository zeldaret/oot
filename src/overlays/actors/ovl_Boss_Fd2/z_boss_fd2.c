#include "z_boss_fd2.h"

#define FLAGS 0x00000035

#define THIS ((BossFd2*)thisx)

void BossFd2_Init(Actor* thisx, GlobalContext* globalCtx);
void BossFd2_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BossFd2_Update(Actor* thisx, GlobalContext* globalCtx);
void BossFd2_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Boss_Fd2_InitVars = {
    ACTOR_BOSS_FD2,
    ACTORTYPE_BOSS,
    FLAGS,
    OBJECT_FD2,
    sizeof(BossFd2),
    (ActorFunc)BossFd2_Init,
    (ActorFunc)BossFd2_Destroy,
    (ActorFunc)BossFd2_Update,
    (ActorFunc)BossFd2_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd2/func_808D2670.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd2/func_808D2748.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd2/func_808D285C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd2/func_808D2930.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd2/func_808D2A08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd2/BossFd2_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd2/BossFd2_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd2/func_808D2BD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd2/func_808D2CE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd2/func_808D308C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd2/func_808D3140.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd2/func_808D32B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd2/func_808D3330.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd2/func_808D3400.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd2/func_808D3464.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd2/func_808D39A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd2/func_808D3A08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd2/func_808D3A80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd2/func_808D3AE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd2/func_808D3D38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd2/func_808D3D98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd2/func_808D3EC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd2/func_808D3F58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd2/func_808D40C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd2/func_808D4748.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd2/func_808D4790.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd2/func_808D4C68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd2/BossFd2_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd2/func_808D4F94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd2/func_808D5228.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd2/func_808D52CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd2/func_808D58E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd2/BossFd2_Draw.s")
