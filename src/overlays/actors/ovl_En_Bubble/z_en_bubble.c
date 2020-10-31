#include "z_en_bubble.h"

#define FLAGS 0x00000001

#define THIS ((EnBubble*)thisx)

void EnBubble_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBubble_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBubble_Update(Actor* thisx, GlobalContext* globalCtx);
void EnBubble_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Bubble_InitVars = {
    ACTOR_EN_BUBBLE,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_BUBBLE,
    sizeof(EnBubble),
    (ActorFunc)EnBubble_Init,
    (ActorFunc)EnBubble_Destroy,
    (ActorFunc)EnBubble_Update,
    (ActorFunc)EnBubble_Draw,
};

static ColliderJntSphElementInit  D_809CCE30[2] = {
    {
        { ELEMTYPE_UNK0, { 0x00000000, 0x00, 0x04 }, { 0xFFCFD753, 0x00, 0x00 }, TOUCH_OFF, BUMP_ON, OCELEM_ON },
        { 0, { { 0, 0, 0 }, 16 }, 100 },
    },
    {
        { ELEMTYPE_UNK0, { 0x00000000, 0x00, 0x00 }, { 0x00002824, 0x00, 0x00 }, TOUCH_OFF, BUMP_NO_HITMARK |
BUMP_NO_SWORD_SFX | BUMP_NO_DAMAGE | BUMP_NO_AT_INFO | BUMP_ON, OCELEM_OFF }, { 0, { { 0, 0, 0 }, 16 }, 100 },
    },
};

static ColliderJntSphInit D_809CCE78 = {
    { COLTYPE_UNK6, AT_ENEMY | AT_ON, AC_PLAYER | AC_ON, OC_ALL | OC_ON, OT_TYPE1, COLSHAPE_JNTSPH },
    2, D_809CCE30,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bubble/func_809CBC00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bubble/func_809CBCBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bubble/func_809CBCEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bubble/func_809CBD10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bubble/func_809CBD78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bubble/func_809CBFD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bubble/func_809CC020.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bubble/func_809CC074.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bubble/func_809CC0FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bubble/func_809CC16C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bubble/func_809CC648.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bubble/func_809CC6E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bubble/func_809CC774.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bubble/EnBubble_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bubble/EnBubble_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bubble/func_809CC9B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bubble/func_809CCA60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bubble/func_809CCAA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bubble/func_809CCAF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bubble/EnBubble_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bubble/EnBubble_Draw.s")
