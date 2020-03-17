#include "z_en_takara_man.h"

#define ROOM  0x00
#define FLAGS 0x08000039

void EnTakaraMan_Init(EnTakaraMan* this, GlobalContext* globalCtx);
void EnTakaraMan_Destroy(EnTakaraMan* this, GlobalContext* globalCtx);
void EnTakaraMan_Update(EnTakaraMan* this, GlobalContext* globalCtx);
void EnTakaraMan_Draw(EnTakaraMan* this, GlobalContext* globalCtx);

/*
const ActorInit En_Takara_Man_InitVars =
{
    ACTOR_EN_TAKARA_MAN,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_TS,
    sizeof(EnTakaraMan),
    (ActorFunc)EnTakaraMan_Init,
    (ActorFunc)EnTakaraMan_Destroy,
    (ActorFunc)EnTakaraMan_Update,
    (ActorFunc)EnTakaraMan_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Takara_Man/EnTakaraMan_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Takara_Man/EnTakaraMan_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Takara_Man/func_80B176E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Takara_Man/func_80B1778C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Takara_Man/func_80B17934.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Takara_Man/func_80B17A6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Takara_Man/func_80B17AC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Takara_Man/func_80B17B14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Takara_Man/EnTakaraMan_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Takara_Man/func_80B17C4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Takara_Man/EnTakaraMan_Draw.s")
