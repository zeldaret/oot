/*
 * File: z_obj_switch.c
 * Overlay: ovl_Obj_Switch
 * Description: Switches
 */

#include "z_obj_switch.h"

#define FLAGS 0x00000010

#define THIS ((ObjSwitch*)thisx)

void ObjSwitch_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjSwitch_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjSwitch_Update(Actor* thisx, GlobalContext* globalCtx);
void ObjSwitch_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Obj_Switch_InitVars = {
    ACTOR_OBJ_SWITCH,
    ACTORTYPE_SWITCH,
    FLAGS,
    OBJECT_GAMEPLAY_DANGEON_KEEP,
    sizeof(ObjSwitch),
    (ActorFunc)ObjSwitch_Init,
    (ActorFunc)ObjSwitch_Destroy,
    (ActorFunc)ObjSwitch_Update,
    (ActorFunc)ObjSwitch_Draw,
};

static ColliderJntSphElementInit D_80B9ED44[1] = {
    {
        { ELEMTYPE_UNK0, { 0x00000000, 0x00, 0x00 }, { 0xEFC1FFFE, 0x00, 0x00 }, TOUCH_OFF, BUMP_ON, OCELEM_ON },
        { 0, { { 0, 300, 0 }, 20 }, 100 },
    },
};

static ColliderJntSphInit D_80B9ED68 = {
    { COLTYPE_METAL, AT_OFF, AC_ON | AC_PLAYER, OC_ON | OC_ALL, OT_TYPE2, COLSHAPE_JNTSPH },
    1,
    D_80B9ED44,
};

static ColliderTrisElementInit D_80B9EC34[2] = {
    {
        { ELEMTYPE_UNK0, { 0x00000000, 0x00, 0x00 }, { 0x40000040, 0x00, 0x00 }, TOUCH_OFF, BUMP_ON, OCELEM_OFF },
        { { { -20.0f, 19.0f, -20.0f }, { -20.0f, 19.0f, 20.0f }, { 20.0f, 19.0f, 20.0f } } },
    },
    {
        { ELEMTYPE_UNK0, { 0x00000000, 0x00, 0x00 }, { 0x40000040, 0x00, 0x00 }, TOUCH_OFF, BUMP_ON, OCELEM_OFF },
        { { { 20.0f, 19.0f, 20.0f }, { 20.0f, 19.0f, -20.0f }, { -20.0f, 19.0f, -20.0f } } },
    },
};

static ColliderTrisInit D_80B9ECAC = {
    { COLTYPE_NONE, AT_OFF, AC_ON | AC_PLAYER, OC_OFF, OT_NONE, COLSHAPE_TRIS },
    2,
    D_80B9EC34,
};

static ColliderTrisElementInit D_80B9ECBC[2] = {
    {
        { ELEMTYPE_UNK4, { 0x00000000, 0x00, 0x00 }, { 0x0001F824, 0x00, 0x00 }, TOUCH_OFF, BUMP_ON, OCELEM_OFF },
        { { { 0.0f, 23.0f, 8.5f }, { -23.0f, 0.0f, 8.5f }, { 0.0f, -23.0f, 8.5f } } },
    },
    {
        { ELEMTYPE_UNK0, { 0x00000000, 0x00, 0x00 }, { 0x0001F824, 0x00, 0x00 }, TOUCH_OFF, BUMP_ON, OCELEM_OFF },
        { { { 0.0f, 23.0f, 8.5f }, { 0.0f, -23.0f, 8.5f }, { 23.0f, 0.0f, 8.5f } } },
    },
};

static ColliderTrisInit D_80B9ED34 = {
    { COLTYPE_NONE, AT_OFF, AC_ON | AC_PLAYER, OC_OFF, OT_NONE, COLSHAPE_TRIS },
    2,
    D_80B9ECBC,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9D210.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9D294.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9D31C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9D3B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9D4D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9D54C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9D5F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9D680.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/ObjSwitch_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/ObjSwitch_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9DA48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9DA64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9DBD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9DBF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9DCB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9DCD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9DE20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9DE38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9DF1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9DF8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9DF9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9DFF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9E004.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9E06C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9E084.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9E100.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9E118.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9E1D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9E1F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9E280.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9E2A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9E3DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9E3F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9E47C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9E4A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9E56C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9E584.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/ObjSwitch_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9E748.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9E788.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9E7B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/func_80B9E904.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Switch/ObjSwitch_Draw.s")
