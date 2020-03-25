#include "z_oceff_wipe4.h"

#define ROOM 0x00
#define FLAGS 0x02000010

void OceffWipe4_Init(OceffWipe4* this, GlobalContext* globalCtx);
void OceffWipe4_Destroy(OceffWipe4* this, GlobalContext* globalCtx);
void OceffWipe4_Update(OceffWipe4* this, GlobalContext* globalCtx);
void OceffWipe4_Draw(OceffWipe4* this, GlobalContext* globalCtx);

/*
const ActorInit Oceff_Wipe4_InitVars = {
    ACTOR_OCEFF_WIPE4,
    ACTORTYPE_ITEMACTION,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(OceffWipe4),
    (ActorFunc)OceffWipe4_Init,
    (ActorFunc)OceffWipe4_Destroy,
    (ActorFunc)OceffWipe4_Update,
    (ActorFunc)OceffWipe4_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Oceff_Wipe4/OceffWipe4_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Oceff_Wipe4/OceffWipe4_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Oceff_Wipe4/OceffWipe4_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Oceff_Wipe4/OceffWipe4_Draw.s")
