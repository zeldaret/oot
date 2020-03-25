#include "z_en_dodongo.h"

#define ROOM 0x00
#define FLAGS 0x00000015

void EnDodongo_Init(EnDodongo* this, GlobalContext* globalCtx);
void EnDodongo_Destroy(EnDodongo* this, GlobalContext* globalCtx);
void EnDodongo_Update(EnDodongo* this, GlobalContext* globalCtx);
void EnDodongo_Draw(EnDodongo* this, GlobalContext* globalCtx);

/*
const ActorInit En_Dodongo_InitVars = {
    ACTOR_EN_DODONGO,
    ACTORTYPE_ENEMY,
    ROOM,
    FLAGS,
    OBJECT_DODONGO,
    sizeof(EnDodongo),
    (ActorFunc)EnDodongo_Init,
    (ActorFunc)EnDodongo_Destroy,
    (ActorFunc)EnDodongo_Update,
    (ActorFunc)EnDodongo_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F8250.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F8258.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/EnDodongo_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/EnDodongo_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F89CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F8A34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F8AD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F8B2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F8B7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F8BFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F8C94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F8D0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F8D58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F8F2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F9424.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F9760.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F97C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F9A80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F9AF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F9C3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F9CA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F9DC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/EnDodongo_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809FA0F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809FA14C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/EnDodongo_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809FA674.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809FA6D8.s")
