#include "z_en_bom.h"

#define FLAGS 0x00000030

#define THIS ((EnBom*)thisx)

void EnBom_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBom_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBom_Update(Actor* thisx, GlobalContext* globalCtx);
void EnBom_Draw(Actor* thisx, GlobalContext* globalCtx);

const ActorInit En_Bom_InitVars = {
    ACTOR_EN_BOM,
    ACTORTYPE_EXPLOSIVES,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnBom),
    (ActorFunc)EnBom_Init,
    (ActorFunc)EnBom_Destroy,
    (ActorFunc)EnBom_Update,
    (ActorFunc)EnBom_Draw,
};

// sCylinderInit
ColliderCylinderInit D_809C3430 = {
    { COLTYPE_UNK0, 0x00, 0x29, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x02, { 0x00000000, 0x00, 0x00 }, { 0x0003F828, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 6, 11, 14, { 0, 0, 0 } },
};

// sJntSphItemsInit[1]
ColliderJntSphItemInit D_809C345C[1] = {
    {
        { 0x00, { 0x00000008, 0x00, 0x08 }, { 0x00000000, 0x00, 0x00 }, 0x19, 0x00, 0x00 },
        { 0, { { 0, 0, 0 }, 0 }, 100 },
    },
};

// sJntSphInit
ColliderJntSphInit D_809C3480 = {
    { COLTYPE_UNK0, 0x39, 0x00, 0x00, 0x00, COLSHAPE_JNTSPH },
    1,
    D_809C345C,
};

// sInitChain
InitChainEntry D_809C3490[] = {
    ICHAIN_VEC3F(scale, 0, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 2000, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, 61536, ICHAIN_STOP),
};

s32 D_809C349C[] = { 0x00000000, 0x00000000, 0x00000000 };
s32 D_809C34A8[] = { 0x00000000, 0x3DCCCCCD, 0x00000000 };
s32 D_809C34B4[] = { 0x00000000, 0x00000000, 0x00000000 };
s32 D_809C34C0[] = { 0x00000000, 0x3F19999A, 0x00000000 };
s32 D_809C34CC[] = { 0xFFFFFFFF };

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom/func_809C26D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom/EnBom_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom/EnBom_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom/func_809C282C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom/func_809C29F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom/func_809C2A38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom/EnBom_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom/EnBom_Draw.s")
