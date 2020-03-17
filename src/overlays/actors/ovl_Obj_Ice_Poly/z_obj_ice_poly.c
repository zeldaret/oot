#include "z_obj_ice_poly.h"

#define ROOM  0x00
#define FLAGS 0x00000010

void ObjIcePoly_Init(ObjIcePoly* this, GlobalContext* globalCtx);
void ObjIcePoly_Destroy(ObjIcePoly* this, GlobalContext* globalCtx);
void ObjIcePoly_Update(ObjIcePoly* this, GlobalContext* globalCtx);
void ObjIcePoly_Draw(ObjIcePoly* this, GlobalContext* globalCtx);

/*
const ActorInit Obj_Ice_Poly_InitVars =
{
    ACTOR_OBJ_ICE_POLY,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ObjIcePoly),
    (ActorFunc)ObjIcePoly_Init,
    (ActorFunc)ObjIcePoly_Destroy,
    (ActorFunc)ObjIcePoly_Update,
    (ActorFunc)ObjIcePoly_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Ice_Poly/ObjIcePoly_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Ice_Poly/ObjIcePoly_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Ice_Poly/func_80B94470.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Ice_Poly/func_80B946A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Ice_Poly/ObjIcePoly_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Ice_Poly/ObjIcePoly_Draw.s")
