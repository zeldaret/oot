#include "z_en_goma.h"

#define FLAGS 0x00000035

#define THIS ((EnGoma*)thisx)

void EnGoma_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGoma_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGoma_Update(Actor* thisx, GlobalContext* globalCtx);
void EnGoma_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_05000530;
extern UNK_TYPE D_0600017C;
extern UNK_TYPE D_06000334;
extern UNK_TYPE D_06000544;
extern UNK_TYPE D_06000838;
extern UNK_TYPE D_06000B78;
extern UNK_TYPE D_06000E4C;
extern UNK_TYPE D_06001548;
extern UNK_TYPE D_06002A70;
extern UNK_TYPE D_06003B40;
extern UNK_TYPE D_06003D78;

/*
const ActorInit En_Goma_InitVars = {
    ACTOR_BOSS_GOMA,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_GOL,
    sizeof(EnGoma),
    (ActorFunc)EnGoma_Init,
    (ActorFunc)EnGoma_Destroy,
    (ActorFunc)EnGoma_Update,
    (ActorFunc)EnGoma_Draw,
};

static ColliderCylinderInit D_80A4B7A0 = {
    {
        COLTYPE_HIT3,
        AT_ON | AT_TYPE_ENEMY,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x00, 0x08 },
        { 0xFFDFFFFF, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NORMAL,
        BUMP_NONE,
        OCELEM_ON,
    },
    { 15, 30, 10, { 0, 0, 0 } },
};

static ColliderCylinderInit D_80A4B7CC = {
    {
        COLTYPE_HIT3,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x00, 0x08 },
        { 0xFFDFFFFF, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_NONE,
    },
    { 15, 30, 10, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/EnGoma_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/EnGoma_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A49294.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A49338.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A493D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A49668.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A498A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A49974.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A499BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A49AA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A49B30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A49BF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A49C94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A49D0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A49E80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A49F10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A49F94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A4A010.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A4A0A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A4A120.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A4A18C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A4A234.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A4A2EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A4A368.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A4A470.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A4A50C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A4A608.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A4A6AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A4A8D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A4A964.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/EnGoma_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A4ACC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A4AE60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/EnGoma_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A4B3AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A4B3F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goma/func_80A4B554.s")
