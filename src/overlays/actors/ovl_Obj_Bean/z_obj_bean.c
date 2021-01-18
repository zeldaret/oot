/*
 * File: z_obj_bean.c
 * Overlay: ovl_Obj_Bean
 * Description: Bean plant spot
 */

#include "z_obj_bean.h"

#define FLAGS 0x00400000

#define THIS ((ObjBean*)thisx)

void ObjBean_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjBean_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjBean_Update(Actor* thisx, GlobalContext* globalCtx);
void ObjBean_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06000090;
extern UNK_TYPE D_060001B0;
extern UNK_TYPE D_060003F0;
extern UNK_TYPE D_060005DC;
extern UNK_TYPE D_06000650;

/*
const ActorInit Obj_Bean_InitVars = {
    ACTOR_OBJ_BEAN,
    ACTORCAT_BG,
    FLAGS,
    OBJECT_MAMENOKI,
    sizeof(ObjBean),
    (ActorFunc)ObjBean_Init,
    (ActorFunc)ObjBean_Destroy,
    (ActorFunc)ObjBean_Update,
    (ActorFunc)ObjBean_Draw,
};

static ColliderCylinderInit D_80B90E54 = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_PLAYER,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000000, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_NONE,
        OCELEM_ON,
    },
    { 64, 30, -31, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8EA80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8EAD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8EB60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8EBC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8EBE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8EDF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8EE24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8EEFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8EF28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8EF44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8EF80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8EFF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8F298.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8F324.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8F59C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8F65C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8F6CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8F710.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8F788.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8F80C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8F84C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8F8D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8F8E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8F94C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8F964.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8F9E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8FA20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/ObjBean_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/ObjBean_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8FD50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8FD8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8FE00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8FE3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8FE6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8FEAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8FF50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B8FF8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B90010.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B90050.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B90110.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B90158.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B9024C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B90290.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B902D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B90314.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B903C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B90400.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B90510.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B90548.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B905E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B90620.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B90678.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B906A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B90714.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B9075C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B90884.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B908B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B908EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B90918.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B90970.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B909B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B909F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B90A34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/ObjBean_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B90C7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/func_80B90D04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bean/ObjBean_Draw.s")
