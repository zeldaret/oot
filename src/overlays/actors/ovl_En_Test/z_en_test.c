/*
 * File: z_en_test.c
 * Overlay: ovl_En_Test
 * Description: Stalfos
 */

#include "z_en_test.h"

#define FLAGS 0x00000015

#define THIS ((EnTest*)thisx)

void EnTest_Init(Actor* thisx, GlobalContext* globalCtx);
void EnTest_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnTest_Update(Actor* thisx, GlobalContext* globalCtx);
void EnTest_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_8085F938(EnTest* this, GlobalContext* globalCtx);
void func_8085FAB0(EnTest* this, GlobalContext* globalCtx);
void func_8085FE48(EnTest* this, GlobalContext* globalCtx);
void func_8085FF9C(EnTest* this, GlobalContext* globalCtx);
void func_80860318(EnTest* this, GlobalContext* globalCtx);
void func_808603CC(EnTest* this, GlobalContext* globalCtx);
void func_80863360(EnTest* this, GlobalContext* globalCtx);
void func_808600EC(EnTest* this, GlobalContext* globalCtx);
void func_808604FC(EnTest* this, GlobalContext* globalCtx);
void func_80860C24(EnTest* this, GlobalContext* globalCtx);
void func_80860F84(EnTest* this, GlobalContext* globalCtx);
void func_8086149C(EnTest* this, GlobalContext* globalCtx);
void func_808615F4(EnTest* this, GlobalContext* globalCtx);
void func_80861898(EnTest* this, GlobalContext* globalCtx);
void func_808619EC(EnTest* this, GlobalContext* globalCtx);
void func_80861C40(EnTest* this, GlobalContext* globalCtx);
void func_80861DC8(EnTest* this, GlobalContext* globalCtx);
void func_80861F80(EnTest* this, GlobalContext* globalCtx);
void func_8086209C(EnTest* this, GlobalContext* globalCtx);
void func_808621D4(EnTest* this, GlobalContext* globalCtx);
void func_80862418(EnTest* this, GlobalContext* globalCtx);
void func_80862650(EnTest* this, GlobalContext* globalCtx);
void func_808628C8(EnTest* this, GlobalContext* globalCtx);
void func_80862E6C(EnTest* this, GlobalContext* globalCtx);
void func_80863044(EnTest* this, GlobalContext* globalCtx);
void func_8086318C(EnTest* this, GlobalContext* globalCtx);
void func_80863294(EnTest* this, GlobalContext* globalCtx);

// animation indexes?
u8 D_80864510[] = {
    0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

const ActorInit En_Test_InitVars = {
    ACTOR_EN_TEST,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_SK2,
    sizeof(EnTest),
    (ActorFunc)EnTest_Init,
    (ActorFunc)EnTest_Destroy,
    (ActorFunc)EnTest_Update,
    (ActorFunc)EnTest_Draw,
};

static ColliderCylinderInit sBodyCylinderInit = {
    { COLTYPE_UNK5, 0x00, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 25, 65, 0, { 0, 0, 0 } },
};

static ColliderCylinderInit sShieldCylinderInit = {
    { COLTYPE_METAL_SHIELD, 0x00, 0x0D, 0x00, 0x00, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFC1FFFF, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
    { 20, 70, -50, { 0, 0, 0 } },
};

static ColliderQuadInit sQuadInit = {
    { COLTYPE_UNK10, 0x11, 0x00, 0x00, 0x00, COLSHAPE_QUAD },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x10 }, { 0x00000000, 0x00, 0x00 }, 0x81, 0x00, 0x00 },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

static DamageTable sDamageTable[] = {
    0x10, 0x02, 0xD1, 0x02, 0x10, 0x02, 0x02, 0x10, 0x01, 0x02, 0x04, 0x02, 0xF4, 0xE2, 0x02, 0x02,
    0x02, 0x60, 0xF3, 0xE0, 0x00, 0x00, 0x01, 0x04, 0x02, 0x02, 0x08, 0x04, 0x00, 0x00, 0x04, 0x00,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_S8(naviEnemyId, 27, ICHAIN_CONTINUE),      ICHAIN_F32(unk_4C, 500, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 15, ICHAIN_CONTINUE), ICHAIN_F32(scale.y, 0, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, 64036, ICHAIN_STOP),
};

Vec3f D_80864658 = { 300.0f, 0.0f, 0.0f };
Vec3f D_80864664 = { 3400.0f, 0.0f, 0.0f };
Vec3f D_80864670 = { 0.0f, 0.0f, 0.0f };
Vec3f D_8086467C = { 700.0f, 1000.0f, 0.0f };
Vec3f D_80864688 = { 3000.0f, -2000.0f, -1000.0f };
Vec3f D_80864694 = { 3000.0f, -2000.0f, 1000.0f };
Vec3f D_808646A0 = { -1300.0f, 1100.0f, 0.0f };

// part of the array above? unused?
Vec3f unused[] = {
    { -3000.0f, 1900.0f, 800.0f },  { -3000.0f, -1100.0f, 800.0f }, { 1900.0f, 1900.0f, 800.0f },
    { -3000.0f, -1100.0f, 800.0f }, { 1900.0f, -1100.0f, 800.0f },  { 1900.0f, 1900.0f, 800.0f },
};

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/EnTest_SetupAction.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/EnTest_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/EnTest_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_8085F938.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_8085FAB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_8085FDD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_8085FE48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_8085FF28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_8085FF9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80860068.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_808600EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80860318.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_808603CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80860438.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_808604FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80860BDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80860C24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80860EC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80860F84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80861418.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_8086149C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_808615A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_808615F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_8086181C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80861898.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_8086194C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_808619EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80861B94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80861C40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80861D50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80861DC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80861EC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80861F80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80862050.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_8086209C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80862154.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_808621D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80862398.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80862418.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80862578.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80862650.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_808627C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_808628C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80862DBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80862E6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80862FA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80863044.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_808630F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_8086318C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80863240.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80863294.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80863360.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_808633E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80863460.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_808634F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/EnTest_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80863AB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80863CC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/EnTest_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80864158.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_808641E8.s")
