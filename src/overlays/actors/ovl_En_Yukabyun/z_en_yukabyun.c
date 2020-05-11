/*
 * File: z_en_yukabyun.c
 * Overlay: ovl_En_Yukabyun
 * Description: Flying floor tile
 */

#include "z_en_yukabyun.h"

#define FLAGS 0x00000010

#define THIS ((EnYukabyun*)thisx)

void EnYukabyun_Init(Actor* thisx, GlobalContext* globalCtx);
void EnYukabyun_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnYukabyun_Update(Actor* thisx, GlobalContext* globalCtx);
void EnYukabyun_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Yukabyun_InitVars = {
    ACTOR_EN_YUKABYUN,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_YUKABYUN,
    sizeof(EnYukabyun),
    (ActorFunc)EnYukabyun_Init,
    (ActorFunc)EnYukabyun_Destroy,
    (ActorFunc)EnYukabyun_Update,
    (ActorFunc)EnYukabyun_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Yukabyun/EnYukabyun_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Yukabyun/EnYukabyun_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Yukabyun/func_80B43A94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Yukabyun/func_80B43AD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Yukabyun/func_80B43B6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Yukabyun/func_80B43BCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Yukabyun/EnYukabyun_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Yukabyun/EnYukabyun_Draw.s")
