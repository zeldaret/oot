#include "z_mir_ray.h"

#define ROOM  0x00
#define FLAGS 0x00000030

void MirRay_Init(MirRay* this, GlobalContext* globalCtx);
void MirRay_Destroy(MirRay* this, GlobalContext* globalCtx);
void MirRay_Update(MirRay* this, GlobalContext* globalCtx);
void MirRay_Draw(MirRay* this, GlobalContext* globalCtx);

/*
const ActorInit Mir_Ray_InitVars =
{
    ACTOR_MIR_RAY,
    ACTORTYPE_ITEMACTION,
    ROOM,
    FLAGS,
    OBJECT_MIR_RAY,
    sizeof(MirRay),
    (ActorFunc)MirRay_Init,
    (ActorFunc)MirRay_Destroy,
    (ActorFunc)MirRay_Update,
    (ActorFunc)MirRay_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Mir_Ray/func_80B8D050.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Mir_Ray/func_80B8D110.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Mir_Ray/MirRay_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Mir_Ray/MirRay_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Mir_Ray/MirRay_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Mir_Ray/func_80B8D6F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Mir_Ray/func_80B8D8A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Mir_Ray/func_80B8DA78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Mir_Ray/func_80B8DB7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Mir_Ray/MirRay_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Mir_Ray/func_80B8E404.s")
