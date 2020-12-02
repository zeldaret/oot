#include "z_en_fz.h"

#define FLAGS 0x00000415

#define THIS ((EnFz*)thisx)

void EnFz_Init(Actor* thisx, GlobalContext* globalCtx);
void EnFz_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnFz_Update(Actor* thisx, GlobalContext* globalCtx);
void EnFz_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_060030A0;
extern UNK_TYPE D_060030A8;
extern UNK_TYPE D_06003158;
extern UNK_TYPE D_06003160;

/*
const ActorInit En_Fz_InitVars = {
    ACTOR_EN_FZ,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_FZ,
    sizeof(EnFz),
    (ActorFunc)EnFz_Init,
    (ActorFunc)EnFz_Destroy,
    (ActorFunc)EnFz_Update,
    (ActorFunc)EnFz_Draw,
};

static ColliderCylinderInit_Set3 sCylinderInit = {
    { COLTYPE_NONE, AT_ON | AT_ENEMY, AC_ON | AC_PLAYER, OC_ON | OC_ALL, COLSHAPE_CYLINDER },
    { ELEMTYPE_UNK0,
      { 0xFFCFFFFF, 0x00, 0x00 },
      { 0xFFCE0FDB, 0x00, 0x00 },
      TOUCH_ON | TOUCH_SFX_NORMAL,
      BUMP_ON | BUMP_HOOKABLE,
      OCELEM_ON },
    { 30, 80, 0, { 0, 0, 0 } },
};

static ColliderCylinderInit_Set3 sCylinderInit = {
    { COLTYPE_METAL, AT_OFF, AC_ON |  AC_HARD  | AC_PLAYER, OC_OFF, COLSHAPE_CYLINDER },
    { ELEMTYPE_UNK0, { 0xFFCFFFFF, 0x00, 0x00 }, { 0x0001F024, 0x00, 0x00 }, TOUCH_OFF, BUMP_ON, OCELEM_OFF },
    { 35, 80, 0, { 0, 0, 0 } },
};

static ColliderCylinderInit_Set3 sCylinderInit = {
    { COLTYPE_NONE, AT_ON | AT_ENEMY, AC_OFF, OC_OFF, COLSHAPE_CYLINDER },
    { ELEMTYPE_UNK0,
      { 0x20000000, 0x02, 0x08 },
      { 0x00000000, 0x00, 0x00 },
      TOUCH_ON | TOUCH_SFX_NORMAL,
      BUMP_OFF,
      OCELEM_OFF },
    { 20, 30, -15, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/EnFz_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/EnFz_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A1FF8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A200B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20100.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A202FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A203DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A204A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20704.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20748.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20774.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A207F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20830.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20880.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A208A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20938.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20978.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A209B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A209E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20A20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20A4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20A88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20AC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20CAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20D4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20D7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20DBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20E84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A20EC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/EnFz_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/EnFz_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A2145C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A21500.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A215BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fz/func_80A218A8.s")
