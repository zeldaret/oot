#include "z_en_rl.h"

#define ROOM  0x00
#define FLAGS 0x00000010

void EnRl_Init(EnRl* this, GlobalContext* globalCtx);
void EnRl_Destroy(EnRl* this, GlobalContext* globalCtx);
void EnRl_Update(EnRl* this, GlobalContext* globalCtx);
void EnRl_Draw(EnRl* this, GlobalContext* globalCtx);

/*
const ActorInit En_Rl_InitVars =
{
    ACTOR_EN_RL,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_RL,
    sizeof(EnRl),
    (ActorFunc)EnRl_Init,
    (ActorFunc)EnRl_Destroy,
    (ActorFunc)EnRl_Update,
    (ActorFunc)EnRl_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/EnRl_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE72D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE7358.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE73D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE744C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE7494.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE74B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE74FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE7544.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE7590.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE7668.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE7698.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE772C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE7798.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE77B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE77F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE7838.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE7878.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE78D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE7954.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE79A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE7AF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE7BF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE7C64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE7C94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE7CE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE7D40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE7D94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/EnRl_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/EnRl_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE7FD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE7FDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/EnRl_Draw.s")
