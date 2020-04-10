/*
 * File: z_bg_ice_shutter.c
 * Overlay: ovl_Bg_Ice_Shutter
 * Description: 2D Ice Bars
 */

#include "z_bg_ice_shutter.h"

#define FLAGS 0x00000010

void BgIceShutter_Init(BgIceShutter* this, GlobalContext* globalCtx);
void BgIceShutter_Destroy(BgIceShutter* this, GlobalContext* globalCtx);
void BgIceShutter_Update(BgIceShutter* this, GlobalContext* globalCtx);
void BgIceShutter_Draw(BgIceShutter* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Ice_Shutter_InitVars = {
    ACTOR_BG_ICE_SHUTTER,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_ICE_OBJECTS,
    sizeof(BgIceShutter),
    (ActorFunc)BgIceShutter_Init,
    (ActorFunc)BgIceShutter_Destroy,
    (ActorFunc)BgIceShutter_Update,
    (ActorFunc)BgIceShutter_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Shutter/func_80891AC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Shutter/BgIceShutter_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Shutter/BgIceShutter_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Shutter/func_80891CF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Shutter/func_80891D6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Shutter/func_80891DD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Shutter/BgIceShutter_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Shutter/BgIceShutter_Draw.s")
