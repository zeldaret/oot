#include "z_en_holl.h"

#define FLAGS 0x00000010

#define THIS ((EnHoll*)thisx)

void EnHoll_Init(Actor* thisx, GlobalContext* globalCtx);
void EnHoll_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnHoll_Update(Actor* thisx, GlobalContext* globalCtx);
void EnHoll_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Holl_InitVars = {
    ACTOR_EN_HOLL,
    ACTORTYPE_DOOR,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnHoll),
    (ActorFunc)EnHoll_Init,
    (ActorFunc)EnHoll_Destroy,
    (ActorFunc)EnHoll_Update,
    (ActorFunc)EnHoll_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Holl/func_80A58C10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Holl/func_80A58C18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Holl/func_80A58C48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Holl/EnHoll_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Holl/EnHoll_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Holl/func_80A58D18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Holl/func_80A58DD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Holl/func_80A59014.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Holl/func_80A591C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Holl/func_80A593A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Holl/func_80A59520.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Holl/func_80A59618.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Holl/func_80A59828.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Holl/EnHoll_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Holl/EnHoll_Draw.s")
