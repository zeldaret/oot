#include "z_en_fd_fire.h"

#define FLAGS 0x00000015

#define THIS ((EnFdFire*)thisx)

void EnFdFire_Init(Actor* thisx, GlobalContext* globalCtx);
void EnFdFire_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnFdFire_Update(Actor* thisx, GlobalContext* globalCtx);
void EnFdFire_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Fd_Fire_InitVars = {
    ACTOR_EN_FD_FIRE,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_GAMEPLAY_DANGEON_KEEP,
    sizeof(EnFdFire),
    (ActorFunc)EnFdFire_Init,
    (ActorFunc)EnFdFire_Destroy,
    (ActorFunc)EnFdFire_Update,
    (ActorFunc)EnFdFire_Draw,
};

static ColliderCylinderInit D_80A0F030 = {
    { COLTYPE_NONE, AT_ENEMY | AT_ON, AC_PLAYER | AC_ON, OC_ALL | OC_ON, OT_TYPE1, COLSHAPE_CYLINDER },
    { ELEMTYPE_UNK0, { 0xFFCFFFFF, 0x01, 0x08 }, { 0x0D840008, 0x00, 0x00 }, TOUCH_SFX_NORMAL | TOUCH_ON, BUMP_ON,
OCELEM_ON }, { 12, 46, 0, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd_Fire/func_80A0E4B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd_Fire/func_80A0E578.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd_Fire/EnFdFire_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd_Fire/EnFdFire_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd_Fire/func_80A0E70C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd_Fire/func_80A0E848.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd_Fire/func_80A0E884.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd_Fire/func_80A0EA34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd_Fire/EnFdFire_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fd_Fire/EnFdFire_Draw.s")
