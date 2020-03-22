#include "z_en_js.h"

#define ROOM 0x00
#define FLAGS 0x00000009

void EnJs_Init(EnJs* this, GlobalContext* globalCtx);
void EnJs_Destroy(EnJs* this, GlobalContext* globalCtx);
void EnJs_Update(EnJs* this, GlobalContext* globalCtx);
void EnJs_Draw(EnJs* this, GlobalContext* globalCtx);

/*
const ActorInit En_Js_InitVars =
{
    ACTOR_EN_JS,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_JS,
    sizeof(EnJs),
    (ActorFunc)EnJs_Init,
    (ActorFunc)EnJs_Destroy,
    (ActorFunc)EnJs_Update,
    (ActorFunc)EnJs_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Js/func_80A88E10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Js/EnJs_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Js/EnJs_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Js/func_80A88F64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Js/func_80A89008.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Js/func_80A89078.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Js/func_80A890C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Js/func_80A8910C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Js/func_80A89160.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Js/func_80A891C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Js/func_80A89294.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Js/func_80A89304.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Js/EnJs_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Js/func_80A895C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Js/func_80A895F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Js/EnJs_Draw.s")
