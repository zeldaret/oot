#include "z_en_sa.h"

#define ROOM 0x00
#define FLAGS 0x02000019

void EnSa_Init(EnSa* this, GlobalContext* globalCtx);
void EnSa_Destroy(EnSa* this, GlobalContext* globalCtx);
void EnSa_Update(EnSa* this, GlobalContext* globalCtx);
void EnSa_Draw(EnSa* this, GlobalContext* globalCtx);

/*
const ActorInit En_Sa_InitVars = {
    ACTOR_EN_SA,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_SA,
    sizeof(EnSa),
    (ActorFunc)EnSa_Init,
    (ActorFunc)EnSa_Destroy,
    (ActorFunc)EnSa_Update,
    (ActorFunc)EnSa_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF5560.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF55E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF56F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF57D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF5894.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF58B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF594C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF59E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF5A74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF5B10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF5BA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF5C40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF5CD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF5CE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF5D8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF5DFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF5F34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF603C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF609C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF6130.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF6170.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/EnSa_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/EnSa_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF6448.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF67D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF683C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF68E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF6B20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/EnSa_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF6D6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF6F0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/EnSa_Draw.s")
