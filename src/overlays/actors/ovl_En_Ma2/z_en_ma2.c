#include "z_en_ma2.h"

#define ROOM 0x00
#define FLAGS 0x02000039

void EnMa2_Init(EnMa2* this, GlobalContext* globalCtx);
void EnMa2_Destroy(EnMa2* this, GlobalContext* globalCtx);
void EnMa2_Update(EnMa2* this, GlobalContext* globalCtx);
void EnMa2_Draw(EnMa2* this, GlobalContext* globalCtx);

/*
const ActorInit En_Ma2_InitVars =
{
    ACTOR_EN_MA2,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_MA2,
    sizeof(EnMa2),
    (ActorFunc)EnMa2_Init,
    (ActorFunc)EnMa2_Destroy,
    (ActorFunc)EnMa2_Update,
    (ActorFunc)EnMa2_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma2/func_80AA19A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma2/func_80AA1A38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma2/func_80AA1AE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma2/func_80AA1B58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma2/func_80AA1C68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma2/func_80AA1CC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma2/func_80AA1D44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma2/func_80AA1DB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma2/EnMa2_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma2/EnMa2_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma2/func_80AA2018.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma2/func_80AA204C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma2/func_80AA20E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma2/func_80AA21C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma2/EnMa2_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma2/func_80AA2354.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma2/func_80AA2590.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma2/EnMa2_Draw.s")
