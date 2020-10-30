#include "z_en_geldb.h"

#define FLAGS 0x00000015

#define THIS ((EnGeldB*)thisx)

void EnGeldB_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGeldB_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGeldB_Update(Actor* thisx, GlobalContext* globalCtx);
void EnGeldB_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_GeldB_InitVars = {
    ACTOR_EN_GELDB,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_GELDB,
    sizeof(EnGeldB),
    (ActorFunc)EnGeldB_Init,
    (ActorFunc)EnGeldB_Destroy,
    (ActorFunc)EnGeldB_Update,
    (ActorFunc)EnGeldB_Draw,
};

static ColliderCylinderInit D_80A39FE0 = {
    { COLTYPE_UNK5, AT_OFF, AC_PLAYER | AC_ON, OC_ALL | OC_ON, OT_TYPE1, COLSHAPE_CYLINDER },
    { ELEMTYPE_UNK1, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, TOUCH_OFF, BUMP_ON, OCELEM_ON },
    { 20, 50, 0, { 0, 0, 0 } },
};

static ColliderTrisItemInit  D_80A3A00C[2] = {
    {
        { ELEMTYPE_UNK2, { 0x00000000, 0x00, 0x00 }, { 0xFFC1FFFF, 0x00, 0x00 }, TOUCH_OFF, BUMP_ON, OCELEM_OFF },
        { { { -10.0f, 14.0f, 2.0f }, { -10.0f, -6.0f, 2.0f }, { 9.0f, 14.0f, 2.0f } } },
    },
    {
        { ELEMTYPE_UNK2, { 0x00000000, 0x00, 0x00 }, { 0xFFC1FFFF, 0x00, 0x00 }, TOUCH_OFF, BUMP_ON, OCELEM_OFF },
        { { { -10.0f, -6.0f, 2.0f }, { 9.0f, -6.0f, 2.0f }, { 9.0f, 14.0f, 2.0f } } },
    },
};

static ColliderTrisInit D_80A3A084 = {
    { COLTYPE_METAL_SHIELD, AT_OFF, AC_PLAYER | AC_HARD | AC_ON, OC_OFF, OT_NONE, COLSHAPE_TRIS },
    2, D_80A3A00C,
};

static ColliderQuadInit D_80A3A094 = {
    { COLTYPE_UNK10, AT_ENEMY | AT_ON, AC_OFF, OC_OFF, OT_NONE, COLSHAPE_QUAD },
    { ELEMTYPE_UNK0, { 0xFFCFFFFF, 0x00, 0x08 }, { 0x00000000, 0x00, 0x00 }, TOUCH_UNK7 | TOUCH_ON, BUMP_OFF,
OCELEM_OFF }, { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A35310.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/EnGeldB_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/EnGeldB_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A3559C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A35974.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A35A08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A35B8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A35C24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A35D48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A35DD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A360B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A36130.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A365DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A36690.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A367E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A36830.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A36A10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A36AE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A370BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A37224.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A37670.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A376E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A3792C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A379C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A37D70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A37DEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A37EF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A37F98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A38054.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A380EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A38290.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A38348.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A38430.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A384E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A387D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A38960.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A3907C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A39120.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A391D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A392D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/EnGeldB_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A39688.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A39824.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/EnGeldB_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A39E2C.s")
