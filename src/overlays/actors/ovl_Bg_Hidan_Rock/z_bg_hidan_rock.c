#include "z_bg_hidan_rock.h"

#define FLAGS 0x00000000

#define THIS ((BgHidanRock*)thisx)

void BgHidanRock_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHidanRock_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHidanRock_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHidanRock_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Bg_Hidan_Rock_InitVars = {
    ACTOR_BG_HIDAN_ROCK,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_HIDAN_OBJECTS,
    sizeof(BgHidanRock),
    (ActorFunc)BgHidanRock_Init,
    (ActorFunc)BgHidanRock_Destroy,
    (ActorFunc)BgHidanRock_Update,
    (ActorFunc)BgHidanRock_Draw,
};

static ColliderCylinderInit D_8088BF8C = {
    { COLTYPE_UNK10, AT_ENEMY | AT_ON, AC_OFF, OC_OFF, OT_TYPE2, COLSHAPE_CYLINDER },
    { ELEMTYPE_UNK0, { 0x20000000, 0x01, 0x04 }, { 0xFFCFFFFF, 0x00, 0x00 }, TOUCH_SFX2 | TOUCH_SFX1 | TOUCH_ON,
BUMP_OFF, OCELEM_OFF }, { 45, 77, -40, { 3310, 120, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Rock/BgHidanRock_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Rock/BgHidanRock_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Rock/func_8088B24C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Rock/func_8088B268.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Rock/func_8088B5F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Rock/func_8088B634.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Rock/func_8088B69C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Rock/func_8088B79C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Rock/func_8088B90C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Rock/func_8088B954.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Rock/func_8088B990.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Rock/BgHidanRock_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Rock/func_8088BC40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Rock/BgHidanRock_Draw.s")
