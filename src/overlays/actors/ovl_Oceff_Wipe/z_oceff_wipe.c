/*
 * File: z_oceff_wipe.c
 * Overlay: ovl_Oceff_Wipe
 * Description: Zelda's Lullaby Effect
 */

#include "z_oceff_wipe.h"

#define FLAGS 0x02000010

void OceffWipe_Init(OceffWipe* this, GlobalContext* globalCtx);
void OceffWipe_Destroy(OceffWipe* this, GlobalContext* globalCtx);
void OceffWipe_Update(OceffWipe* this, GlobalContext* globalCtx);
void OceffWipe_Draw(OceffWipe* this, GlobalContext* globalCtx);

/*
const ActorInit Oceff_Wipe_InitVars = {
    ACTOR_OCEFF_WIPE,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(OceffWipe),
    (ActorFunc)OceffWipe_Init,
    (ActorFunc)OceffWipe_Destroy,
    (ActorFunc)OceffWipe_Update,
    (ActorFunc)OceffWipe_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Oceff_Wipe/OceffWipe_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Oceff_Wipe/OceffWipe_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Oceff_Wipe/OceffWipe_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Oceff_Wipe/OceffWipe_Draw.s")
