#include "z_en_karebaba.h"

#define FLAGS 0x00000005

#define THIS ((EnKarebaba*)thisx)

void EnKarebaba_Init(Actor* thisx, GlobalContext* globalCtx);
void EnKarebaba_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnKarebaba_Update(Actor* thisx, GlobalContext* globalCtx);
void EnKarebaba_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Karebaba_InitVars = {
    ACTOR_EN_KAREBABA,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_DEKUBABA,
    sizeof(EnKarebaba),
    (ActorFunc)EnKarebaba_Init,
    (ActorFunc)EnKarebaba_Destroy,
    (ActorFunc)EnKarebaba_Update,
    (ActorFunc)EnKarebaba_Draw,
};

static ColliderCylinderInit D_80A969F0 = {
    { COLTYPE_HARD, AT_OFF, AC_PLAYER | AC_ON, OC_OFF, OT_TYPE1, COLSHAPE_CYLINDER },
    { ELEMTYPE_UNK0, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, TOUCH_OFF, BUMP_ON, OCELEM_OFF },
    { 7, 25, 0, { 0, 0, 0 } },
};

static ColliderCylinderInit D_80A96A1C = {
    { COLTYPE_HARD, AT_ENEMY | AT_ON, AC_OFF, OC_ALL | OC_ON, OT_TYPE1, COLSHAPE_CYLINDER },
    { ELEMTYPE_UNK0, { 0xFFCFFFFF, 0x00, 0x08 }, { 0x00000000, 0x00, 0x00 }, TOUCH_SFX_HARD | TOUCH_ON, BUMP_OFF,
OCELEM_ON }, { 4, 25, 0, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/EnKarebaba_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/EnKarebaba_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A954C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A954F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A95548.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A9559C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A95618.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A956B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A956D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A95748.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A957E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A95860.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A958EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A95940.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A959D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A95A38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A95B0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A95BFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A95D90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A96048.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A960B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A96184.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A961DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/EnKarebaba_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/func_80A9644C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/EnKarebaba_Draw.s")
