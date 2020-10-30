#include "z_en_bom_chu.h"

#define FLAGS 0x00000010

#define THIS ((EnBomChu*)thisx)

void EnBomChu_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBomChu_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBomChu_Update(Actor* thisx, GlobalContext* globalCtx);
void EnBomChu_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Bom_Chu_InitVars = {
    ACTOR_EN_BOM_CHU,
    ACTORTYPE_EXPLOSIVES,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnBomChu),
    (ActorFunc)EnBomChu_Init,
    (ActorFunc)EnBomChu_Destroy,
    (ActorFunc)EnBomChu_Update,
    (ActorFunc)EnBomChu_Draw,
};

static ColliderJntSphItemInit  D_809C6D30[1] = {
    {
        { ELEMTYPE_UNK0, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, TOUCH_OFF, BUMP_ON, OCELEM_ON },
        { 1, { { 0, 0, 0 }, 12 }, 100 },
    },
};

static ColliderJntSphInit D_809C6D54 = {
    { COLTYPE_UNK10, AT_OFF, AC_PLAYER | AC_ON, OC_TYPE2 | OC_TYPE1 | OC_ON, OT_TYPE2, COLSHAPE_JNTSPH },
    1, D_809C6D30,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Chu/EnBomChu_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Chu/EnBomChu_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Chu/func_809C5A1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Chu/func_809C5B38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Chu/func_809C5BA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Chu/func_809C5DDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Chu/func_809C5F48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Chu/func_809C645C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Chu/func_809C649C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Chu/func_809C6548.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Chu/EnBomChu_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom_Chu/EnBomChu_Draw.s")
