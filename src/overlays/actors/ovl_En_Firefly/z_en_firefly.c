#include "z_en_firefly.h"

#define FLAGS 0x00005005

#define THIS ((EnFirefly*)thisx)

void EnFirefly_Init(Actor* thisx, GlobalContext* globalCtx);
void EnFirefly_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnFirefly_Update(Actor* thisx, GlobalContext* globalCtx);
void EnFirefly_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Firefly_InitVars = {
    ACTOR_EN_FIREFLY,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_FIREFLY,
    sizeof(EnFirefly),
    (ActorFunc)EnFirefly_Init,
    (ActorFunc)EnFirefly_Destroy,
    (ActorFunc)EnFirefly_Update,
    (ActorFunc)EnFirefly_Draw,
};

static ColliderJntSphElementInit  D_80A14F30[1] = {
    {
        { ELEMTYPE_UNK0, { 0xFFCFFFFF, 0x01, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, TOUCH_SFX_HARD | TOUCH_ON, BUMP_ON,
OCELEM_ON }, { 1, { { 0, 1000, 0 }, 15 }, 100 },
    },
};

static ColliderJntSphInit D_80A14F54 = {
    { COLTYPE_HIT3, AT_ENEMY | AT_ON, AC_PLAYER | AC_ON, OC_ALL | OC_ON, OT_TYPE1, COLSHAPE_JNTSPH },
    1, D_80A14F30,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13070.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13098.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/EnFirefly_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/EnFirefly_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A132F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A133A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13444.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13464.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A1349C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A1350C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13538.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A135A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13744.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13764.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A1379C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A138B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13A08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13C98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13D68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13DE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13FF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A14088.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A141F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A14294.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A142F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A143B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A1448C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A1450C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/EnFirefly_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A14960.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A149B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/EnFirefly_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A14E28.s")
