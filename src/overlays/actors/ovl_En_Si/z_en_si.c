#include "z_en_si.h"

#define ROOM 0x00
#define FLAGS 0x00000201

void EnSi_Init(EnSi* this, GlobalContext* globalCtx);
void EnSi_Destroy(EnSi* this, GlobalContext* globalCtx);
void EnSi_Update(EnSi* this, GlobalContext* globalCtx);
void EnSi_Draw(EnSi* this, GlobalContext* globalCtx);

/*
const ActorInit En_Si_InitVars = {
    ACTOR_EN_SI,
    ACTORTYPE_ITEMACTION,
    ROOM,
    FLAGS,
    OBJECT_ST,
    sizeof(EnSi),
    (ActorFunc)EnSi_Init,
    (ActorFunc)EnSi_Destroy,
    (ActorFunc)EnSi_Update,
    (ActorFunc)EnSi_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Si/EnSi_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Si/EnSi_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Si/func_80AFB748.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Si/func_80AFB768.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Si/func_80AFB89C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Si/func_80AFB950.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Si/EnSi_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Si/EnSi_Draw.s")
