/*
 * File: z_obj_switch.c
 * Overlay: ovl_Obj_Switch
 * Description: Switches
 */

#include "z_obj_switch.h"

#define FLAGS 0x00000010

void ObjSwitch_Init(ObjSwitch* this, GlobalContext* globalCtx);
void ObjSwitch_Destroy(ObjSwitch* this, GlobalContext* globalCtx);
void ObjSwitch_Update(ObjSwitch* this, GlobalContext* globalCtx);
void ObjSwitch_Draw(ObjSwitch* this, GlobalContext* globalCtx);

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
