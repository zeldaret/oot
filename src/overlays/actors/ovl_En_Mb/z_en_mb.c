#include "z_en_mb.h"

#define FLAGS 0x00000015

#define THIS ((EnMb*)thisx)

void EnMb_Init(Actor* thisx, GlobalContext* globalCtx);
void EnMb_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnMb_Update(Actor* thisx, GlobalContext* globalCtx);
void EnMb_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Mb_InitVars = {
    ACTOR_EN_MB,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_MB,
    sizeof(EnMb),
    (ActorFunc)EnMb_Init,
    (ActorFunc)EnMb_Destroy,
    (ActorFunc)EnMb_Update,
    (ActorFunc)EnMb_Draw,
};

static ColliderCylinderInit D_80AA9C00 = {
    { COLTYPE_UNK0, AT_OFF, AC_PLAYER | AC_ON, OC_ALL | OC_ON, OT_TYPE2, COLSHAPE_CYLINDER },
    { ELEMTYPE_UNK1, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, TOUCH_OFF, BUMP_ON, OCELEM_ON },
    { 20, 70, 0, { 0, 0, 0 } },
};

static ColliderTrisItemInit  D_80AA9C2C[2] = {
    {
        { ELEMTYPE_UNK2, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, TOUCH_OFF, BUMP_NO_AT_INFO |
BUMP_HOOKABLE | BUMP_ON, OCELEM_OFF }, { { { -10.0f, 14.0f, 2.0f }, { -10.0f, -6.0f, 2.0f }, { 9.0f, 14.0f, 2.0f }
} },
    },
    {
        { ELEMTYPE_UNK2, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, TOUCH_OFF, BUMP_NO_AT_INFO |
BUMP_HOOKABLE | BUMP_ON, OCELEM_OFF }, { { { -10.0f, -6.0f, 2.0f }, { 9.0f, -6.0f, 2.0f }, { 9.0f, 14.0f, 2.0f } }
},
    },
};

static ColliderTrisInit D_80AA9CA4 = {
    { COLTYPE_METAL_SHIELD, AT_OFF, AC_PLAYER | AC_HARD | AC_ON, OC_OFF, OT_NONE, COLSHAPE_TRIS },
    2, D_80AA9C2C,
};

static ColliderQuadInit D_80AA9CB4 = {
    { COLTYPE_UNK10, AT_ENEMY | AT_ON, AC_OFF, OC_OFF, OT_NONE, COLSHAPE_QUAD },
    { ELEMTYPE_UNK0, { 0xFFCFFFFF, 0x00, 0x08 }, { 0x00000000, 0x00, 0x00 }, TOUCH_ON, BUMP_OFF, OCELEM_OFF },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6050.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/EnMb_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/EnMb_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6408.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6444.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA652C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA66A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6830.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6898.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA68FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6974.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6A18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6AC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6B80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6BF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6CC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6D20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6DA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6E1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6E7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6F04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA6F8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA702C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA7134.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA71AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA7310.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA7478.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA74BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA77D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA7938.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA7CAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA800C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA8378.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA840C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA8514.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA87D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA8AEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA8DD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA8E88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA8F50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA8FC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA90A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA92B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA9440.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA94D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/EnMb_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/func_80AA9870.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mb/EnMb_Draw.s")
