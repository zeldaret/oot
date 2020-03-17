#include "z_en_mag.h"

#define ROOM  0x00
#define FLAGS 0x00000030

void EnMag_Init(EnMag* this, GlobalContext* globalCtx);
void EnMag_Destroy(EnMag* this, GlobalContext* globalCtx);
void EnMag_Update(EnMag* this, GlobalContext* globalCtx);
void EnMag_Draw(EnMag* this, GlobalContext* globalCtx);

/*
const ActorInit En_Mag_InitVars =
{
    ACTOR_EN_MAG,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_MAG,
    sizeof(EnMag),
    (ActorFunc)EnMag_Init,
    (ActorFunc)EnMag_Destroy,
    (ActorFunc)EnMag_Update,
    (ActorFunc)EnMag_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mag/EnMag_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mag/EnMag_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mag/EnMag_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mag/func_80AA447C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mag/func_80AA46A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mag/func_80AA4AD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mag/func_80AA4EB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mag/func_80AA507C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mag/EnMag_Draw.s")
