/*
 * File: z_obj_dekujr.c
 * Overlay: ovl_Obj_Dekujr
 * Description: Deku Tree Sprout
 */

#include "z_obj_dekujr.h"

#define FLAGS 0x00000009

#define THIS ((ObjDekujr*)thisx)

void ObjDekujr_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjDekujr_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjDekujr_Update(Actor* thisx, GlobalContext* globalCtx);
void ObjDekujr_Draw(Actor* thisx, GlobalContext* globalCtx);


const ActorInit Obj_Dekujr_InitVars = {
    ACTOR_OBJ_DEKUJR,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_DEKUJR,
    sizeof(ObjDekujr),
    (ActorFunc)ObjDekujr_Init,
    (ActorFunc)ObjDekujr_Destroy,
    (ActorFunc)ObjDekujr_Update,
    (ActorFunc)ObjDekujr_Draw,
};

ColliderCylinderInit_Actor D_80B92A00 = 
{
    { NULL, 0x00, 0x00, 0x39, COLSHAPE_CYLINDER },
    { 0x02, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 60, 80, 0, { 0, 0, 0 } },
};

Vec3f D_80B92A2C = { 0.0f, 0.0f, 0.0f };

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Dekujr/ObjDekujr_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Dekujr/ObjDekujr_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Dekujr/func_80B92538.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Dekujr/func_80B92578.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Dekujr/func_80B925B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Dekujr/ObjDekujr_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Dekujr/ObjDekujr_Draw.s")
