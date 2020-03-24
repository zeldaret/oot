#include "z_door_gerudo.h"

#define ROOM 0x00
#define FLAGS 0x00000000

void DoorGerudo_Init(DoorGerudo* this, GlobalContext* globalCtx);
void DoorGerudo_Destroy(DoorGerudo* this, GlobalContext* globalCtx);
void DoorGerudo_Update(DoorGerudo* this, GlobalContext* globalCtx);
void DoorGerudo_Draw(DoorGerudo* this, GlobalContext* globalCtx);

/*
const ActorInit Door_Gerudo_InitVars = {
    ACTOR_DOOR_GERUDO,
    ACTORTYPE_ITEMACTION,
    ROOM,
    FLAGS,
    OBJECT_DOOR_GERUDO,
    sizeof(DoorGerudo),
    (ActorFunc)DoorGerudo_Init,
    (ActorFunc)DoorGerudo_Destroy,
    (ActorFunc)DoorGerudo_Update,
    (ActorFunc)DoorGerudo_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Gerudo/DoorGerudo_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Gerudo/DoorGerudo_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Gerudo/func_809946BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Gerudo/func_80994750.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Gerudo/func_8099485C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Gerudo/func_8099496C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Gerudo/func_809949C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Gerudo/DoorGerudo_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Gerudo/DoorGerudo_Draw.s")
