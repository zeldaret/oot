#include "z_en_wonder_talk2.h"

#define ROOM 0x00
#define FLAGS 0x08000009

void EnWonderTalk2_Init(EnWonderTalk2* this, GlobalContext* globalCtx);
void EnWonderTalk2_Destroy(EnWonderTalk2* this, GlobalContext* globalCtx);
void EnWonderTalk2_Update(EnWonderTalk2* this, GlobalContext* globalCtx);

/*
const ActorInit En_Wonder_Talk2_InitVars =
{
    ACTOR_EN_WONDER_TALK2,
    ACTORTYPE_ITEMACTION,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnWonderTalk2),
    (ActorFunc)EnWonderTalk2_Init,
    (ActorFunc)EnWonderTalk2_Destroy,
    (ActorFunc)EnWonderTalk2_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wonder_Talk2/EnWonderTalk2_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wonder_Talk2/EnWonderTalk2_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wonder_Talk2/func_80B3A10C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wonder_Talk2/func_80B3A15C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wonder_Talk2/func_80B3A3D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wonder_Talk2/func_80B3A4F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wonder_Talk2/func_80B3A770.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wonder_Talk2/EnWonderTalk2_Update.s")
