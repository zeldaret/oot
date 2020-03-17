#include "z_en_kanban.h"

#define ROOM  0x00
#define FLAGS 0x00000019

void EnKanban_Init(EnKanban* this, GlobalContext* globalCtx);
void EnKanban_Destroy(EnKanban* this, GlobalContext* globalCtx);
void EnKanban_Update(EnKanban* this, GlobalContext* globalCtx);
void EnKanban_Draw(EnKanban* this, GlobalContext* globalCtx);

/*
const ActorInit En_Kanban_InitVars =
{
    ACTOR_EN_KANBAN,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_KANBAN,
    sizeof(EnKanban),
    (ActorFunc)EnKanban_Init,
    (ActorFunc)EnKanban_Destroy,
    (ActorFunc)EnKanban_Update,
    (ActorFunc)EnKanban_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kanban/func_80A91FA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kanban/EnKanban_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kanban/EnKanban_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kanban/func_80A921C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kanban/EnKanban_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kanban/EnKanban_Draw.s")
