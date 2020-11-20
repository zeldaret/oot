#include "z_en_dodongo.h"

#define FLAGS 0x00000015

#define THIS ((EnDodongo*)thisx)

void EnDodongo_Init(Actor* thisx, GlobalContext* globalCtx);
void EnDodongo_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnDodongo_Update(Actor* thisx, GlobalContext* globalCtx);
void EnDodongo_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Dodongo_InitVars = {
    ACTOR_EN_DODONGO,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_DODONGO,
    sizeof(EnDodongo),
    (ActorFunc)EnDodongo_Init,
    (ActorFunc)EnDodongo_Destroy,
    (ActorFunc)EnDodongo_Update,
    (ActorFunc)EnDodongo_Draw,
};

static ColliderQuadInit D_809FA98C = {
    { COLTYPE_NONE, AT_ON | AT_ENEMY, AC_OFF, OC_OFF, OT_NONE, COLSHAPE_QUAD },
    { ELEMTYPE_UNK0,
      { 0x20000000, 0x01, 0x10 },
      { 0x00000000, 0x00, 0x00 },
      TOUCH_ON |  TOUCH_SFX_NORMAL  | TOUCH_UNK7,
      BUMP_OFF,
      OCELEM_OFF },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

static ColliderTrisElementInit D_809FA8C8[3] = {
    {
        { ELEMTYPE_UNK2,
          { 0x00000000, 0x00, 0x00 },
          { 0xF24BF96E, 0x00, 0x00 },
          TOUCH_OFF,
          BUMP_ON |  BUMP_HOOKABLE  | BUMP_NO_AT_INFO,
          OCELEM_OFF },
        { { { -10.0f, 14.0f, 2.0f }, { -10.0f, -6.0f, 2.0f }, { 9.0f, 14.0f, 2.0f } } },
    },
    {
        { ELEMTYPE_UNK2,
          { 0x00000000, 0x00, 0x00 },
          { 0xFFCBF96E, 0x00, 0x00 },
          TOUCH_OFF,
          BUMP_ON |  BUMP_HOOKABLE  | BUMP_NO_AT_INFO,
          OCELEM_OFF },
        { { { -10.0f, -6.0f, 2.0f }, { 9.0f, -6.0f, 2.0f }, { 9.0f, 14.0f, 2.0f } } },
    },
    {
        { ELEMTYPE_UNK2,
          { 0x00000000, 0x00, 0x00 },
          { 0xFFCBF96E, 0x00, 0x00 },
          TOUCH_OFF,
          BUMP_ON |  BUMP_HOOKABLE  | BUMP_NO_AT_INFO,
          OCELEM_OFF },
        { { { -10.0f, -6.0f, 2.0f }, { 9.0f, -6.0f, 2.0f }, { 9.0f, 14.0f, 2.0f } } },
    },
};

static ColliderTrisInit D_809FA97C = {
    { COLTYPE_METAL, AT_OFF, AC_ON |  AC_HARD  | AC_PLAYER, OC_OFF, OT_NONE, COLSHAPE_TRIS },
    3,
    D_809FA8C8,
};

static ColliderJntSphElementInit D_809FA7E0[6] = {
    {
        { ELEMTYPE_UNK0, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, TOUCH_OFF, BUMP_ON, OCELEM_ON },
        { 15, { { 0, 0, 0 }, 17 }, 100 },
    },
    {
        { ELEMTYPE_UNK0, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, TOUCH_OFF, BUMP_ON, OCELEM_ON },
        { 14, { { 0, 0, 0 }, 15 }, 100 },
    },
    {
        { ELEMTYPE_UNK0, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, TOUCH_OFF, BUMP_ON, OCELEM_ON },
        { 13, { { 0, 0, 0 }, 10 }, 100 },
    },
    {
        { ELEMTYPE_UNK0, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, TOUCH_OFF, BUMP_OFF, OCELEM_ON },
        { 21, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { ELEMTYPE_UNK0, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, TOUCH_OFF, BUMP_OFF, OCELEM_ON },
        { 28, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { ELEMTYPE_UNK0,
          { 0x00000000, 0x00, 0x00 },
          { 0x0D800691, 0x00, 0x00 },
          TOUCH_OFF,
          BUMP_ON,
          OCELEM_ON | OCELEM_UNK3 },
        { 6, { { 0, 0, 0 }, 35 }, 100 },
    },
};

static ColliderJntSphInit D_809FA8B8 = {
    { COLTYPE_HIT0, AT_ON | AT_ENEMY, AC_ON | AC_PLAYER, OC_ON | OC_ALL, OT_TYPE1, COLSHAPE_JNTSPH },
    6,
    D_809FA7E0,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F8250.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F8258.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/EnDodongo_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/EnDodongo_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F89CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F8A34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F8AD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F8B2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F8B7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F8BFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F8C94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F8D0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F8D58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F8F2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F9424.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F9760.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F97C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F9A80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F9AF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F9C3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F9CA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809F9DC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/EnDodongo_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809FA0F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809FA14C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/EnDodongo_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809FA674.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodongo/func_809FA6D8.s")
