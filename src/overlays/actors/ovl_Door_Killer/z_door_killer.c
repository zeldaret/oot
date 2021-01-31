#include "z_door_killer.h"
#include "objects/gameplay_keep/gameplay_keep.h"

#define FLAGS 0x00000010

#define THIS ((DoorKiller*)thisx)

void DoorKiller_Init(Actor* thisx, GlobalContext* globalCtx);
void DoorKiller_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DoorKiller_Update(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06001BC8;

/*
const ActorInit Door_Killer_InitVars = {
    ACTOR_DOOR_KILLER,
    ACTORCAT_BG,
    FLAGS,
    OBJECT_DOOR_KILLER,
    sizeof(DoorKiller),
    (ActorFunc)DoorKiller_Init,
    (ActorFunc)DoorKiller_Destroy,
    (ActorFunc)DoorKiller_Update,
    NULL,
};

static ColliderCylinderInit D_80995FB0 = {
    {
        COLTYPE_METAL,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x00, 0x10 },
        { 0x0001FFEE, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NORMAL,
        BUMP_ON,
        OCELEM_NONE,
    },
    { 20, 100, 0, { 0, 0, 0 } },
};

static ColliderJntSphElementInit D_80995FDC[1] = {
    {
        {
            ELEMTYPE_UNK0,
            { 0x00000000, 0x00, 0x00 },
            { 0x00000008, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_ON,
            OCELEM_NONE,
        },
        { 0, { { 0, 0, 0 }, 100 }, 100 },
    },
};

static ColliderJntSphInit D_80996000 = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_NONE,
        COLSHAPE_JNTSPH,
    },
    1,
    D_80995FDC,
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
