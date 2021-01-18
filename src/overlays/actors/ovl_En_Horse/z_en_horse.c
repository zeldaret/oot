#include "z_en_horse.h"

#define FLAGS 0x00000010

#define THIS ((EnHorse*)thisx)

void EnHorse_Init(Actor* thisx, GlobalContext* globalCtx);
void EnHorse_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnHorse_Update(Actor* thisx, GlobalContext* globalCtx);
void EnHorse_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_02000230;
extern UNK_TYPE D_02002AC0;
extern UNK_TYPE D_06006530;

/*
const ActorInit En_Horse_InitVars = {
    ACTOR_EN_HORSE,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_HORSE,
    sizeof(EnHorse),
    (ActorFunc)EnHorse_Init,
    (ActorFunc)EnHorse_Destroy,
    (ActorFunc)EnHorse_Update,
    (ActorFunc)EnHorse_Draw,
};

static ColliderCylinderInit D_80A65EAC = {
    {
        COLTYPE_NONE,
        AT_TYPE_PLAYER,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1 | OC2_UNK1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000400, 0x00, 0x04 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NONE,
        BUMP_NONE,
        OCELEM_ON,
    },
    { 20, 70, 0, { 0, 0, 0 } },
};

static ColliderCylinderInit D_80A65ED8 = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1 | OC2_UNK1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x00, 0x00 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_NONE,
        OCELEM_ON,
    },
    { 20, 70, 0, { 0, 0, 0 } },
};

static ColliderJntSphElementInit D_80A65F04[1] = {
    {
        {
            ELEMTYPE_UNK0,
            { 0x00000000, 0x00, 0x00 },
            { 0x0001F824, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_ON | BUMP_NO_AT_INFO | BUMP_NO_DAMAGE | BUMP_NO_SWORD_SFX | BUMP_NO_HITMARK,
            OCELEM_ON,
        },
        { 13, { { 0, 0, 0 }, 20 }, 100 },
    },
};

static ColliderJntSphInit D_80A65F28 = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1 | OC2_UNK1,
        COLSHAPE_JNTSPH,
    },
    1,
    D_80A65F04,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5B2F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5B450.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5B590.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5B5E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5B61C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5B9C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5BA84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5BACC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5BB14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5BB90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5BBBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5BC68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5BD94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5BFD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5BFEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5BFF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5C0B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5C0C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/EnHorse_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/EnHorse_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5C888.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5C8FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5C97C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5CAEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5CF28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5CF64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5D0A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5D1A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5D1C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5D2C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5D3C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5D468.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5D628.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5D678.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5D69C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5D748.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5D79C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5DA68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5DB0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5DB58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5DC8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5DCB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5DD58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5DDB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5DE38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5E00C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5E12C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5E2A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5E39C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5E588.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5E5AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5E650.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5E9F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5EA1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5EB4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5EB54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5ED18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5ED3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5EE78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5EE80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5F044.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5F08C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5F1B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5F380.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5F3A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5F3DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5F414.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5F5F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5F760.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5F890.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5FCAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5FD30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A5FDD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A600E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A60294.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A60300.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A6044C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A60470.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A605A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A605E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A60838.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A60954.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A60AFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A60BDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A60D28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A60EB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A61058.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A61078.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A610C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A6121C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A6140C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A61440.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A61778.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A61A04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A61A28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A62278.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A624AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A6255C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A626B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A627A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A627E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A62868.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A629A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A62ACC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A6304C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A63148.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A631D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A63210.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A63364.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A634A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A63FA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A64150.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A6437C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A64480.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A64578.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A6467C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/EnHorse_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A64ED4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A64F14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A65014.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A6506C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A65108.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/func_80A65C00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse/EnHorse_Draw.s")
