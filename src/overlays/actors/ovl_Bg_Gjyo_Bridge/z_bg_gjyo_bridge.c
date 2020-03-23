#include "z_bg_gjyo_bridge.h"

#define ROOM 0x00
#define FLAGS 0x00000000

void BgGjyoBridge_Init(BgGjyoBridge* this, GlobalContext* globalCtx);
void BgGjyoBridge_Destroy(BgGjyoBridge* this, GlobalContext* globalCtx);
void BgGjyoBridge_Update(BgGjyoBridge* this, GlobalContext* globalCtx);
void BgGjyoBridge_Draw(BgGjyoBridge* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Gjyo_Bridge_InitVars =
{
    ACTOR_BG_GJYO_BRIDGE,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_GJYO_OBJECTS,
    sizeof(BgGjyoBridge),
    (ActorFunc)BgGjyoBridge_Init,
    (ActorFunc)BgGjyoBridge_Destroy,
    (ActorFunc)BgGjyoBridge_Update,
    (ActorFunc)BgGjyoBridge_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gjyo_Bridge/BgGjyoBridge_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gjyo_Bridge/BgGjyoBridge_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gjyo_Bridge/func_808787A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gjyo_Bridge/func_808787B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gjyo_Bridge/func_80878904.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gjyo_Bridge/BgGjyoBridge_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gjyo_Bridge/BgGjyoBridge_Draw.s")
