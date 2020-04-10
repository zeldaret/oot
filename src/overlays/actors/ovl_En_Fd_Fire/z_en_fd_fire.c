#include "z_en_fd_fire.h"

#define FLAGS 0x00000015

void EnFdFire_Init(EnFdFire* this, GlobalContext* globalCtx);
void EnFdFire_Destroy(EnFdFire* this, GlobalContext* globalCtx);
void EnFdFire_Update(EnFdFire* this, GlobalContext* globalCtx);
void EnFdFire_Draw(EnFdFire* this, GlobalContext* globalCtx);

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
