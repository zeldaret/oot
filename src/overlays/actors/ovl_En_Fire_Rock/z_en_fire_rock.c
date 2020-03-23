#include "z_en_fire_rock.h"

#define ROOM 0x00
#define FLAGS 0x00000030

void EnFireRock_Init(EnFireRock* this, GlobalContext* globalCtx);
void EnFireRock_Destroy(EnFireRock* this, GlobalContext* globalCtx);
void EnFireRock_Update(EnFireRock* this, GlobalContext* globalCtx);
void EnFireRock_Draw(EnFireRock* this, GlobalContext* globalCtx);

/*
const ActorInit En_Fire_Rock_InitVars =
{
    ACTOR_EN_FIRE_ROCK,
    ACTORTYPE_ENEMY,
    ROOM,
    FLAGS,
    OBJECT_EFC_STAR_FIELD,
    sizeof(EnFireRock),
    (ActorFunc)EnFireRock_Init,
    (ActorFunc)EnFireRock_Destroy,
    (ActorFunc)EnFireRock_Update,
    (ActorFunc)EnFireRock_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fire_Rock/EnFireRock_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fire_Rock/EnFireRock_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fire_Rock/func_80A120CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fire_Rock/func_80A1241C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fire_Rock/func_80A125B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fire_Rock/func_80A12730.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fire_Rock/EnFireRock_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fire_Rock/EnFireRock_Draw.s")
