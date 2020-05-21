/*
 * File: z_en_brob.c
 * Overlay: ovl_En_Brob
 * Description: Flobbery Muscle Block (Jabu-Jabu's Belly)
 */

#include "z_en_brob.h"

#define FLAGS 0x00000005

#define THIS ((EnBrob*)thisx)

void EnBrob_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBrob_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBrob_Update(Actor* thisx, GlobalContext* globalCtx);
void EnBrob_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Brob_InitVars = {
    ACTOR_EN_BROB,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_BROB,
    sizeof(EnBrob),
    (ActorFunc)EnBrob_Init,
    (ActorFunc)EnBrob_Destroy,
    (ActorFunc)EnBrob_Update,
    (ActorFunc)EnBrob_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Brob/EnBrob_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Brob/EnBrob_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Brob/func_809CADDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Brob/func_809CAE44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Brob/func_809CAEA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Brob/func_809CAEF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Brob/func_809CAF88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Brob/func_809CB008.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Brob/func_809CB054.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Brob/func_809CB114.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Brob/func_809CB218.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Brob/func_809CB2B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Brob/func_809CB354.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Brob/func_809CB458.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Brob/EnBrob_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Brob/func_809CB90C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Brob/EnBrob_Draw.s")
