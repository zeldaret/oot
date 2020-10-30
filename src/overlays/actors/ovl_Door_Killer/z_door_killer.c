#include "z_door_killer.h"

#define FLAGS 0x00000010

#define THIS ((DoorKiller*)thisx)

void DoorKiller_Init(Actor* thisx, GlobalContext* globalCtx);
void DoorKiller_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DoorKiller_Update(Actor* thisx, GlobalContext* globalCtx);

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

static ColliderCylinderInit D_80995FB0 = {
    { COLTYPE_METAL_SHIELD, AT_ENEMY | AT_ON, AC_PLAYER | AC_ON, OC_OFF, OT_TYPE1, COLSHAPE_CYLINDER },
    { ELEMTYPE_UNK0, { 0xFFCFFFFF, 0x00, 0x10 }, { 0x0001FFEE, 0x00, 0x00 }, TOUCH_ON, BUMP_ON, OCELEM_OFF },
    { 20, 100, 0, { 0, 0, 0 } },
};

static ColliderJntSphItemInit  D_80995FDC[1] = {
    {
        { ELEMTYPE_UNK0, { 0x00000000, 0x00, 0x00 }, { 0x00000008, 0x00, 0x00 }, TOUCH_OFF, BUMP_ON, OCELEM_OFF },
        { 0, { { 0, 0, 0 }, 100 }, 100 },
    },
};

static ColliderJntSphInit D_80996000 = {
    { COLTYPE_UNK10, AT_OFF, AC_PLAYER | AC_ON, OC_OFF, OT_NONE, COLSHAPE_JNTSPH },
    1, D_80995FDC,
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
