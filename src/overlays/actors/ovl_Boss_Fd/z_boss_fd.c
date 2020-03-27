#include "z_boss_fd.h"

#define ROOM 0x00
#define FLAGS 0x00000035

void BossFd_Init(BossFd* this, GlobalContext* globalCtx);
void BossFd_Destroy(BossFd* this, GlobalContext* globalCtx);
void BossFd_Update(BossFd* this, GlobalContext* globalCtx);
void BossFd_Draw(BossFd* this, GlobalContext* globalCtx);

/*
const ActorInit Boss_Fd_InitVars = {
    ACTOR_BOSS_FD,
    ACTORTYPE_BOSS,
    ROOM,
    FLAGS,
    OBJECT_FD,
    sizeof(BossFd),
    (ActorFunc)BossFd_Init,
    (ActorFunc)BossFd_Destroy,
    (ActorFunc)BossFd_Update,
    (ActorFunc)BossFd_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808CADC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808CAE8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808CAF5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808CAFF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808CB100.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808CB198.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/BossFd_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/BossFd_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808CB67C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808CB6A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808CB718.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808CDE30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808CE01C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808CEC34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/BossFd_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808CF448.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808CF898.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/BossFd_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808D00A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808D01C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808D02DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808D07A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808D08A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808D08F8.s")
