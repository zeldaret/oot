#include "z_en_ds.h"

#define ROOM 0x00
#define FLAGS 0x00000009

void EnDs_Init(EnDs* this, GlobalContext* globalCtx);
void EnDs_Destroy(EnDs* this, GlobalContext* globalCtx);
void EnDs_Update(EnDs* this, GlobalContext* globalCtx);
void EnDs_Draw(EnDs* this, GlobalContext* globalCtx);

/*
const ActorInit En_Ds_InitVars = {
    ACTOR_EN_DS,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_DS,
    sizeof(EnDs),
    (ActorFunc)EnDs_Init,
    (ActorFunc)EnDs_Destroy,
    (ActorFunc)EnDs_Update,
    (ActorFunc)EnDs_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ds/EnDs_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ds/EnDs_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ds/func_809FD10C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ds/func_809FD160.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ds/func_809FD1CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ds/func_809FD224.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ds/func_809FD284.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ds/func_809FD2EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ds/func_809FD368.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ds/func_809FD40C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ds/func_809FD460.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ds/func_809FD500.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ds/func_809FD5CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ds/func_809FD61C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ds/func_809FD67C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ds/func_809FD7B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ds/EnDs_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ds/func_809FDA38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ds/func_809FDA7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ds/EnDs_Draw.s")
