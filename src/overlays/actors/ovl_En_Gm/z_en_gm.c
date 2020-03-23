#include "z_en_gm.h"

#define ROOM 0x00
#define FLAGS 0x00000019

void EnGm_Init(EnGm* this, GlobalContext* globalCtx);
void EnGm_Destroy(EnGm* this, GlobalContext* globalCtx);
void EnGm_Update(EnGm* this, GlobalContext* globalCtx);

/*
const ActorInit En_Gm_InitVars =
{
    ACTOR_EN_GM,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_OF1D_MAP,
    sizeof(EnGm),
    (ActorFunc)EnGm_Init,
    (ActorFunc)EnGm_Destroy,
    (ActorFunc)EnGm_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gm/EnGm_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gm/EnGm_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gm/func_80A3D7C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gm/func_80A3D838.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gm/func_80A3D9D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gm/func_80A3DA50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gm/func_80A3DB04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gm/func_80A3DBF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gm/func_80A3DC44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gm/func_80A3DD7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gm/func_80A3DE10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gm/func_80A3DF00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gm/func_80A3DF60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gm/func_80A3DFBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gm/EnGm_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gm/func_80A3E090.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gm/func_80A3E1EC.s")
