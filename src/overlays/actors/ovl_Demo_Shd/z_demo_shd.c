/*
 * File: z_demo_shd.c
 * Overlay: Demo_Shd
 * Description: Bongo Bongo's Shadow
 */

#include "z_demo_shd.h"

#define FLAGS 0x00000030

void DemoShd_Init(DemoShd* this, GlobalContext* globalCtx);
void DemoShd_Destroy(DemoShd* this, GlobalContext* globalCtx);
void DemoShd_Update(DemoShd* this, GlobalContext* globalCtx);
void DemoShd_Draw(DemoShd* this, GlobalContext* globalCtx);
void DemoShd_SetupAction(DemoShd* this, ActorFunc actionFunc);
void func_80991298(DemoShd* this, GlobalContext* globalCtx);

/*
const ActorInit Demo_Shd_InitVars = {
    ACTOR_DEMO_SHD,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(DemoShd),
    (ActorFunc)DemoShd_Init,
    (ActorFunc)DemoShd_Destroy,
    (ActorFunc)DemoShd_Update,
    (ActorFunc)DemoShd_Draw,
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Shd/DemoShd_SetupAction.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Shd/DemoShd_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Shd/DemoShd_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Shd/func_80991298.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Shd/DemoShd_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Shd/DemoShd_Draw.s")
