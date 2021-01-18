#include "z_bg_hidan_sima.h"

#define FLAGS 0x00000000

#define THIS ((BgHidanSima*)thisx)

void BgHidanSima_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHidanSima_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHidanSima_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHidanSima_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_0600C338;
extern UNK_TYPE D_0600C470;
extern UNK_TYPE D_0600DC30;
extern UNK_TYPE D_0600FAE8;
extern UNK_TYPE D_060120E8;

/*
const ActorInit Bg_Hidan_Sima_InitVars = {
    ACTOR_BG_HIDAN_SIMA,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_HIDAN_OBJECTS,
    sizeof(BgHidanSima),
    (ActorFunc)BgHidanSima_Init,
    (ActorFunc)BgHidanSima_Destroy,
    (ActorFunc)BgHidanSima_Update,
    (ActorFunc)BgHidanSima_Draw,
};

static ColliderJntSphElementInit D_8088F1A0[2] = {
    {
        {
            ELEMTYPE_UNK0,
            { 0x20000000, 0x01, 0x04 },
            { 0x00000000, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NONE,
            BUMP_NONE,
            OCELEM_NONE,
        },
        { 1, { { 0, 40, 100 }, 22 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0x20000000, 0x01, 0x04 },
            { 0x00000000, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NONE,
            BUMP_NONE,
            OCELEM_NONE,
        },
        { 1, { { 0, 40, 145 }, 30 }, 100 },
    },
};

static ColliderJntSphInit D_8088F1E8 = {
    {
        COLTYPE_NONE,
        AT_ON | AT_TYPE_ENEMY,
        AC_NONE,
        OC1_NONE,
        OC2_TYPE_2,
        COLSHAPE_JNTSPH,
    },
    2,
    D_8088F1A0,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sima/BgHidanSima_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sima/BgHidanSima_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sima/func_8088E518.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sima/func_8088E5D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sima/func_8088E6D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sima/func_8088E760.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sima/func_8088E7A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sima/func_8088E90C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sima/BgHidanSima_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sima/func_8088EB54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sima/BgHidanSima_Draw.s")
