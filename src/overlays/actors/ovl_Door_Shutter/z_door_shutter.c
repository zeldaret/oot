#include "z_door_shutter.h"

#define FLAGS 0x00000010

void DoorShutter_Init(DoorShutter* this, GlobalContext* globalCtx);
void DoorShutter_Destroy(DoorShutter* this, GlobalContext* globalCtx);
void DoorShutter_Update(DoorShutter* this, GlobalContext* globalCtx);
void DoorShutter_Draw(DoorShutter* this, GlobalContext* globalCtx);

/*
const ActorInit Door_Shutter_InitVars = {
    ACTOR_DOOR_SHUTTER,
    ACTORTYPE_DOOR,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(DoorShutter),
    (ActorFunc)DoorShutter_Init,
    (ActorFunc)DoorShutter_Destroy,
    (ActorFunc)DoorShutter_Update,
    (ActorFunc)DoorShutter_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_809962A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_809962AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/DoorShutter_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/DoorShutter_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_8099670C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_80996840.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_809968D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_80996A54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_80996B00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_80996B0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_80996C60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_80996D14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_80996E08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_80996EE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_80996F98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_80997004.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_80997150.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_80997220.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_809973E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_80997528.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_80997568.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_809975C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_809976B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_80997744.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/DoorShutter_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_80997838.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_80997A34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/DoorShutter_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Shutter/func_8099803C.s")
