#include "z_en_gs.h"

#define ROOM 0x00
#define FLAGS 0x02000009

void EnGs_Init(EnGs* this, GlobalContext* globalCtx);
void EnGs_Destroy(EnGs* this, GlobalContext* globalCtx);
void EnGs_Update(EnGs* this, GlobalContext* globalCtx);
void EnGs_Draw(EnGs* this, GlobalContext* globalCtx);

/*
const ActorInit En_Gs_InitVars =
{
    ACTOR_EN_GS,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_GS,
    sizeof(EnGs),
    (ActorFunc)EnGs_Init,
    (ActorFunc)EnGs_Destroy,
    (ActorFunc)EnGs_Update,
    (ActorFunc)EnGs_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gs/EnGs_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gs/EnGs_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gs/func_80A4E3EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gs/func_80A4E470.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gs/func_80A4E648.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gs/func_80A4E754.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gs/func_80A4E910.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gs/func_80A4EA08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gs/func_80A4EB3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gs/func_80A4ED34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gs/func_80A4F13C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gs/func_80A4F700.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gs/func_80A4F734.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gs/func_80A4F77C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gs/EnGs_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gs/EnGs_Draw.s")
