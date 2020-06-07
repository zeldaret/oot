/*
 * File: z_en_wonder_talk.c
 * Overlay: ovl_En_Wonder_Talk
 * Description: Checkable spot (Green Navi)
 */

#include "z_en_wonder_talk.h"

#define FLAGS 0x08000009

#define THIS ((EnWonderTalk*)thisx)

void EnWonderTalk_Init(Actor* thisx, GlobalContext* globalCtx);
void EnWonderTalk_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnWonderTalk_Update(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Wonder_Talk_InitVars = {
    ACTOR_EN_WONDER_TALK,
    ACTORTYPE_PROP,
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
