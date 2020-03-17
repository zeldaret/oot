#include "z_en_wall_tubo.h"

#define ROOM  0x00
#define FLAGS 0x00000010

void EnWallTubo_Init(EnWallTubo* this, GlobalContext* globalCtx);
void EnWallTubo_Destroy(EnWallTubo* this, GlobalContext* globalCtx);
void EnWallTubo_Update(EnWallTubo* this, GlobalContext* globalCtx);

/*
const ActorInit En_Wall_Tubo_InitVars =
{
    ACTOR_EN_WALL_TUBO,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnWallTubo),
    (ActorFunc)EnWallTubo_Init,
    (ActorFunc)EnWallTubo_Destroy,
    (ActorFunc)EnWallTubo_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wall_Tubo/EnWallTubo_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wall_Tubo/EnWallTubo_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wall_Tubo/func_80B2EE5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wall_Tubo/func_80B2EE9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wall_Tubo/func_80B2F0B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wall_Tubo/EnWallTubo_Update.s")
