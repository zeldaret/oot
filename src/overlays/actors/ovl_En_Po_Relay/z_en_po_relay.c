#include "z_en_po_relay.h"

#define ROOM  0x00
#define FLAGS 0x00011019

void EnPoRelay_Init(EnPoRelay* this, GlobalContext* globalCtx);
void EnPoRelay_Destroy(EnPoRelay* this, GlobalContext* globalCtx);
void EnPoRelay_Update(EnPoRelay* this, GlobalContext* globalCtx);
void EnPoRelay_Draw(EnPoRelay* this, GlobalContext* globalCtx);

/*
const ActorInit En_Po_Relay_InitVars =
{
    ACTOR_EN_PO_RELAY,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_TK,
    sizeof(EnPoRelay),
    (ActorFunc)EnPoRelay_Init,
    (ActorFunc)EnPoRelay_Destroy,
    (ActorFunc)EnPoRelay_Update,
    (ActorFunc)EnPoRelay_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Relay/EnPoRelay_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Relay/EnPoRelay_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Relay/func_80AD790C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Relay/func_80AD7944.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Relay/func_80AD7984.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Relay/func_80AD7A4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Relay/func_80AD7A88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Relay/func_80AD7B34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Relay/func_80AD7BF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Relay/func_80AD7C64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Relay/func_80AD8174.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Relay/func_80AD8234.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Relay/func_80AD830C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Relay/EnPoRelay_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Relay/func_80AD88D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Relay/EnPoRelay_Draw.s")
