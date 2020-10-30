#include "z_bg_hidan_sekizou.h"

#define FLAGS 0x00000000

#define THIS ((BgHidanSekizou*)thisx)

void BgHidanSekizou_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHidanSekizou_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHidanSekizou_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHidanSekizou_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Bg_Hidan_Sekizou_InitVars = {
    ACTOR_BG_HIDAN_SEKIZOU,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_HIDAN_OBJECTS,
    sizeof(BgHidanSekizou),
    (ActorFunc)BgHidanSekizou_Init,
    (ActorFunc)BgHidanSekizou_Destroy,
    (ActorFunc)BgHidanSekizou_Update,
    (ActorFunc)BgHidanSekizou_Draw,
};

static ColliderJntSphItemInit  D_8088E180[6] = {
    {
        { ELEMTYPE_UNK0, { 0x20000000, 0x01, 0x04 }, { 0x00000000, 0x00, 0x00 }, TOUCH_SFX2 | TOUCH_SFX1 | TOUCH_ON,
BUMP_OFF, OCELEM_ON }, { 1, { { 0, 30, 40 }, 23 }, 100 },
    },
    {
        { ELEMTYPE_UNK0, { 0x20000000, 0x01, 0x04 }, { 0x00000000, 0x00, 0x00 }, TOUCH_SFX2 | TOUCH_SFX1 | TOUCH_ON,
BUMP_OFF, OCELEM_ON }, { 1, { { 0, 32, 87 }, 30 }, 100 },
    },
    {
        { ELEMTYPE_UNK0, { 0x20000000, 0x01, 0x04 }, { 0x00000000, 0x00, 0x00 }, TOUCH_SFX2 | TOUCH_SFX1 | TOUCH_ON,
BUMP_OFF, OCELEM_ON }, { 1, { { 0, 35, 150 }, 40 }, 100 },
    },
    {
        { ELEMTYPE_UNK0, { 0x20000000, 0x01, 0x04 }, { 0x00000000, 0x00, 0x00 }, TOUCH_SFX2 | TOUCH_SFX1 | TOUCH_ON,
BUMP_OFF, OCELEM_ON }, { 1, { { 0, 30, 40 }, 23 }, 100 },
    },
    {
        { ELEMTYPE_UNK0, { 0x20000000, 0x01, 0x04 }, { 0x00000000, 0x00, 0x00 }, TOUCH_SFX2 | TOUCH_SFX1 | TOUCH_ON,
BUMP_OFF, OCELEM_ON }, { 1, { { 0, 32, 87 }, 30 }, 100 },
    },
    {
        { ELEMTYPE_UNK0, { 0x20000000, 0x01, 0x04 }, { 0x00000000, 0x00, 0x00 }, TOUCH_SFX2 | TOUCH_SFX1 | TOUCH_ON,
BUMP_OFF, OCELEM_ON }, { 1, { { 0, 35, 150 }, 40 }, 100 },
    },
};

static ColliderJntSphInit D_8088E258 = {
    { COLTYPE_UNK10, AT_ENEMY | AT_ON, AC_OFF, OC_PLAYER | OC_ON, OT_TYPE2, COLSHAPE_JNTSPH },
    6, D_8088E180,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sekizou/func_8088CEC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sekizou/BgHidanSekizou_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sekizou/BgHidanSekizou_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sekizou/func_8088D434.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sekizou/func_8088D720.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sekizou/func_8088D750.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sekizou/BgHidanSekizou_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sekizou/func_8088D9F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sekizou/func_8088DC50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sekizou/func_8088DE08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sekizou/BgHidanSekizou_Draw.s")
