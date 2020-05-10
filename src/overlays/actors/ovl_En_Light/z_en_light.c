#include "z_en_light.h"

#define FLAGS 0x00000000

#define THIS ((EnLight*)thisx)

void EnLight_Init(Actor* thisx, GlobalContext* globalCtx);
void EnLight_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnLight_Update(Actor* thisx, GlobalContext* globalCtx);
void EnLight_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Light_InitVars = {
    ACTOR_EN_LIGHT,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnLight),
    (ActorFunc)EnLight_Init,
    (ActorFunc)EnLight_Destroy,
    (ActorFunc)EnLight_Update,
    (ActorFunc)EnLight_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Light/EnLight_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Light/EnLight_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Light/func_80A9DD50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Light/EnLight_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Light/func_80A9E074.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Light/EnLight_Draw.s")
