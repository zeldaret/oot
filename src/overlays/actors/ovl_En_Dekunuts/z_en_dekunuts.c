/*
 * File: z_en_dekunuts.c
 * Overlay: ovl_En_Dekunuts
 * Description: Mad Scrub
 */

#include "z_en_dekunuts.h"

#define FLAGS 0x00000005

#define THIS ((EnDekunuts*)thisx)

void EnDekunuts_Init(Actor* thisx, GlobalContext* globalCtx);
void EnDekunuts_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnDekunuts_Update(Actor* thisx, GlobalContext* globalCtx);
void EnDekunuts_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_060001C4;
extern UNK_TYPE D_06000368;
extern UNK_TYPE D_060004D8;
extern UNK_TYPE D_060006B0;
extern UNK_TYPE D_060008C4;
extern UNK_TYPE D_06000AF0;
extern UNK_TYPE D_06000D1C;
extern UNK_TYPE D_06000E6C;
extern UNK_TYPE D_06001024;
extern UNK_TYPE D_06002298;
extern UNK_TYPE D_06003268;
extern UNK_TYPE D_06003650;

/*
const ActorInit En_Dekunuts_InitVars = {
    ACTOR_EN_DEKUNUTS,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_DEKUNUTS,
    sizeof(EnDekunuts),
    (ActorFunc)EnDekunuts_Init,
    (ActorFunc)EnDekunuts_Destroy,
    (ActorFunc)EnDekunuts_Update,
    (ActorFunc)EnDekunuts_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/EnDekunuts_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/EnDekunuts_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809E96FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809E9770.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809E97B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809E9800.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809E9868.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809E98B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809E9920.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809E9978.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809E99D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809E9AB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809E9B48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809E9B98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809E9DFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809E9E80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809E9F6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809EA0C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809EA1D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809EA240.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809EA480.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809EA4E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809EA534.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809EA5B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809EA70C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/EnDekunuts_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809EA98C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/EnDekunuts_Draw.s")
