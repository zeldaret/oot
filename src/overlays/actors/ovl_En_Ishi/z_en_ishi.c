#include "z_en_ishi.h"

#define ROOM 0x00
#define FLAGS 0x00800000

void EnIshi_Init(EnIshi* this, GlobalContext* globalCtx);
void EnIshi_Destroy(EnIshi* this, GlobalContext* globalCtx);
void EnIshi_Update(EnIshi* this, GlobalContext* globalCtx);
void EnIshi_Draw(EnIshi* this, GlobalContext* globalCtx);

/*
const ActorInit En_Ishi_InitVars =
{
    ACTOR_EN_ISHI,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_FIELD_KEEP,
    sizeof(EnIshi),
    (ActorFunc)EnIshi_Init,
    (ActorFunc)EnIshi_Destroy,
    (ActorFunc)EnIshi_Update,
    (ActorFunc)EnIshi_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/func_80A7E460.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/func_80A7E4D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/func_80A7E5A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/func_80A7E824.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/func_80A7EB10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/func_80A7EC04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/func_80A7ECF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/func_80A7ED60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/func_80A7ED94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/func_80A7EE1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/EnIshi_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/EnIshi_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/func_80A7F098.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/func_80A7F0A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/func_80A7F2F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/func_80A7F31C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/func_80A7F3E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/func_80A7F514.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/EnIshi_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/func_80A7F8A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/func_80A7F8CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ishi/EnIshi_Draw.s")
