#include "z_boss_mo.h"

#define FLAGS 0x00000035

#define THIS ((BossMo*)thisx)

void BossMo_Init(Actor* thisx, GlobalContext* globalCtx);
void BossMo_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BossMo_Update(Actor* thisx, GlobalContext* globalCtx);
void BossMo_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Boss_Mo_InitVars = {
    ACTOR_BOSS_MO,
    ACTORTYPE_BOSS,
    FLAGS,
    OBJECT_MO,
    sizeof(BossMo),
    (ActorFunc)BossMo_Init,
    (ActorFunc)BossMo_Destroy,
    (ActorFunc)BossMo_Update,
    (ActorFunc)BossMo_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_8091BB00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_8091BB1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_8091BC40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_8091BD38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_8091BE5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_8091BF38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_8091BFFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/BossMo_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/BossMo_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_8091C4E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_8091C538.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_8091F2FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_8091F5A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_809206C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_80921280.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_809216D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_80922D30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/BossMo_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_809237C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_80923870.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_80923FDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_80924228.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/BossMo_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_80924D70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_80925480.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_80925C18.s")
