/*
 * File: z_bg_ddan_jd.c
 * Overlay: ovl_Bg_Ddan_Jd
 * Description: Rising stone platform (Dodongo's Cavern)
 */

#include "z_bg_ddan_jd.h"

#define FLAGS 0x00000030

#define THIS ((BgDdanJd*)thisx)

void BgDdanJd_Init(Actor* thisx, GlobalContext* globalCtx);
void BgDdanJd_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgDdanJd_Update(Actor* thisx, GlobalContext* globalCtx);
void BgDdanJd_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80870B88(BgDdanJd* this, GlobalContext* globalCtx);
void func_80870D2C(BgDdanJd* this, GlobalContext* globalCtx);
void func_80870F00(BgDdanJd* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Ddan_Jd_InitVars = {
    ACTOR_BG_DDAN_JD,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_DDAN_OBJECTS,
    sizeof(BgDdanJd),
    (ActorFunc)BgDdanJd_Init,
    (ActorFunc)BgDdanJd_Destroy,
    (ActorFunc)BgDdanJd_Update,
    (ActorFunc)BgDdanJd_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ddan_Jd/BgDdanJd_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ddan_Jd/BgDdanJd_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ddan_Jd/func_80870B88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ddan_Jd/func_80870D2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ddan_Jd/func_80870F00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ddan_Jd/BgDdanJd_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ddan_Jd/BgDdanJd_Draw.s")
