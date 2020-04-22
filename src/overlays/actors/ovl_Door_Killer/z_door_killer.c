#include "z_door_killer.h"

#define FLAGS 0x00000010

void DoorKiller_Init(DoorKiller* this, GlobalContext* globalCtx);
void DoorKiller_Destroy(DoorKiller* this, GlobalContext* globalCtx);
void DoorKiller_Update(DoorKiller* this, GlobalContext* globalCtx);

/*
const ActorInit Door_Killer_InitVars = {
    ACTOR_DOOR_KILLER,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_DOOR_KILLER,
    sizeof(DoorKiller),
    (ActorFunc)DoorKiller_Init,
    (ActorFunc)DoorKiller_Destroy,
    (ActorFunc)DoorKiller_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Killer/DoorKiller_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Killer/DoorKiller_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Killer/func_80995020.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Killer/func_809951C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Killer/func_80995284.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Killer/func_809952B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Killer/func_80995318.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Killer/func_80995368.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Killer/func_80995518.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Killer/func_809958E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Killer/func_80995A50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Killer/func_80995A84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Killer/func_80995CDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Killer/func_80995D6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Killer/DoorKiller_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Killer/func_80995E40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Killer/func_80995EC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Killer/func_80995F1C.s")
