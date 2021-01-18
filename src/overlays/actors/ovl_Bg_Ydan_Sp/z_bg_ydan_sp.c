#include "z_bg_ydan_sp.h"

#define FLAGS 0x00000000

#define THIS ((BgYdanSp*)thisx)

void BgYdanSp_Init(Actor* thisx, GlobalContext* globalCtx);
void BgYdanSp_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgYdanSp_Update(Actor* thisx, GlobalContext* globalCtx);
void BgYdanSp_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06003850;
extern UNK_TYPE D_06005F40;
extern UNK_TYPE D_06006050;
extern UNK_TYPE D_060061B0;
extern UNK_TYPE D_06006460;

/*
const ActorInit Bg_Ydan_Sp_InitVars = {
    ACTOR_BG_YDAN_SP,
    ACTORCAT_BG,
    FLAGS,
    OBJECT_YDAN_OBJECTS,
    sizeof(BgYdanSp),
    (ActorFunc)BgYdanSp_Init,
    (ActorFunc)BgYdanSp_Destroy,
    (ActorFunc)BgYdanSp_Update,
    (ActorFunc)BgYdanSp_Draw,
};

static ColliderTrisElementInit D_808C0930[2] = {
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x00 },
            { 0x00020800, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_ON,
            OCELEM_NONE,
        },
        { { { 75.0f, -8.0f, 75.0f }, { -75.0f, -8.0f, 75.0f }, { -75.0f, -8.0f, -75.0f } } },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x00 },
            { 0x00020800, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_ON,
            OCELEM_NONE,
        },
        { { { 140.0f, 288.79998779296875f, 0.0f }, { -140.0f, 288.0f, 0.0f }, { -140.0f, 0.0f, 0.0f } } },
    },
};

static ColliderTrisInit D_808C09A8 = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_TYPE_2,
        COLSHAPE_TRIS,
    },
    2,
    D_808C0930,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Sp/BgYdanSp_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Sp/BgYdanSp_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Sp/func_808BF83C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Sp/func_808BF90C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Sp/func_808BF97C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Sp/func_808BFC50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Sp/func_808BFC90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Sp/func_808BFE50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Sp/func_808C012C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Sp/func_808C0464.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Sp/BgYdanSp_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Sp/BgYdanSp_Draw.s")
