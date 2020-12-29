#include "z_bg_hidan_kowarerukabe.h"

#define FLAGS 0x00000000

#define THIS ((BgHidanKowarerukabe*)thisx)

void BgHidanKowarerukabe_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHidanKowarerukabe_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHidanKowarerukabe_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHidanKowarerukabe_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_05000530;

/*
const ActorInit Bg_Hidan_Kowarerukabe_InitVars = {
    ACTOR_BG_HIDAN_KOWARERUKABE,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_HIDAN_OBJECTS,
    sizeof(BgHidanKowarerukabe),
    (ActorFunc)BgHidanKowarerukabe_Init,
    (ActorFunc)BgHidanKowarerukabe_Destroy,
    (ActorFunc)BgHidanKowarerukabe_Update,
    (ActorFunc)BgHidanKowarerukabe_Draw,
};

static ColliderJntSphElementInit D_8088AE1C[1] = {
    {
        {
            ELEMTYPE_UNK0,
            { 0x00000000, 0x00, 0x00 },
            { 0x00000008, 0x00, 0x00 },
            TOUCH_OFF,
            BUMP_ON,
            OCELEM_OFF,
        },
        { 0, { { 0, 0, 0 }, 100 }, 100 },
    },
};

static ColliderJntSphInit D_8088AE40 = {
    {
        COLTYPE_NONE,
        AT_OFF,
        AC_ON | AC_PLAYER,
        OC_OFF,
        OT_NONE,
        COLSHAPE_JNTSPH,
    },
    1,
    D_8088AE1C,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kowarerukabe/func_8088A020.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kowarerukabe/func_8088A0B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kowarerukabe/func_8088A150.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kowarerukabe/BgHidanKowarerukabe_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kowarerukabe/BgHidanKowarerukabe_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kowarerukabe/func_8088A290.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kowarerukabe/func_8088A3B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kowarerukabe/func_8088A67C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kowarerukabe/func_8088A914.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kowarerukabe/func_8088ABA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kowarerukabe/BgHidanKowarerukabe_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kowarerukabe/BgHidanKowarerukabe_Draw.s")
