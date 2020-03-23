#include "z_en_encount2.h"

#define ROOM 0x00
#define FLAGS 0x00000030

void EnEncount2_Init(EnEncount2* this, GlobalContext* globalCtx);
void EnEncount2_Update(EnEncount2* this, GlobalContext* globalCtx);
void EnEncount2_Draw(EnEncount2* this, GlobalContext* globalCtx);

/*
const ActorInit En_Encount2_InitVars =
{
    ACTOR_EN_ENCOUNT2,
    ACTORTYPE_ENEMY,
    ROOM,
    FLAGS,
    OBJECT_EFC_STAR_FIELD,
    sizeof(EnEncount2),
    (ActorFunc)EnEncount2_Init,
    NULL,
    (ActorFunc)EnEncount2_Update,
    (ActorFunc)EnEncount2_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Encount2/EnEncount2_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Encount2/func_80A07A4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Encount2/func_80A07CA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Encount2/EnEncount2_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Encount2/EnEncount2_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Encount2/func_80A08694.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Encount2/func_80A08748.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Encount2/func_80A0891C.s")
