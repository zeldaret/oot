/*
 * File: z_en_anubice.c
 * Overlay: ovl_En_Anubice
 * Description: Anubis Body
 */

#include "z_en_anubice.h"

#define FLAGS 0x00000015

#define THIS ((EnAnubice*)thisx)

void EnAnubice_Init(Actor* thisx, GlobalContext* globalCtx);
void EnAnubice_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnAnubice_Update(Actor* thisx, GlobalContext* globalCtx);
void EnAnubice_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06000348;
extern UNK_TYPE D_0600078C;
extern UNK_TYPE D_06000F74;
extern UNK_TYPE D_06003468;
extern UNK_TYPE D_06003990;

/*
const ActorInit En_Anubice_InitVars = {
    ACTOR_EN_ANUBICE,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_ANUBICE,
    sizeof(EnAnubice),
    (ActorFunc)EnAnubice_Init,
    (ActorFunc)EnAnubice_Destroy,
    (ActorFunc)EnAnubice_Update,
    (ActorFunc)EnAnubice_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice/func_809B1120.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice/func_809B11C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice/EnAnubice_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice/EnAnubice_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice/func_809B142C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice/func_809B1524.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice/func_809B15CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice/func_809B16AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice/func_809B17FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice/func_809B1884.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice/func_809B1984.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice/func_809B1A54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice/EnAnubice_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice/func_809B2104.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice/func_809B2150.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice/EnAnubice_Draw.s")
