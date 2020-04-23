/*
 * File: z_bg_ddan_kd.c
 * Overlay: ovl_Bg_Ddan_Kd
 * Description: Stone stairs in Dodongo's Cavern
 */

#include "z_bg_ddan_kd.h"

#define FLAGS 0x00000010

void BgDdanKd_Init(BgDdanKd* this, GlobalContext* globalCtx);
void BgDdanKd_Destroy(BgDdanKd* this, GlobalContext* globalCtx);
void BgDdanKd_Update(BgDdanKd* this, GlobalContext* globalCtx);
void BgDdanKd_Draw(BgDdanKd* this, GlobalContext* globalCtx);
void BgDdanKd_SetupAction(BgDdanKd* this, ActorFunc actionFunc);
void func_80871234(BgDdanKd* this, GlobalContext* globalCtx);
void func_80873164(BgDdanKd* this, GlobalContext* globalCtx);
void func_80871838(BgDdanKd* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Ddan_Kd_InitVars = {
    ACTOR_BG_DDAN_KD,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_DDAN_OBJECTS,
    sizeof(BgDdanKd),
    (ActorFunc)BgDdanKd_Init,
    (ActorFunc)BgDdanKd_Destroy,
    (ActorFunc)BgDdanKd_Update,
    (ActorFunc)BgDdanKd_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ddan_Kd/BgDdanKd_SetupAction.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ddan_Kd/BgDdanKd_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ddan_Kd/BgDdanKd_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ddan_Kd/func_80871234.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ddan_Kd/func_80871364.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ddan_Kd/func_80871838.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ddan_Kd/BgDdanKd_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ddan_Kd/BgDdanKd_Draw.s")
