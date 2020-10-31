/*
 * File: z_bg_haka_sgami.c
 * Overlay: ovl_Bg_Haka_Sgami
 * Description: Shadow Temple Spinning Scythe Trap
 */

#include "z_bg_haka_sgami.h"

#define FLAGS 0x00000011

#define THIS ((BgHakaSgami*)thisx)

void BgHakaSgami_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHakaSgami_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHakaSgami_Update(Actor* thisx, GlobalContext* globalCtx);

void func_8087E7E4(BgHakaSgami* this, GlobalContext* globalCtx);
void func_8087E858(BgHakaSgami* this, GlobalContext* globalCtx);
void func_8087EDC0(BgHakaSgami* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Haka_Sgami_InitVars = {
    ACTOR_BG_HAKA_SGAMI,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(BgHakaSgami),
    (ActorFunc)BgHakaSgami_Init,
    (ActorFunc)BgHakaSgami_Destroy,
    (ActorFunc)BgHakaSgami_Update,
    NULL,
};

static ColliderTrisElementInit  D_8087EE60[4] = {
    {
        { ELEMTYPE_UNK2, { 0x20000000, 0x00, 0x04 }, { 0x00000000, 0x00, 0x00 }, TOUCH_SFX_NORMAL | TOUCH_ON, BUMP_OFF,
OCELEM_OFF }, { { { 365.0f, 45.0f, 27.0f }, { 130.0f, 45.0f, 150.0f }, { 290.0f, 45.0f, 145.0f } } },
    },
    {
        { ELEMTYPE_UNK2, { 0x20000000, 0x00, 0x04 }, { 0x00000000, 0x00, 0x00 }, TOUCH_SFX_NORMAL | TOUCH_ON, BUMP_OFF,
OCELEM_OFF }, { { { 250.0f, 45.0f, 90.0f }, { 50.0f, 45.0f, 80.0f }, { 160.0f, 45.0f, 160.0f } } },
    },
    {
        { ELEMTYPE_UNK2, { 0x20000000, 0x00, 0x04 }, { 0x00000000, 0x00, 0x00 }, TOUCH_SFX_NORMAL | TOUCH_ON, BUMP_OFF,
OCELEM_OFF }, { { { -305.0f, 33.0f, -7.0f }, { -220.0f, 33.0f, 40.0f }, { -130.0f, 33.0f, -5.0f } } },
    },
    {
        { ELEMTYPE_UNK2, { 0x20000000, 0x00, 0x04 }, { 0x00000000, 0x00, 0x00 }, TOUCH_SFX_NORMAL | TOUCH_ON, BUMP_OFF,
OCELEM_OFF }, { { { -190.0f, 33.0f, 40.0f }, { -30.0f, 33.0f, 15.0f }, { -70.0f, 33.0f, -30.0f } } },
    },
};

static ColliderTrisInit D_8087EF50 = {
    { COLTYPE_NONE, AT_ENEMY | AT_ON, AC_OFF, OC_OFF, OT_TYPE2, COLSHAPE_TRIS },
    4, D_8087EE60,
};

static ColliderCylinderInit D_8087EF60 = {
    { COLTYPE_NONE, AT_OFF, AC_OFF, OC_ALL | OC_ON, OT_TYPE2, COLSHAPE_CYLINDER },
    { ELEMTYPE_UNK0, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, TOUCH_OFF, BUMP_OFF, OCELEM_ON },
    { 80, 130, 0, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Sgami/BgHakaSgami_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Sgami/BgHakaSgami_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Sgami/func_8087E7E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Sgami/func_8087E858.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Sgami/BgHakaSgami_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Sgami/func_8087EDC0.s")
