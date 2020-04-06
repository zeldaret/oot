#include "z_en_fhg.h"

#define ROOM 0x00
#define FLAGS 0x00000010

void EnfHG_Init(EnfHG* this, GlobalContext* globalCtx);
void EnfHG_Destroy(EnfHG* this, GlobalContext* globalCtx);
void EnfHG_Update(EnfHG* this, GlobalContext* globalCtx);
void EnfHG_Draw(EnfHG* this, GlobalContext* globalCtx);

/*
const ActorInit En_fHG_InitVars = {
    ACTOR_EN_FHG,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_FHG,
    sizeof(EnfHG),
    (ActorFunc)EnfHG_Init,
    (ActorFunc)EnfHG_Destroy,
    (ActorFunc)EnfHG_Update,
    (ActorFunc)EnfHG_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_fHG/EnfHG_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_fHG/EnfHG_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_fHG/func_80B62B04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_fHG/func_80B62B6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_fHG/func_80B63D84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_fHG/func_80B6404C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_fHG/func_80B6424C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_fHG/func_80B6476C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_fHG/func_80B64AA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_fHG/func_80B64CF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_fHG/EnfHG_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_fHG/func_80B64E94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_fHG/EnfHG_Draw.s")
