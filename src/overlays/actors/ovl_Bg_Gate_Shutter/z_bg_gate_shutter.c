#include "z_bg_gate_shutter.h"

#define ROOM  0x00
#define FLAGS 0x00000000

void BgGateShutter_Init(BgGateShutter* this, GlobalContext* globalCtx);
void BgGateShutter_Destroy(BgGateShutter* this, GlobalContext* globalCtx);
void BgGateShutter_Update(BgGateShutter* this, GlobalContext* globalCtx);
void BgGateShutter_Draw(BgGateShutter* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Gate_Shutter_InitVars =
{
    ACTOR_BG_GATE_SHUTTER,
    ACTORTYPE_ITEMACTION,
    ROOM,
    FLAGS,
    OBJECT_SPOT01_MATOYAB,
    sizeof(BgGateShutter),
    (ActorFunc)BgGateShutter_Init,
    (ActorFunc)BgGateShutter_Destroy,
    (ActorFunc)BgGateShutter_Update,
    (ActorFunc)BgGateShutter_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gate_Shutter/BgGateShutter_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gate_Shutter/BgGateShutter_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gate_Shutter/func_8087828C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gate_Shutter/func_80878300.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gate_Shutter/func_808783AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gate_Shutter/func_808783D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gate_Shutter/BgGateShutter_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gate_Shutter/BgGateShutter_Draw.s")
