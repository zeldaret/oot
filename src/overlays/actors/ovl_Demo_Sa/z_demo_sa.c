#include "z_demo_sa.h"

#define ROOM  0x00
#define FLAGS 0x00000010

void DemoSa_Init(DemoSa* this, GlobalContext* globalCtx);
void DemoSa_Destroy(DemoSa* this, GlobalContext* globalCtx);
void DemoSa_Update(DemoSa* this, GlobalContext* globalCtx);
void DemoSa_Draw(DemoSa* this, GlobalContext* globalCtx);

/*
const ActorInit Demo_Sa_InitVars =
{
    ACTOR_DEMO_SA,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_SA,
    sizeof(DemoSa),
    (ActorFunc)DemoSa_Init,
    (ActorFunc)DemoSa_Destroy,
    (ActorFunc)DemoSa_Update,
    (ActorFunc)DemoSa_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/DemoSa_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098E480.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098E508.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098E51C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098E530.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098E554.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098E5C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098E610.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098E630.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098E654.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098E6A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098E6EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098E76C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098E7FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098E86C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098E8C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098E944.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098E960.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098E9EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098EA3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098EA68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098EB00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098EB6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098EBB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098EBD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098EBF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098EC28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098EC60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098EC94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098ECCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098ECF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098EDB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098EE08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098EE28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098EEA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098EEFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098F050.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098F0E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098F118.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098F16C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098F1C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098F390.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098F3F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098F420.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098F480.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098F50C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098F544.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098F590.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098F5D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098F610.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098F654.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098F714.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098F734.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098F77C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098F7BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098F7FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098F83C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098F8F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098F984.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098F998.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098FA2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098FA84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098FAE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098FB34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098FB68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098FC44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098FC64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098FC9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098FCD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098FD0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/DemoSa_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/DemoSa_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098FE74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098FEA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/func_8098FEB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Sa/DemoSa_Draw.s")
