#include "z_en_door.h"

#define ROOM 0x00
#define FLAGS 0x00000010

void EnDoor_Init(EnDoor* this, GlobalContext* globalCtx);
void EnDoor_Destroy(EnDoor* this, GlobalContext* globalCtx);
void EnDoor_Update(EnDoor* this, GlobalContext* globalCtx);
void EnDoor_Draw(EnDoor* this, GlobalContext* globalCtx);

/*
const ActorInit En_Door_InitVars = {
    ACTOR_EN_DOOR,
    ACTORTYPE_DOOR,
    ROOM,
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
