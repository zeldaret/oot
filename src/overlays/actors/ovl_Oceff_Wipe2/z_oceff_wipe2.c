#include "z_oceff_wipe2.h"

#define ROOM 0x00
#define FLAGS 0x02000010

void OceffWipe2_Init(OceffWipe2* this, GlobalContext* globalCtx);
void OceffWipe2_Destroy(OceffWipe2* this, GlobalContext* globalCtx);
void OceffWipe2_Update(OceffWipe2* this, GlobalContext* globalCtx);
void OceffWipe2_Draw(OceffWipe2* this, GlobalContext* globalCtx);

/*
const ActorInit Oceff_Wipe2_InitVars = {
    ACTOR_OCEFF_WIPE2,
    ACTORTYPE_ITEMACTION,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(OceffWipe2),
    (ActorFunc)OceffWipe2_Init,
    (ActorFunc)OceffWipe2_Destroy,
    (ActorFunc)OceffWipe2_Update,
    (ActorFunc)OceffWipe2_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Oceff_Wipe2/OceffWipe2_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Oceff_Wipe2/OceffWipe2_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Oceff_Wipe2/OceffWipe2_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Oceff_Wipe2/OceffWipe2_Draw.s")
