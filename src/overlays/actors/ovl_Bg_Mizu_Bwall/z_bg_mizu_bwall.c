#include "z_bg_mizu_bwall.h"

#define FLAGS 0x00000010

#define THIS ((BgMizuBwall*)thisx)

void BgMizuBwall_Init(Actor* thisx, GlobalContext* globalCtx);
void BgMizuBwall_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgMizuBwall_Update(Actor* thisx, GlobalContext* globalCtx);
void BgMizuBwall_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Bg_Mizu_Bwall_InitVars = {
    ACTOR_BG_MIZU_BWALL,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_MIZU_OBJECTS,
    sizeof(BgMizuBwall),
    (ActorFunc)BgMizuBwall_Init,
    (ActorFunc)BgMizuBwall_Destroy,
    (ActorFunc)BgMizuBwall_Update,
    (ActorFunc)BgMizuBwall_Draw,
};

static ColliderTrisElementInit D_8089D6C0[2] = {
    {
        {
            ELEMTYPE_UNK0,
            { 0x00000000, 0x00, 0x00 },
            { 0x00000008, 0x00, 0x00 },
            TOUCH_OFF,
            BUMP_ON,
            OCELEM_OFF,
        },
        { { { -40.0f, 0.0f, -40.0f }, { -40.0f, 0.0f, 40.0f }, { 40.0f, 0.0f, 40.0f } } },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0x00000000, 0x00, 0x00 },
            { 0x00000008, 0x00, 0x00 },
            TOUCH_OFF,
            BUMP_ON,
            OCELEM_OFF,
        },
        { { { -40.0f, 0.0f, -40.0f }, { 40.0f, 0.0f, 40.0f }, { 40.0f, 0.0f, -40.0f } } },
    },
};

static ColliderTrisInit D_8089D738 = {
    {
        COLTYPE_NONE,
        AT_OFF,
        AC_ON | AC_PLAYER,
        OC_OFF,
        OT_NONE,
        COLSHAPE_TRIS,
    },
    2,
    D_8089D6C0,
};

static ColliderTrisElementInit D_8089D748[1] = {
    {
        {
            ELEMTYPE_UNK0,
            { 0x00000000, 0x00, 0x00 },
            { 0x00000008, 0x00, 0x00 },
            TOUCH_OFF,
            BUMP_ON,
            OCELEM_OFF,
        },
        { { { 0.0f, 116.0f, 0.0f }, { 0.0f, 0.0f, 70.0f }, { 0.0f, 0.0f, -70.0f } } },
    },
};

static ColliderTrisInit D_8089D784 = {
    {
        COLTYPE_NONE,
        AT_OFF,
        AC_ON | AC_PLAYER,
        OC_OFF,
        OT_NONE,
        COLSHAPE_TRIS,
    },
    1,
    D_8089D748,
};

static ColliderTrisElementInit D_8089D794[2] = {
    {
        {
            ELEMTYPE_UNK0,
            { 0x00000000, 0x00, 0x00 },
            { 0x00000008, 0x00, 0x00 },
            TOUCH_OFF,
            BUMP_ON,
            OCELEM_OFF,
        },
        { { { 0.0f, 120.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 60.0f, 0.0f, 0.0f } } },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0x00000000, 0x00, 0x00 },
            { 0x00000008, 0x00, 0x00 },
            TOUCH_OFF,
            BUMP_ON,
            OCELEM_OFF,
        },
        { { { 0.0f, 120.0f, 0.0f }, { 60.0f, 0.0f, 0.0f }, { 60.0f, 120.0f, 0.0f } } },
    },
};

static ColliderTrisInit D_8089D80C = {
    {
        COLTYPE_NONE,
        AT_OFF,
        AC_ON | AC_PLAYER,
        OC_OFF,
        OT_NONE,
        COLSHAPE_TRIS,
    },
    2,
    D_8089D794,
};

static ColliderTrisElementInit D_8089D794[2] = {
    {
        {
            ELEMTYPE_UNK0,
            { 0x00000000, 0x00, 0x00 },
            { 0x00000008, 0x00, 0x00 },
            TOUCH_OFF,
            BUMP_ON,
            OCELEM_OFF,
        },
        { { { 0.0f, 120.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 60.0f, 0.0f, 0.0f } } },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0x00000000, 0x00, 0x00 },
            { 0x00000008, 0x00, 0x00 },
            TOUCH_OFF,
            BUMP_ON,
            OCELEM_OFF,
        },
        { { { 0.0f, 120.0f, 0.0f }, { 60.0f, 0.0f, 0.0f }, { 60.0f, 120.0f, 0.0f } } },
    },
};

static ColliderTrisInit D_8089D81C = {
    {
        COLTYPE_NONE,
        AT_OFF,
        AC_ON | AC_PLAYER,
        OC_OFF,
        OT_NONE,
        COLSHAPE_TRIS,
    },
    2,
    D_8089D794,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Bwall/func_8089C480.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Bwall/BgMizuBwall_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Bwall/BgMizuBwall_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Bwall/func_8089CE04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Bwall/func_8089CF84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Bwall/func_8089D258.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Bwall/func_8089D350.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Bwall/func_8089D37C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Bwall/BgMizuBwall_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Bwall/BgMizuBwall_Draw.s")
