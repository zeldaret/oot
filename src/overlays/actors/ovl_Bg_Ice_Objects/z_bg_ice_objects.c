#include "z_bg_ice_objects.h"

#define ROOM  0x00
#define FLAGS 0x00000000

void BgIceObjects_Init(BgIceObjects* this, GlobalContext* globalCtx);
void BgIceObjects_Destroy(BgIceObjects* this, GlobalContext* globalCtx);
void BgIceObjects_Update(BgIceObjects* this, GlobalContext* globalCtx);
void BgIceObjects_Draw(BgIceObjects* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Ice_Objects_InitVars =
{
    ACTOR_BG_ICE_OBJECTS,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_ICE_OBJECTS,
    sizeof(BgIceObjects),
    (ActorFunc)BgIceObjects_Init,
    (ActorFunc)BgIceObjects_Destroy,
    (ActorFunc)BgIceObjects_Update,
    (ActorFunc)BgIceObjects_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Objects/BgIceObjects_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Objects/BgIceObjects_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Objects/func_8088F8C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Objects/func_8088FD48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Objects/func_8088FED0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Objects/func_8088FFD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Objects/func_80890360.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Objects/func_808903FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Objects/BgIceObjects_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Objects/BgIceObjects_Draw.s")
