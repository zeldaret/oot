#include "z_shot_sun.h"

#define ROOM 0x00
#define FLAGS 0x00000009

void ShotSun_Init(ShotSun* this, GlobalContext* globalCtx);
void ShotSun_Destroy(ShotSun* this, GlobalContext* globalCtx);
void ShotSun_Update(ShotSun* this, GlobalContext* globalCtx);

/*
const ActorInit Shot_Sun_InitVars = {
    ACTOR_SHOT_SUN,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ShotSun),
    (ActorFunc)ShotSun_Init,
    (ActorFunc)ShotSun_Destroy,
    (ActorFunc)ShotSun_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Shot_Sun/ShotSun_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Shot_Sun/ShotSun_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Shot_Sun/func_80BADDCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Shot_Sun/func_80BADE74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Shot_Sun/func_80BADF0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Shot_Sun/func_80BAE05C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Shot_Sun/ShotSun_Update.s")
