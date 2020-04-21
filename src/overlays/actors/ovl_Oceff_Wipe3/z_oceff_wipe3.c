/*
 * File: z_oceff_wipe3.c
 * Overlay: ovl_Oceff_Wipe3
 * Description: Saria's Song Effect
 */

#include "z_oceff_wipe3.h"

#define FLAGS 0x02000010

void OceffWipe3_Init(OceffWipe3* this, GlobalContext* globalCtx);
void OceffWipe3_Destroy(OceffWipe3* this, GlobalContext* globalCtx);
void OceffWipe3_Update(OceffWipe3* this, GlobalContext* globalCtx);
void OceffWipe3_Draw(OceffWipe3* this, GlobalContext* globalCtx);

/*
const ActorInit Oceff_Wipe3_InitVars = {
    ACTOR_OCEFF_WIPE3,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(OceffWipe3),
    (ActorFunc)OceffWipe3_Init,
    (ActorFunc)OceffWipe3_Destroy,
    (ActorFunc)OceffWipe3_Update,
    (ActorFunc)OceffWipe3_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Oceff_Wipe3/OceffWipe3_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Oceff_Wipe3/OceffWipe3_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Oceff_Wipe3/OceffWipe3_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Oceff_Wipe3/OceffWipe3_Draw.s")
