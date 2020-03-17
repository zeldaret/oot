#include "z_door_ana.h"

#define ROOM  0x00
#define FLAGS 0x02000000

void DoorAna_Init(DoorAna* this, GlobalContext* globalCtx);
void DoorAna_Destroy(DoorAna* this, GlobalContext* globalCtx);
void DoorAna_Update(DoorAna* this, GlobalContext* globalCtx);
void DoorAna_Draw(DoorAna* this, GlobalContext* globalCtx);

/*
const ActorInit Door_Ana_InitVars =
{
    ACTOR_DOOR_ANA,
    ACTORTYPE_ITEMACTION,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_FIELD_KEEP,
    sizeof(DoorAna),
    (ActorFunc)DoorAna_Init,
    (ActorFunc)DoorAna_Destroy,
    (ActorFunc)DoorAna_Update,
    (ActorFunc)DoorAna_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Ana/func_80993EF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Ana/DoorAna_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Ana/DoorAna_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Ana/func_80993FEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Ana/func_80994124.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Ana/func_809942D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Ana/DoorAna_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Ana/DoorAna_Draw.s")
