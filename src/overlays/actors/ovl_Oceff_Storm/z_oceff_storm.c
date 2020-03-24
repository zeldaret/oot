#include "z_oceff_storm.h"

#define ROOM 0x00
#define FLAGS 0x02000030

void OceffStorm_Init(OceffStorm* this, GlobalContext* globalCtx);
void OceffStorm_Destroy(OceffStorm* this, GlobalContext* globalCtx);
void OceffStorm_Update(OceffStorm* this, GlobalContext* globalCtx);
void OceffStorm_Draw(OceffStorm* this, GlobalContext* globalCtx);

/*
const ActorInit Oceff_Storm_InitVars = {
    ACTOR_OCEFF_STORM,
    ACTORTYPE_ITEMACTION,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(OceffStorm),
    (ActorFunc)OceffStorm_Init,
    (ActorFunc)OceffStorm_Destroy,
    (ActorFunc)OceffStorm_Update,
    (ActorFunc)OceffStorm_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Oceff_Storm/func_80BA70E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Oceff_Storm/OceffStorm_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Oceff_Storm/OceffStorm_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Oceff_Storm/func_80BA7200.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Oceff_Storm/func_80BA73C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Oceff_Storm/OceffStorm_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Oceff_Storm/func_80BA7450.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Oceff_Storm/OceffStorm_Draw.s")
