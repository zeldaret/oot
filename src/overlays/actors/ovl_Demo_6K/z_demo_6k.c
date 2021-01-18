#include "z_demo_6k.h"

#define FLAGS 0x00000010

#define THIS ((Demo6K*)thisx)

void Demo6K_Init(Actor* thisx, GlobalContext* globalCtx);
void Demo6K_Destroy(Actor* thisx, GlobalContext* globalCtx);
void Demo6K_Update(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_040101A8;
extern UNK_TYPE D_04015780;
extern UNK_TYPE D_06001040;
extern UNK_TYPE D_06001190;
extern UNK_TYPE D_060022B0;
extern UNK_TYPE D_060035E0;
extern UNK_TYPE D_060039D0;

/*
const ActorInit Demo_6K_InitVars = {
    ACTOR_DEMO_6K,
    ACTORCAT_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(Demo6K),
    (ActorFunc)Demo6K_Init,
    (ActorFunc)Demo6K_Destroy,
    (ActorFunc)Demo6K_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_6K/func_80966950.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_6K/Demo6K_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_6K/Demo6K_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_6K/func_80966DB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_6K/func_80966E04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_6K/func_80966E98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_6K/func_80966F84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_6K/func_809670AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_6K/func_8096712C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_6K/func_80967244.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_6K/func_80967410.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_6K/func_809674E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_6K/func_809676A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_6K/func_8096784C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_6K/func_80967A04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_6K/func_80967AD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_6K/func_80967BF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_6K/func_80967DBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_6K/func_80967F10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_6K/Demo6K_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_6K/func_80967FFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_6K/func_80968298.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_6K/func_8096865C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_6K/func_809688C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_6K/func_80968B70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_6K/func_80968FB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_6K/func_809691BC.s")
