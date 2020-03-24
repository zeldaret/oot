#include "z_en_wood02.h"

#define ROOM 0x00
#define FLAGS 0x00000000

void EnWood02_Init(EnWood02* this, GlobalContext* globalCtx);
void EnWood02_Destroy(EnWood02* this, GlobalContext* globalCtx);
void EnWood02_Update(EnWood02* this, GlobalContext* globalCtx);
void EnWood02_Draw(EnWood02* this, GlobalContext* globalCtx);

/*
const ActorInit En_Wood02_InitVars = {
    ACTOR_EN_WOOD02,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_WOOD02,
    sizeof(EnWood02),
    (ActorFunc)EnWood02_Init,
    (ActorFunc)EnWood02_Destroy,
    (ActorFunc)EnWood02_Update,
    (ActorFunc)EnWood02_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wood02/func_80B3AF70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wood02/func_80B3B094.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wood02/EnWood02_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wood02/EnWood02_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wood02/EnWood02_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wood02/EnWood02_Draw.s")
