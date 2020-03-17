#include "z_bg_po_event.h"

#define ROOM  0x00
#define FLAGS 0x00000000

void BgPoEvent_Init(BgPoEvent* this, GlobalContext* globalCtx);
void BgPoEvent_Destroy(BgPoEvent* this, GlobalContext* globalCtx);
void BgPoEvent_Update(BgPoEvent* this, GlobalContext* globalCtx);
void BgPoEvent_Draw(BgPoEvent* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Po_Event_InitVars =
{
    ACTOR_BG_PO_EVENT,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_PO_SISTERS,
    sizeof(BgPoEvent),
    (ActorFunc)BgPoEvent_Init,
    (ActorFunc)BgPoEvent_Destroy,
    (ActorFunc)BgPoEvent_Update,
    (ActorFunc)BgPoEvent_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Event/func_808A6210.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Event/func_808A658C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Event/BgPoEvent_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Event/BgPoEvent_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Event/func_808A68D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Event/func_808A69DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Event/func_808A6A94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Event/func_808A6BC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Event/func_808A6CCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Event/func_808A6F7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Event/func_808A7138.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Event/func_808A7238.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Event/func_808A72AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Event/func_808A7328.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Event/func_808A7444.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Event/func_808A7500.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Event/func_808A7530.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Event/func_808A7568.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Event/func_808A75B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Event/func_808A780C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Event/BgPoEvent_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Po_Event/BgPoEvent_Draw.s")

