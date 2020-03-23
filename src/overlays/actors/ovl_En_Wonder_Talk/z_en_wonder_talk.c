#include "z_en_wonder_talk.h"

#define ROOM 0x00
#define FLAGS 0x08000009

void EnWonderTalk_Init(EnWonderTalk* this, GlobalContext* globalCtx);
void EnWonderTalk_Destroy(EnWonderTalk* this, GlobalContext* globalCtx);
void EnWonderTalk_Update(EnWonderTalk* this, GlobalContext* globalCtx);

/*
const ActorInit En_Wonder_Talk_InitVars =
{
    ACTOR_EN_WONDER_TALK,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnWonderTalk),
    (ActorFunc)EnWonderTalk_Init,
    (ActorFunc)EnWonderTalk_Destroy,
    (ActorFunc)EnWonderTalk_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wonder_Talk/EnWonderTalk_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wonder_Talk/EnWonderTalk_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wonder_Talk/func_80B391CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wonder_Talk/func_80B3943C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wonder_Talk/func_80B395F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wonder_Talk/EnWonderTalk_Update.s")
