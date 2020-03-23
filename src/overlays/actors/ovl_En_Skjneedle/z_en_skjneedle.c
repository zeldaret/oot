#include "z_en_skjneedle.h"

#define ROOM 0x00
#define FLAGS 0x00000205

void EnSkjneedle_Init(EnSkjneedle* this, GlobalContext* globalCtx);
void EnSkjneedle_Destroy(EnSkjneedle* this, GlobalContext* globalCtx);
void EnSkjneedle_Update(EnSkjneedle* this, GlobalContext* globalCtx);
void EnSkjneedle_Draw(EnSkjneedle* this, GlobalContext* globalCtx);

/*
const ActorInit En_Skjneedle_InitVars =
{
    ACTOR_EN_SKJNEEDLE,
    ACTORTYPE_ENEMY,
    ROOM,
    FLAGS,
    OBJECT_SKJ,
    sizeof(EnSkjneedle),
    (ActorFunc)EnSkjneedle_Init,
    (ActorFunc)EnSkjneedle_Destroy,
    (ActorFunc)EnSkjneedle_Update,
    (ActorFunc)EnSkjneedle_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skjneedle/EnSkjneedle_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skjneedle/EnSkjneedle_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skjneedle/func_80B01F6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skjneedle/EnSkjneedle_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skjneedle/EnSkjneedle_Draw.s")
