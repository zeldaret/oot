/*
 * File: z_en_mag.c
 * Overlay: ovl_En_Mag
 * Description: Title Screen Actor
 */

#include "z_en_mag.h"

#define FLAGS 0x00000030

#define THIS ((EnMag*)thisx)

void EnMag_Init(Actor* thisx, GlobalContext* globalCtx);
void EnMag_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnMag_Update(Actor* thisx, GlobalContext* globalCtx);
void EnMag_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Mag_InitVars = {
    ACTOR_EN_MAG,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_MAG,
    sizeof(EnMag),
    (ActorFunc)EnMag_Init,
    (ActorFunc)EnMag_Destroy,
    (ActorFunc)EnMag_Update,
    (ActorFunc)EnMag_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mag/EnMag_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mag/EnMag_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mag/EnMag_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mag/func_80AA447C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mag/func_80AA46A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mag/func_80AA4AD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mag/func_80AA4EB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mag/func_80AA507C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mag/EnMag_Draw.s")
