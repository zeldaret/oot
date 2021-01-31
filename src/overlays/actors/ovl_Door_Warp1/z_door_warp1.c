#include "z_door_warp1.h"

#define FLAGS 0x00000000

#define THIS ((DoorWarp1*)thisx)

void DoorWarp1_Init(Actor* thisx, GlobalContext* globalCtx);
void DoorWarp1_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DoorWarp1_Update(Actor* thisx, GlobalContext* globalCtx);
void DoorWarp1_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_060001A0;
extern UNK_TYPE D_06001374;
extern UNK_TYPE D_06002CA8;

/*
const ActorInit Door_Warp1_InitVars = {
    ACTOR_DOOR_WARP1,
    ACTORCAT_ITEMACTION,
    FLAGS,
    OBJECT_WARP1,
    sizeof(DoorWarp1),
    (ActorFunc)DoorWarp1_Init,
    (ActorFunc)DoorWarp1_Destroy,
    (ActorFunc)DoorWarp1_Update,
    (ActorFunc)DoorWarp1_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_80998780.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/DoorWarp1_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/DoorWarp1_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_8099898C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_80998C90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_80998E5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_80998FF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_80999194.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_809991C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_80999214.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_80999348.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_80999410.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_80999428.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_80999508.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_80999580.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_809995D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_80999724.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_809998A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_80999938.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_809999A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_80999A68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_80999E64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_80999EE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_80999FE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_8099A098.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_8099A3A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_8099A46C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_8099A508.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_8099A5EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_8099AEE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_8099B014.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_8099B020.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/DoorWarp1_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_8099B140.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_8099B33C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_8099B5EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/DoorWarp1_Draw.s")
