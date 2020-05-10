#include "z_en_du.h"

#define FLAGS 0x02000009

#define THIS ((EnDu*)thisx)

void EnDu_Init(Actor* thisx, GlobalContext* globalCtx);
void EnDu_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnDu_Update(Actor* thisx, GlobalContext* globalCtx);
void EnDu_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Du_InitVars = {
    ACTOR_EN_DU,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_DU,
    sizeof(EnDu),
    (ActorFunc)EnDu_Init,
    (ActorFunc)EnDu_Destroy,
    (ActorFunc)EnDu_Update,
    (ActorFunc)EnDu_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Du/func_809FDC30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Du/func_809FDC38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Du/func_809FDCDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Du/func_809FDDB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Du/func_809FDE24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Du/func_809FDE9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Du/func_809FDFC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Du/func_809FE000.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Du/func_809FE040.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Du/func_809FE104.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Du/EnDu_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Du/EnDu_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Du/func_809FE3B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Du/func_809FE3C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Du/func_809FE4A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Du/func_809FE638.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Du/func_809FE6CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Du/func_809FE740.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Du/func_809FE798.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Du/func_809FE890.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Du/func_809FEB08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Du/func_809FEC14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Du/func_809FEC70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Du/func_809FECE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Du/EnDu_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Du/func_809FEEA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Du/func_809FF018.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Du/EnDu_Draw.s")
