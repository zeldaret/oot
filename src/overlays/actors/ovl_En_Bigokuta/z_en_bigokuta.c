#include "z_en_bigokuta.h"

#define FLAGS 0x00000035

#define THIS ((EnBigokuta*)thisx)

void EnBigokuta_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBigokuta_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBigokuta_Update(Actor* thisx, GlobalContext* globalCtx);
void EnBigokuta_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Bigokuta_InitVars = {
    ACTOR_EN_BIGOKUTA,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_BIGOKUTA,
    sizeof(EnBigokuta),
    (ActorFunc)EnBigokuta_Init,
    (ActorFunc)EnBigokuta_Destroy,
    (ActorFunc)EnBigokuta_Update,
    (ActorFunc)EnBigokuta_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/EnBigokuta_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/EnBigokuta_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BCE3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BCEBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BCF68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BD1C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BD2E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BD318.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BD370.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BD3AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BD3E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BD3F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BD47C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BD4A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BD524.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BD5E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BD658.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BD6B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BD768.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BD7F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BD84C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BD8DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BDAE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BDB90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BDC08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BDF34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BDFC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BE058.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BE180.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BE26C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BE3E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BE4A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BE518.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BE568.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BE798.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BE8DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/EnBigokuta_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/func_809BEBBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bigokuta/EnBigokuta_Draw.s")
