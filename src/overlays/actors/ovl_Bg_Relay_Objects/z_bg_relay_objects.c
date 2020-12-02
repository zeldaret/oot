/*
 * File: z_bg_relay_objects.c
 * Overlay: ovl_Bg_Relay_Objects
 * Description: Windmill Setpieces
 */

#include "z_bg_relay_objects.h"

#define FLAGS 0x00000010

#define THIS ((BgRelayObjects*)thisx)

void BgRelayObjects_Init(Actor* thisx, GlobalContext* globalCtx);
void BgRelayObjects_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgRelayObjects_Update(Actor* thisx, GlobalContext* globalCtx);
void BgRelayObjects_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_060001A0;
extern UNK_TYPE D_060003C4;
extern UNK_TYPE D_06001AB0;
extern UNK_TYPE D_060025FC;

/*
const ActorInit Bg_Relay_Objects_InitVars = {
    ACTOR_BG_RELAY_OBJECTS,
    ACTORTYPE_BG,
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
