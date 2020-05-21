/*
 * File: z_en_door.c
 * Overlay: ovl_En_Door
 * Description: Door
 */

#include "z_en_door.h"

#define FLAGS 0x00000010

#define THIS ((EnDoor*)thisx)

void EnDoor_Init(Actor* thisx, GlobalContext* globalCtx);
void EnDoor_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnDoor_Update(Actor* thisx, GlobalContext* globalCtx);
void EnDoor_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Door_InitVars = {
    ACTOR_EN_DOOR,
    ACTORTYPE_DOOR,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnDoor),
    (ActorFunc)EnDoor_Init,
    (ActorFunc)EnDoor_Destroy,
    (ActorFunc)EnDoor_Update,
    (ActorFunc)EnDoor_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Door/EnDoor_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Door/EnDoor_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Door/func_809FC41C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Door/func_809FC5D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Door/func_809FC878.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Door/func_809FC8C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Door/func_809FC8F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Door/func_809FC928.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Door/func_809FC998.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Door/func_809FC9DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Door/EnDoor_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Door/func_809FCC3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Door/EnDoor_Draw.s")
