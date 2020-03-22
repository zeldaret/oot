#include "z_en_light.h"

#define ROOM 0x00
#define FLAGS 0x00000000

void EnLight_Init(EnLight* this, GlobalContext* globalCtx);
void EnLight_Destroy(EnLight* this, GlobalContext* globalCtx);
void EnLight_Update(EnLight* this, GlobalContext* globalCtx);
void EnLight_Draw(EnLight* this, GlobalContext* globalCtx);

/*
const ActorInit En_Light_InitVars =
{
    ACTOR_EN_LIGHT,
    ACTORTYPE_ITEMACTION,
    ROOM,
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
