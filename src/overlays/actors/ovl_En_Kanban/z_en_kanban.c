#include "z_en_kanban.h"

#define FLAGS 0x00000019

#define THIS ((EnKanban*)thisx)

void EnKanban_Init(Actor* thisx, GlobalContext* globalCtx);
void EnKanban_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnKanban_Update(Actor* thisx, GlobalContext* globalCtx);
void EnKanban_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Kanban_InitVars = {
    ACTOR_EN_KANBAN,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_KANBAN,
    sizeof(EnKanban),
    (ActorFunc)EnKanban_Init,
    (ActorFunc)EnKanban_Destroy,
    (ActorFunc)EnKanban_Update,
    (ActorFunc)EnKanban_Draw,
};

static ColliderCylinderInit D_80A94490 = {
    { COLTYPE_UNK10, AT_ENEMY | AT_ON, AC_PLAYER | AC_ON, OC_ALL | OC_ON, OT_TYPE1, COLSHAPE_CYLINDER },
    { ELEMTYPE_UNK0, { 0xFFCFFFFF, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, TOUCH_ON, BUMP_ON, OCELEM_ON },
    { 20, 50, 5, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kanban/func_80A91FA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kanban/EnKanban_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kanban/EnKanban_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kanban/func_80A921C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kanban/EnKanban_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kanban/EnKanban_Draw.s")
