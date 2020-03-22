#include "z_bg_relay_objects.h"

#define ROOM 0x00
#define FLAGS 0x00000010

void BgRelayObjects_Init(BgRelayObjects* this, GlobalContext* globalCtx);
void BgRelayObjects_Destroy(BgRelayObjects* this, GlobalContext* globalCtx);
void BgRelayObjects_Update(BgRelayObjects* this, GlobalContext* globalCtx);
void BgRelayObjects_Draw(BgRelayObjects* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Relay_Objects_InitVars =
{
    ACTOR_BG_RELAY_OBJECTS,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_RELAY_OBJECTS,
    sizeof(BgRelayObjects),
    (ActorFunc)BgRelayObjects_Init,
    (ActorFunc)BgRelayObjects_Destroy,
    (ActorFunc)BgRelayObjects_Update,
    (ActorFunc)BgRelayObjects_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Relay_Objects/BgRelayObjects_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Relay_Objects/BgRelayObjects_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Relay_Objects/func_808A90F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Relay_Objects/func_808A91AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Relay_Objects/func_808A9234.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Relay_Objects/func_808A9320.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Relay_Objects/func_808A932C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Relay_Objects/func_808A939C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Relay_Objects/BgRelayObjects_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Relay_Objects/BgRelayObjects_Draw.s")
