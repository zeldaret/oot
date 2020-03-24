#include "z_bg_dodoago.h"

#define ROOM 0x00
#define FLAGS 0x00000000

void BgDodoago_Init(BgDodoago* this, GlobalContext* globalCtx);
void BgDodoago_Destroy(BgDodoago* this, GlobalContext* globalCtx);
void BgDodoago_Update(BgDodoago* this, GlobalContext* globalCtx);
void BgDodoago_Draw(BgDodoago* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Dodoago_InitVars = {
    ACTOR_BG_DODOAGO,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_DDAN_OBJECTS,
    sizeof(BgDodoago),
    (ActorFunc)BgDodoago_Init,
    (ActorFunc)BgDodoago_Destroy,
    (ActorFunc)BgDodoago_Update,
    (ActorFunc)BgDodoago_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/func_80871A00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/func_80871A08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/BgDodoago_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/BgDodoago_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/func_80871CF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/func_80871FB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/func_8087227C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/func_80872288.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/BgDodoago_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/BgDodoago_Draw.s")
